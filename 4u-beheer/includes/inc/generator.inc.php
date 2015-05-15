<?php

/**
 * This file is included multiple times by generator.php (once for each selected table).
 *
 * If editing this script, make backup copies and test often.
 * Beware of unindented HEREDOC statements and lengthy "if" loops.
 * See also in generator.php the switch($_SERVER['REQUEST_METHOD'])
 * NOTE: DO NOT ADD NEW VARIABLES BELOW USING THE NAMES $i -OR- $j
 *
 * COMMON FORM SETTINGS INCLUDING NAVIGATION WERE MOVED TO ./output/inc/dbconn.php
 *
 */

$buffer = '';

switch($cfg_target_prefix){

	Case 'db.':

		$cfg_target_prefix = $opts['db'].'.';

		break;

	default:

		break;

};

$contentFile = strtolower($cfg_target_prefix.$tb.'.php');

$omit_file = 0; // Do not change this!

if(!in_array($tb, $cfg_skip_table_array)) {

	$file_write_array[] = $contentFile;

	$processed_array[] = $tb;

}else{

	$omit_file = 1; // Track which files were (potentially) written to disk.

}

# BEWARE OF UN-INDENTED HEREDOC STATEMENTS APPEARING BELOW ################################################

$tb_desc = mysql_query("DESCRIBE $tb");

$fds = mysql_list_fields($opts['db'], $tb, $opts['dbh']);

for($j=0; ($fd = @mysql_field_name($fds, $j)) != false; $j++) {

	$ff = mysql_field_flags($fds, $j);

	strlen($ff) <= 0 && $ff = '---';

	if($j == $cfg_pri_key_col_no) {

		$hack_key = $fd;

		$checked = stristr($ff, 'primary_key') ? 'checked' : 'invalid: '.$fd ;

		($checked != 'checked') ? $buffer .= $pri_key_warning."$lf"."$lf" : '' ;

	}

	if($j == $cfg_pri_key_col_no) { $hack_key_type = mysql_field_type($fds, $j); }

	if($j == $cfg_sort_field) { $cfg_sort_field = $fd; }

}


