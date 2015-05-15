<?php

/*
 * This script can be used to create basic entries for a Help system.
 * It analyzes each table's column properties, and creates default entries.
 * Naturally you would have to go back and edit the default content,
 * but a portion of the data entry work is completed automatically.
*/

require_once('./inc/hdr.php');

require_once('./output/inc/dbconn.php');

$help_table = 'mfg_help_data';

function file_write(&$string, &$target)
{
	// Usage is commented out at the end of this script.
	// Write (or over-write) the generated string to the target filename.
	global $opts, $tb;
	if(!is_writable($opts['mfg']['path'])){
		echo "\n\n".'<p class="forms-error">File permissions do not allow writing to:<br>'.$opts['mfg']['path'].'<br>'.__FUNCTION__.'()</p>'."\n\n";
	}elseif($string == ''){ 
		echo "\n\n".'<p class="forms-error">The string passed to '.__FUNCTION__.'() is empty.</p>'."\n\n";
	}elseif($target == ''){ 
		echo "\n\n".'<p class="forms-error">The target filename passed to '.__FUNCTION__.'() is empty.</p>'."\n\n";
	}else{
		if($fh = fopen($opts['mfg']['path'].$target, "w")){ 
			if(@fwrite($fh, $string."\r\n")){
				// echo "\n\n".'<p>&nbsp;</p><hr size="1"><p class="forms">Writing '.number_format(strlen($string)).' characters of code for use with the <i>'.$tb.'</i> table</p><hr size="1">'."\n\n";
				@fclose($fh);
			}else{
				echo "\n\n".'<p>&nbsp;</p><hr size="1"><p class="forms-error">'.__FUNCTION__.'() is unable to write to the file.<br>Please check file permissions.</p><hr size="1">'."\n\n";
			}
		}else{
			echo "\n\n".'<p class="forms-error">Unable to open filehandle for writing.</p>'."\n\n";
		};
	}
};

$tbs = mysql_list_tables($opts['db'], $opts['dbh']);

$num_tbs = mysql_num_rows($tbs);

?>

<h3>Creating &quot;Field Help Pop-ups&quot; For End Users (Add, Change, coPy modes)</h3>


<table border="0" cellpadding="0" cellspacing="5" width="640">

	<tr>

		<td>


			phpMyEdit supports the optional display of a 3rd table cell in Add, Change, and coPy modes 
			(to the right of the input boxes). 
			In this &quot;Help&quot; cell you can configure the display of tips or other information for end users. 
			<br><br>If you want to carry this a step further, for large projects using these forms, the following 
			database schema can be used to initially populate `mfg_help_data` with user tips that are specific 
			to each column in each table. You will need to edit the `hept_text` entries, but 
			you begin the Help project with `mfg_help_data` populated with the UNIQUE KEY (`tb_name`,`fd_name`). 
			This data will be immediately accessible to form users if the forms are created using the &quot;link to 
			Help popup&quot; option.
			<br><br>
			NOTE: On some system configurations, there is a PHP bug with the mysql_field_len() function when used with 
			MySQL version 4.1 and UTF8 character sets. An incorrect value for the length of VARCHAR fields may 
			be returned if the character set is UTF8. If you find that the field length set in your forms for 
			VARCHAR columns is incorrect, see the 
			<a href="http://www.php-form-generator.com/index.php?s=61" target="_blank">bug note</a> 
			page for a work-around.


		</td>

	</tr>

	<tr>



		<td>