echo_buffer("<?php

// Suggested filename: $contentFile
// $cfg_date_created
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// {$opts['db']}.$tb

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

\$opts = array();

\$opts['tb'] = '$tb';

\$opts['key'] = '$hack_key'; // Primary key $checked

\$opts['key_type'] = '$hack_key_type';

\$opts['sort_field'] = array('$cfg_sort_field');

\$opts['inc'] = $cfg_num_rows;

\$opts['options'] = '$cfg_perm_options';

require_once('./inc/dbconn.php'); // Database logon + form navigation config + variables used by the page header

require_once('./inc/$cfg_header_include_file');

\$opts['cgi']['append']['PME_sys_fl'] = 1; // Force search feature ON (version 5.6)

$cfg_language
");

if($cfg_help_ACP == 2){

	echo_buffer("\$help_link = '$cfg_help_ACP_link';"."$lf");

}

// Author preference: check in advance for a field named
// `deleted` ... then set a 'filter' and break the for() loop.
// Get the table description before defining the field options for phpMyEdit

$tb_desc = mysql_query("DESCRIBE $tb");

$fds = mysql_list_fields($opts['db'], $tb, $opts['dbh']);

$num_fds = mysql_num_fields($fds);

for($k = 0; $k < $num_fds; $k++) {

	$fd = mysql_field_name($fds, $k);

	$fd_type = mysql_field_type($fds, $k);

	if(!$row = @mysql_fetch_array($tb_desc)){
		die(mysql_error());
	}

	if($cfg_tweak_file_usage == 1 && $fd == 'deleted'){

		if( ($fd_type == 'int' && $row[4] == '0') || ( $fd_type == 'string' && $row[1] == "enum('0','1')" ) ){

			echo_buffer("\$opts['filters'] = 'PMEtable0.deleted = \"0\"'; // See ./triggers/mark_as_deleted.TDB.inc"."$lf");

	 		break;

		}elseif($fd_type == 'string' && $row[1] == "enum('N','Y')"){

			echo_buffer("\$opts['filters'] = 'PMEtable0.deleted = \"N\"'; // See ./triggers/mark_as_deleted_y.TDB.inc"."$lf");

	 		break;

		}

	}

}

// In some cases, mysql_field_len() returns incorrect values if CHARSET=utf8

$schema_text = mysql_tb_schema($tb);

if($cfg_utf8_bug_note == 1){

	$schema_text = str_replace("\n", "$lf", $schema_text);

echo_buffer("/*

This bug note can be disabled by setting: \$cfg_utf8_bug_note = 0;
If a MySQL v4.1 CHARSET is UTF8, a PHP v4.x mysql_field_len() function
may return incorrect values for the length of VARCHAR columns.
Table schema is provided below so that VARCHAR field lengths can be
compared with the 'maxlen' settings in the following field arrays.

$schema_text

*/
");

}; // end $cfg_utf8_bug_note check

echo_buffer("// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc."."$lf");

####### NOTE: This 'for' loop is very long and may contain un-indented HEREDOC statements #######

if(!$tb_desc = @mysql_query("DESCRIBE $tb")){
	die(mysql_error());
}

$fds = mysql_list_fields($opts['db'], $tb, $opts['dbh']);

$num_fds = mysql_num_fields($fds);

// mysql_fetch_array() will populate these below
// $row[0] = field name
// $row[1] = field type, e.g.: smallint()
// $row[2] = YES if ISNULL
// $row[3] = PRI if primary key
// $row[4] = default values

// Bug fix initiated. PHP's mysql_field_len() function appears to have a bug
// when tables are UTF8, and returns a value 3 times the true value of field length.

for($k = 0; $k < $num_fds; $k++) {

	$row = @mysql_fetch_array($tb_desc, MYSQL_BOTH);

	$fd = mysql_field_name($fds, $k); // field name

	$fd_type = mysql_field_type($fds, $k);

	// Original code
	// $fd_len = mysql_field_len($fds, $k);

	// PHP mysql_field_len() bug fix follows
	if(stristr($fd_type, 'string') && stristr($schema_text, 'CHARSET=utf8')){

		$fd_len = mysql_field_len($fds, $k) / 3; // Default help - Limit $fd_len characters.

	}else{

		$fd_len = mysql_field_len($fds, $k); // Default help - Limit $fd_len characters.

	}

	// Column label modification. Change underscores, hyphens, and/or periods to spaces.

	$fn = strtr($fd, '_-.', '   ');

	$fn = preg_replace('/(^| +)id( +|$)/', '\\1ID\\2', $fn); // Don't know what this does!!!

	// Change certain column labels ($fn) to uppercase: id to ID  (column titles)

	switch($fn)
	{
		Case 'ip':
		Case 'url':
		Case 'zip':
			$fn = strtoupper($fn);
			break;
		default:
			$fn = ucwords(strtolower($fn)); // Employ standard capitalization for column titles
			break;
	}

	// Begin phpMyEdit field options *******************************

	// Set a flag for auto-increment fields. Do not change $auto_increment (or it's usage below).

	$auto_increment = stristr($row[5], 'auto_increment') ? 1 : 0;

	if(in_array(strtolower($fd), $reserved_words)){

		echo_buffer("// '### The column `$fd` appears to be a reserved word in PHP or MySQL. ###';");

		echo_buffer("// '### Please rename `$fd` to avoid unexpected results. ###';");

	}elseif($k == 0){

		echo_buffer("// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)");

		echo_buffer("");

	}

	// Buffer the *beginning* of the $opts['fdd'] array()

	echo_buffer('$opts[\'fdd\'][\''.$fd.'\'] = array(');

	# Field array elements appear below in alphabetical order
	# *EXCEPT* that the last item is 'sort' (and is not followed by a comma)

	# colattrs - (CSS/HTML attributes) potentially apply style individually to every TD tag (not advisable)

	($cfg_colattrs == 1) ? echo_buffer("//  'colattrs|LF'   => '',") : '';

	# CSS to right-justify certain column types

	# If right-justify is not your preference, comment out switch($fd_type){}

	if($cfg_right_align == 1){

		switch($fd_type){
			Case 'string':
				if(substr($row[1], 0, 3) == 'set' || substr($row[1], 0, 4) == 'enum'){
					echo_buffer("  'css'        => array('postfix' => 'right-justify'),");
				}
				break;
			Case 'date':
			Case 'datetime':
			Case 'int':
			Case 'real':
			Case 'time':
			Case 'timestamp':
			Case 'year':
				echo_buffer("  'css'        => array('postfix' => 'right-justify'),");
				break;
			default:
				break;
		};

	}

	# phpMyEdit's datemask option apparently works only with datetime and timestamp fields
	# datemask will conflict with the simultaneous usage of 'sql|LFV' and CONCAT

	if($cfg_datemask_usage == 1){

		if(($fd_type == 'timestamp' && $fd_len == 14) || $fd_type == 'datetime'){

			$datemask = $cfg_datemask_timestamp;

		}else{

			$datemask = '';

		}

		$datemask != '' ? echo_buffer("  'datemask'   => '$datemask',") : '';

	}

	# $row[4] contains MySQL's default value (if one exists)

	if($auto_increment) {

		echo_buffer("  'default'    => '',");

	}elseif($row[2] != '' && $row[2] == 'YES') { // YES if ISNULL

		echo_buffer("  'default'    => '',");     // NULL

	}elseif($row[4] != '' && $row[2] != 'YES') { // $row[4] default values, $row[2] YES if ISNULL

		echo_buffer("  'default'    => '".$row[4]."',");

	}else{

		echo_buffer("  'default'    => '".$row[4]."',");

	}

	// Discontinued
	//if($cfg_escape_usage == 1){
		//echo_buffer("//  'escape'     => false,");
	//}

	# help|ACP - default: "Limit x characters/digits" is field type dependent in several places below

	if($cfg_help_ACP == 1){

		if($fd_type == 'string'){

			if(substr($row[1], 0, 3) == 'set' || substr($row[1], 0, 4) == 'enum') {

				echo_buffer("  'help|ACP'   => '".$label_help_Select."',");

			}else{

				echo_buffer("  'help|ACP'   => '".$label_help_Limit." ".$fd_len." ".$label_help_characters."',");

			}

		}elseif($fd_type != 'string'){

			switch($fd_type)
			{

				Case 'blob':

					echo_buffer("  'help|ACP'   => '".$label_help_Limit." ".number_format($fd_len)." ".$label_help_characters."',");

					break;

				Case 'date':

					echo_buffer("  'help|ACP'   => '$cfg_help_date',");

					break;

				Case 'datetime':

					echo_buffer("  'help|ACP'   => '$cfg_help_datetime',");

					break;

				Case 'int':

					if($k > 0){

						echo_buffer("  'help|ACP'   => '".$label_help_Limit." ".$fd_len." ".$label_help_digits."',");

					}

					break;

				Case 'real':

					echo_buffer("  'help|ACP'   => '".$label_help_Limit." ".$fd_len." ".$label_help_digits."',");

					break;

				Case 'time':

					echo_buffer("  'help|ACP'   => '$cfg_help_time',");

					break;

				Case 'timestamp':

					echo_buffer("  'help|ACP'   => '$cfg_help_timestamp',");

					break;

				Case 'year':

					$cfg_help_year = $fd_type == 'year' && $fd_len == 2 ? substr($cfg_help_year,0,2) : $cfg_help_year;

					echo_buffer("  'help|ACP'   => '$cfg_help_year',");

					break;

				default:

					break;

			};



		}

	}elseif($cfg_help_ACP == 2){

		echo_buffer("  'help|ACP'   => sprintf(\$help_link, '$tb', '$fd', '$tb', '$fd'),");

	}else{

		// Omit the 3rd cell Help

	}

	# input - Visible in View/Delete modes Readonly, passWord, Hidden)

	if($cfg_input_usage > 0){

		if($auto_increment || ($tb == 'mfg_help_data' && ($fd == 'tb_name' || $fd == 'fd_num' || $fd == 'fd_name')) ) {

			echo_buffer("  'input'      => 'R',");

		}elseif($fd_type == 'timestamp') {

			echo_buffer("  'input'      => 'R',");

		}else{

			echo_buffer("  'input'      => '',");

		}

	}


	if($fd_type == 'blob'){

		// omit 'maxlen' option for BLOB fields

	}elseif($fd_type == 'int' && $k > 0){ // to skip column 0 add: && $k > 0

		echo_buffer("//  'number_format|VDLF' => array(0, '.', ','),");

		echo_buffer("  'maxlen|ACP'     => ".$fd_len.',');

	}elseif($fd_type == 'real'){

		# mask - sprintf() for REAL numbers (FLOAT, DOUBLE, DECIMAL)
		# mask - discontinued after introduction of version 5.5's 'number_format' option (below)
		# $fd_type == 'real' ? echo_buffer("  'mask'       => '%01.2f',") : '';

		// Determine decimal points required for number_format.
		// Split (e.g.) FLOAT(7,2) into $part[0] (7), $part[1] (2)

		$out = preg_replace("/[^0-9,]/", '', $row[1]);

		$part = explode(',', $out);

		echo_buffer("  'maxlen'     => ".(@$part[0]+@$part[1]+1).',');

		if(count($part) < 2){

			$part[1] = $fd_len;

		}

		echo_buffer("  'number_format|VDLF' => array(".$part[1].", '.', ','),");

	}else{

		echo_buffer("  'maxlen'     => ".$fd_len.',');

	}

	# name - Above, underscore is replaced with space and ucwords() applied

	echo_buffer("  'name'       => '".str_replace('\'', '\\\'', $fn)."',");

	# nowrap - inactive - eqivalent of <TD NOWRAP>

	// echo_buffer("  'nowrap'     => true,");

	# options - L for List is assumed and does not have to be specified.

	// Add/Change/coPy/View/Delete/Filter/List = ACPVDFL (F/Filter relates to Search button)

	if($auto_increment){

		echo_buffer("  'options'    => '$cfg_option_auto_increment',");

	}elseif($fd_type == 'timestamp'){

		echo_buffer("  'options'    => '$cfg_option_timestamp',");

	}elseif($fd == 'deleted'){

		echo_buffer("  'options'    => 'ACP',"); // Author preference for column named `deleted`

	}else{

		$k <= $cfg_option_limit ? echo_buffer("  'options'    => '$cfg_option_other',") : echo_buffer("  'options'    => '$cfg_option_other2',") ;

	}

	# select - In Search / filter mode, the query INPUT/SELECT type

	// If Search button clicked, selection box type can be one of: [M]ultiple, [T]ext, [N]umeric
	// The [N]umeric setting sometimes works well for DATE or TIME columns.

	if(substr($row[1], 0, 3) == 'set') {

		echo_buffer("  'select'     => 'M',");

	}elseif(substr($row[1], 0, 4) == 'enum') {

		echo_buffer("  'select'     => 'D',");

	}else{

		echo_buffer("  'select'     => 'T',");

	}

	# size|ACP - HTML INPUT size for CHAR/VARCHAR is capped at 60 in ./output/phpMyEdit.class.php
	# however for encrypted password fields of length 60, you may want size 12 INPUT displayed.

	if($cfg_size_usage == 1){

		if($fd_type != 'blob' && substr($row[1], 0, 3) != 'set' && substr($row[1], 0, 4) != 'enum'){

			$tmp = $fd_len > 60 ? 60 : $fd_len;

			echo_buffer("  'size|ACP'   => ".$tmp.',');

		}

	}

	# sqlw - alternate possibilities: // 'IF($val_qas = "", NULL, $val_qas)'
	# sqlw - alternate possibilities: // 'IF($val = "", NULL, $val)' // 'IF(col_name = $val, $val, MD5($val))'

	# $cfg_sqlw_usage is forced on

	$cfg_sqlw_usage = 1;

	if($k > 0 && $cfg_sqlw_usage == 1){

		$row[2] == 'YES' ? echo_buffer("  'sqlw'       => 'IF(\$val_qas = \"\", NULL, \$val_qas)',") : echo_buffer("  'sqlw'       => 'TRIM(\"\$val_as\")',");

	}

	# strip_tags - nested ternary statements ahead

	if($fd_type == 'blob' && $cfg_blob_striptags > 0){

		($cfg_blob_striptags == 1) ? echo_buffer("  'strip_tags|LF' => true,")  : ( ($cfg_blob_striptags == 2) ? echo_buffer("  'strip_tags' => false," ) : '') ;

	}

	# In order to use 'tab' options, column 0 (or the primary key column) MUST have a tab entry.
	# Options apply ... it makes sense to use 'tabs|ACP' (not 'tabs' or 'tabs|ACPVD') because you may want to see the entire record in View/Delete modes

	# consider revising based on $num_fds

	if($cfg_tabs_usage > 0){

		$commented_out = $k == 0 ? '' : '//'; // Apply a tab to the first column (mandatory for TAB usage)

		// Users may *instead* want a 'tab' applied every (what?) 5th column
		// $commented_out = $k == 0 || ($k%4) ? '//' : '';

		// If the table has more than 5 columns, add tabs

		if($num_fds > 5){

			echo_buffer("$commented_out  'tab|ACP'    => '".str_replace('\'', '\\\'', strtoupper($fn))."',");

		}

	}elseif($k == 0 && $cfg_tabs_usage == 0){

		echo_buffer("//  'tab|ACP'    => '".str_replace('\'', '\\\'', strtoupper($fn))."',");

	}

	# textarea

	$fd_type == 'blob' ? echo_buffer("  'textarea'   => array('rows' => '$cfg_textarea_rows', 'cols' => '$cfg_textarea_cols'),") : '';

	# trimlen - Usually applicable only to BLOB fields

	($fd_type == 'blob' && $cfg_textarea_trimlen > 0) ? echo_buffer("  'trimlen|LF' => $cfg_textarea_trimlen,") : '';

	# values

	if(substr($row[1], 0, 3) == 'set') {

		echo_buffer("  'values'     => array".substr($row[1], 3).', ');

	}elseif(substr($row[1], 0, 4) == 'enum') {

		echo_buffer("  'values'     => array".substr($row[1], 4).', ');

	}

	($fd_type == 'blob' && $cfg_sort_blobs == 0) ? echo_buffer("  'sort'       => false") : echo_buffer("  'sort'       => true");

	echo_buffer(');'); // CLOSE THE PHPMYEDIT FIELD ARRAY.

	// End phpMyEdit field array definitions *******************************

	// Include MySQL column attributes below the field array.

	# select - In Search / filter mode, the query INPUT/SELECT type

	$row[1] == $fd_type ? echo_buffer("// MySQL column ".$k.": $fd_type") : echo_buffer("// MySQL column ".$k.": $fd_type - {$row[1]}");

	# required fields / Javascript to enforce user entry

	# skip column 0

	// Handling of 'required' is omitted for NULL fields

	if($k > 0){

		if($row[2] != 'YES'){

			if($cfg_required == 0){

				if($k < 4){

					echo_buffer("\$opts['fdd']['$fd']['js']['required'] = true;");

					if($fd_type == 'int'){

						echo_buffer("// \$opts['fdd']['$fd']['js']['regexp'] = '/^[0-9]*$/';");

						echo_buffer("// \$opts['fdd']['$fd']['js']['hint'] = 'Please enter only numbers in the \"$fn\" field.';");

					}

				}

			}elseif($cfg_required == 1){

				echo_buffer("\$opts['fdd']['$fd']['js']['required'] = true;");

				if($fd_type == 'int'){

					echo_buffer("// \$opts['fdd']['$fd']['js']['regexp'] = '/^[0-9]*$/';");

					echo_buffer("// \$opts['fdd']['$fd']['js']['hint'] = 'Please enter only numbers in the \"$fn\" field.';");

				}

			}

		}

	}

	// Certain column types may simply fall through to the default below.

	switch($fd_type)
	{

		Case 'date':

			echo_buffer("// Possible default: date('$cfg_datemask_date')");

			// echo_buffer("// In place of 'datemask' you might use: 'sql|LFV' => 'if($fd > \"\", CONCAT(DATE_FORMAT($fd, \"%a %b %e %Y\")), \"\")',");

			break;

		Case 'datetime':

			echo_buffer("// Possible default: date('$cfg_datemask_timestamp')");

			break;

		Case 'time':

			echo_buffer("// Possible default: date('$cfg_datemask_time')");

			echo_buffer("//  'sql|LFV'     => 'if($fd > \"00:00:00\", CONCAT(TIME_FORMAT($fd, \"%h:%i %p\")), \"\")', // Possible datemask replacement");

			break;

		Case 'timestamp':

			break;

		Case 'year':

			$fd_len == 4 ? echo_buffer("// Possible default: date('Y')") : '' ;

			$fd_len == 2 ? echo_buffer("// Possible default: date('y')") : '' ;

			break;

		default:
			break;

	}

	if($cfg_tweak_file_usage == 1){

		if($cfg_tweak_file_name != '' && file_exists($cfg_tweak_file_name)) {

			require($cfg_tweak_file_name);

		}else{

			echo '<h3>Unable to locate include file: '.$cfg_tweak_file_name.'</h3>';

			require_once('./inc/ftr.php');

			exit;

		}

	}

	echo_buffer("$lf");

	$fd_len  = '';

	$fd_type = '';

	$row = '';

	$tmp = '';

	$part = '';

}; # End loop which began about 400+ lines earlier as: for($k = 0; $k < $num_fds; $k++)

echo_buffer("// Enable this trigger induce View mode after adding a new record
// \$opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once('./inc/phpMyEdit.class.php');

new phpMyEdit(\$opts);

require_once('./inc/$cfg_footer_include_file');

?>");

// Cheat Sheet optionally included near the bottom of each script.

if($cfg_cheat_sheet == 1){

echo_buffer("
<?php

/*

Cheat Sheet:

Global filters facilitate working with a subset of records:
\$opts['filters'] = 'valid_user = \"'.\$valid_user.'\" OR valid_user = \"public\"';
\$opts['cgi']['persist'] = array('valid_user' => \$valid_user );
Other filter examples:
\$opts['filters'] = \"column1 like '%11%' AND column2<17\";
\$opts['filters'] = \"section_id = 9\";
\$opts['filters'] = \"PMEtable0.sessions_count > 200\";

Certain field options can be restricted to specific page modes (ACPVDFL).
For example: 'help|ACP' or 'trimlen|LF'

'php'          new option --- see ./doc/html/configuration.fields.php.html#AEN1201
               If the 'php' option is set, a file of that name is included (and executed) in place of a value.
               Behavior is the same as in triggers.

'colattrs'     user-defined table cell attributes: 'colattrs|LF'  => 'style=\"color:#ff0000;background-color:transparent\"',
'css'          user-defined style class (e.g. '-right-justify' is applied to numeric columns by MFG)
'datemask'     applicable to TIMESTAMP(14) and DATETIME fields, e.g. 'Y-m-d H:i:s'
'default'      default values are extracted from MySQL
'escape'       set false to suppress htmlspecialchars()
'help|ACP'     help / guidance displayed in ACP modes in the last column
'input'        RWH (Readonly, passWord, Hidden) phpMyEdit version 5.4+ only
'mask'         a string (e.g. '%01.2f') used by sprintf() to format output
'maxlen'       maximum length to display add/edit/search INPUT boxes
'name'         title for column headings
'nowrap'       default is false (true/false re:NOWRAP)
'options'      ACPVDFL - optional parameter to control whether a field is displayed:
               A - add, C - change, P - copy, D - delete, V - view, F - filter, L - list
               Alternative options:
               R - indicates that a field is read only
               W - indicates that a field is a password field
               H - indicates that a field is to be hidden and marked as hidden
'required'     true or false (true invokes javascript to prevent null entries)
'select'       select boxes: T - text, N - numeric, D - drop-down, M - multiple selection
'size'         size to display add/edit/search INPUT boxes (extracted from MySQL but set to 60 if > 60)
'strftimemask' can be applied to INT fields containing a Unix timestamp
               'strftimemask' => '%c',
               'strftimemask' => '%a %m-%d-%Y %H:%M %p',
'sort'         true or false - sort the display on this column (clickable column header in List mode)
'sql'          provides access to MySQL functions (see documentation)
               'sql|LFV' => 'if(start_date > \"\", CONCAT(start_date, \"%b %e %Y - %a\"), \"\")'
               'sql|LFV' => 'if(FirstName <> \"\", CONCAT(LastName, \", \", FirstName), LastName)'
               'sql' => 'CONCAT(FROM_UNIXTIME(col_name, \"%a %b %e %Y %h:%i %p\"))'
               Transform an integer (Unix timestamp) to human readable date:
               'sql|LFV' => 'if(\$col_name > \"\", CONCAT(DATE_FORMAT(\$col_name, \"%a %b %e %Y %h:%i %p\")), \"\")',
'sqlw'         'sqlw' => 'UPPER(\$val_as)'
               'sqlw' => 'TRIM(UPPER(\$val_as))'
               'sqlw' => 'IF(\$val_qas = \"\", NULL, \$val_qas)'
'strip_tags'   true or false - whether to strip_tags() from displayed data
'tab|ACP'      see documentation
'textarea'     rows/cols - TEXTAREA attributes in ACP modes
'trimlen'      maximum length of string content to display (usually 'trimlen|LF')
'URL'          used to make a field 'clickable' in the display e.g.: 'mailto:\$value', 'http://\$value' or '\$page?stuff';
'URLtarget'    HTML target link specification, for example: _blank (see documentation)
'values'       \$opts['fdd']['col_name']['values'] = array('0', '1', '2', '3');
'values2'      \$opts['fdd']['col_name']['values2'] = array('0' => 'No', '1' => 'Yes');

Extract 'values' from a different table (initialization):

\$opts['fdd']['field_name'] = array(
  'default'    => '',
  'maxlen'     => 20,
  'name'       => 'Field Name',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 20,
  'sort'       => true,
  'values'     => array(
    'db'          => 'dbname',
    'table'       => 'tblname',
    'column'      => 'col_name',
    'description'=> array(
       'columns' => array('0' => 'name', '1' => 'father_name', '2' => 'mother_name'),
       'divs'    => array('0' => ' - ', '1' => ' - '),
     ),
    'filters'     => 'col_name = \"criteria\"',
    'orderby'     => 'yet_another_col')
);

Extract 'values' from a different table (post-initialization may enhance readability):

\$opts['fdd']['col_name']['values']['db'] = 'databaseName';
\$opts['fdd']['col_name']['values']['table'] = 'extractTable';
\$opts['fdd']['col_name']['values']['column'] = 'extractColumn';
\$opts['fdd']['col_name']['values']['description']['divs']['-1'] = ', ';
\$opts['fdd']['col_name']['values']['description']['columns']['0'] = 'desc_column_0';
\$opts['fdd']['col_name']['values']['description']['divs']['0'] = ', ';
\$opts['fdd']['col_name']['values']['description']['columns']['1'] = 'desc_column_1';
\$opts['fdd']['col_name']['values']['filters'] = 'id = \"something\" ';
\$opts['fdd']['col_name']['values']['orderby'] = 'another_column';

Dummy fields can be utilized with MySQL functions, or to display calculations:
\$opts['fdd']['dummy1'] = array (
   'name'    => 'Dummy Field',
   'sql'     => 'CONCAT(first_name, \" \", last_name)',
   'options' => 'VDL',
   'escape'  => false,
   'sort'    => true
);

Javascript validation for entry of 0-9 in a numeric field:
\$opts['fdd']['col_name']['js']['required'] = true;
\$opts['fdd']['col_name']['js']['regexp'] = '/^[0-9]*$/';
\$opts['fdd']['col_name']['js']['hint'] = 'Please enter only numbers in the \"col_name\" field.';

CGI variables:
\$opts['cgi']['overwrite']['DateCreated'] = date('Y-m-d');
\$opts['cgi']['persist'] = \$some_variable;
\$opts['cgi']['persist'] = array('article_id' => \$article_id, 'session_id' => \$session_id);

Notification examples:
\$opts['notify']['from']   = '".$cfg_email_logging."';
\$opts['notify']['prefix'] = \$_SERVER['REQUEST_URI'].' - ';
\$opts['notify']['wrap']   = '72';
\$opts['notify']['insert'] = '".$cfg_email_logging."';
\$opts['notify']['update'] = '".$cfg_email_logging."';
\$opts['notify']['delete'] = '".$cfg_email_logging."';
\$opts['notify']['all']    = '".$cfg_email_logging."'; // (insert, update, and, delete)

*/

?>
");
};




if($cfg_diskwrite == 0 || $omit_file == 1){

	echo "\n".'<p style="color:#ff0000;background-color:transparent">';

	echo in_array($tb, $cfg_skip_table_array) ? "\n".'<i>'.$tb.'</i> is listed as a protected table in $cfg_skip_table_array' : 'Display Only: '.$contentFile;

}elseif($cfg_diskwrite == 1 && $omit_file == 0){

	if(!is_dir($opts['mfg']['path'])){

		echo '<p>Cannot locate the target directory ($opts[\'mfg\'][\'path\']):<br>'.$opts['mfg']['path'].'</p>';

		require_once('./inc/ftr.php');

		exit;

	}

	if(!is_writable($opts['mfg']['path'])){

		echo '<p>Write permission denied for '.$opts['mfg']['path'].'</p>';

		echo '<p>Use your FTP client, or website control panel, to enable write permission for '.$opts['mfg']['path'].'</p>';

		echo "\n".'<p>e.g. chmod(777)</p>';

		require_once('./inc/ftr.php');

		exit;

	}

	$display = str_replace('\\', '/', $opts['mfg']['path']).$contentFile;

	if($filehandle = fopen($opts['mfg']['path'].$contentFile, 'w+')) {

		fwrite($filehandle, $buffer);

		// flush($filehandle);

		// the above does not work on some configurations, see http://us3.php.net/flush

		fclose($filehandle);

		echo "\n".'<p style="color:#ff0000;background-color:transparent">Over-Write Existing File: '.$contentFile.'</p><table>';

		echo "\n".'<tr><td rowspan="2"><img src="./imgs/hand1.gif" width="32" height="32" alt="Writing to disk" border="1"></td>';

		echo "\n".'<td><img align="middle" src="./imgs/arrow.gif" width="12" height="12" alt="" border="0">&nbsp;<a href="'.$display.'" target="_blank">'.$display.'</a></td></tr>';

		echo "\n".'<tr><td>'.$opts['db'].'.'.$tb.'</td></tr></table>';


	}else{

		echo "\n".'<br><table><tr><td><p><strong class="red">'.$contentFile.' was NOT written to disk, possibly due to insufficient &quot;write&quot; privileges for the output directory.</strong></p>';

		echo "\n".'<p>Please copy and paste content listed below to <i>'.$display.'</i> file.</p></td></tr></table>';

	}

}

// At this point, forms may optionally have been written to disk.

// Output the $buffer to the web browser using Javascript highlightable TEXTAREA boxes.

?>

<div style="none">

<form action="none">

<textarea readonly name="yourForm"
   rows="<?php echo $cfg_form_rows; ?>"
      cols="<?php echo $cfg_form_cols; ?>"
         wrap="soft"><?php echo_html($buffer); ?></textarea>

<p>

   <input class="mysubmit" type="button" name="noname" value="Highlight All"
      onClick="javascript:this.form.yourForm.focus();this.form.yourForm.select();">

</p>

</form>

<p>

   <a href="javascript:history.go(-1)" onmouseover="self.status=document.referrer;return true" title="Go Back" class="pme-message">Go Back</a>

   <span class="pme-message">|</span>

   <a href="<?php echo basename($_SERVER['PHP_SELF']); ?>" title="Start over" class="pme-message">Start over</a>

</p>

<hr size="1">

</div>

<?php echo_buffer("$lf"); ?>