<pre>CREATE TABLE `mfg_help_data` (
  `hid` mediumint(9) NOT NULL auto_increment,
  `tb_name` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `fd_num` smallint(6) NOT NULL default '0',
  `fd_name` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `fd_name2` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `help_text` text collate utf8_unicode_ci NOT NULL,
  `example` tinytext collate utf8_unicode_ci NOT NULL,
  `language` varchar(50) collate utf8_unicode_ci NOT NULL default 'English',
  `lang_code` varchar(5) collate utf8_unicode_ci NOT NULL default 'en-US',
  `char_set` varchar(15) collate utf8_unicode_ci NOT NULL default 'UTF-8',
  `dir` enum('ltr','rtl') collate utf8_unicode_ci default 'ltr',
  `deleted` tinyint(4) NOT NULL default '0',
  `updated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`hid`),
  UNIQUE KEY `no_duplicates` (`tb_name`,`fd_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
</pre>

		</td>

	</tr>

</table>



<?php

$buffer = '';

// loop through the tables

for($j = 0; $j<$num_tbs; $j++) {

	$tb = @mysql_tablename($tbs, $j);

	@$buffer .= "\r\n".'<table width="750"><tr><td><span style="font-size:x-small"># '.$tb.' SQL follows...<br><br>'."\r\n";

	$data = array();

	$table_description = @mysql_query('DESCRIBE '.$tb) or die('<p class="forms-error">'.mysql_error().'</p></body></html>');

	$field_names = @mysql_list_fields($opts['db'], $tb, $opts['dbh']) or die('<p class="forms-error">'.mysql_error().'</p></body></html>');

	$res = mysql_query('SELECT * FROM '.$tb.' LIMIT 1') or die('<p class="forms-error">'.mysql_error().'</p></body></html>');

	$buffer .= "\r\n".'INSERT INTO `'.$help_table.'` (`hid`, `tb_name`, `fd_num`, `fd_name`, `fd_name2`, `help_text`, `example`, `language`, `lang_code`, `char_set`, `dir`, `deleted`, `updated`) VALUES <br>'."\r\n";

	// loop through the columns in the selected table

	for ($i = 0; ($fd = @mysql_field_name($field_names, $i)) != false; $i++){

		$row = @mysql_fetch_array($table_description, MYSQL_BOTH);

		$data['name'][$i] = $row[0];

		$data['label'][$i] = ucwords(strtolower(str_replace('_', ' ', $row[0])));

		$data['type'][$i] = mysql_field_type($res, $i);

		$data['details'][$i] = $row[1];

		if($data['type'][$i] == 'real'){

			$out = preg_replace("/[^[:digit:],]/", '', $row[1]);

			$part = explode(',', $out);

			$data['real_0'][$i] = isset($part[0]) && $part[0] > 0 ? $part[0] : 10;

			$data['real_1'][$i] = isset($part[1]) && $part[1] > 0 ? $part[1] : 2;

		}else{

			$data['real_0'][$i] = '';

			$data['real_1'][$i] = '';

		}

		$data['isnull'][$i] = $row[2];

		$data['primary_key'][$i] = $row[3];

		$data['default'][$i] = $row[4];

		$decimal_point = $data['type'][$i] == 'real' ? 1 : 0;

		$data['size'][$i] = $data['type'][$i] == 'real' ? 1 + $data['real_0'][$i] + $data['real_1'][$i] : mysql_field_len($res, $i); // Field length

		$data['flag'][$i] = mysql_field_flags($field_names, $i); 

		$max = '(max. '.$data['size'][$i].' characters)';


		$buffer .= "\r\n".'("", "'.$tb.'", "'.$i.'", "'.$data['name'][$i].'", "'.$data['label'][$i].'", "';

		// Customize the Help text based on column properties

		if(stristr($data['flag'][$i], 'auto_increment')){

			$buffer .= 'This entry is the record number assigned by the database '.$max;

		}else{

			// Default entries for the help_text field.

			switch($data['type'][$i])
			{
				Case 'int':
				Case 'real':
					$buffer .= $data['label'][$i].' is a numeric field in the '.$tb.' table '.$max;
					break;

				Case 'time':
					$buffer .= $data['size'][$i] == 8 ? 'Syntax for the '.$data['label'][$i].' field is HH:MM:SS, e.g. 08:00:00 '.$max : 'Syntax for the '.$data['label'][$i].' field is HH:MM, e.g. 08:00 '.$max;
					break;

				Case 'date':
					$buffer .= 'Syntax for the '.$data['label'][$i].' field is YYYY-MM-DD , e.g. 2006-12-31 '.$max;
					break;

				Case 'datetime':
					$buffer .= 'Syntax for the '.$data['label'][$i].' field is YYYY-MM-DD HH:II:SS, e.g. 2006-12-31 08:00:00 '.$max;
					break;

				Case 'year':
					$buffer .= $data['size'][$i] == 4 ? 'Syntax for the '.$data['label'][$i].' field is YYYY, e.g. 2006 '.$max : 'Syntax for the '.$data['label'][$i].' field is YY, e.g. 06 '.$max;
					break;

				Case 'timestamp':
					$buffer .= 'Timestamp fields are updated automatically when records are changed '.$max;
					break;

				Case 'blob':
				Case 'string':
				default:
					$buffer .= $data['label'][$i].' is an alphanumeric field '.$max;
					break;
			};


		}

		$buffer .= '", "", "English", "en-US", "UTF-8", "ltr", "0", NOW()),<br>'."\r\n";

	}

	$buffer = substr($buffer, 0, -7).';</span></td></tr></table>';

	echo $buffer;

	$fn = 'sql_help_data_4_'.$tb.'.sql';

	$buffer = strip_tags($buffer)."\r\n";

	// file_write($buffer, $fn); // uncomment to write SQL to file

	unset($buffer);

	unset($data);

}

require_once('./inc/ftr.php'); 

?>
