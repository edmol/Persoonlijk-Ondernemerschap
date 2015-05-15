<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// Suggested filename: my_lime_tokens_714972.php
// Tue, 05 Feb 2013 14:10:33 +0100
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// potoets.lime_tokens_714972

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

$opts = array();

$opts['tb'] = 'lime_tokens_714972';

$opts['key'] = 'token'; // Primary key checked

$opts['key_type'] = '';

$opts['sort_field'] = array('participant_id');

$opts['inc'] = 25;

$opts['options'] = 'CVFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php');

require_once($INC_DIR.'includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 1; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];

$opts['filters'] = "firstname != ''";

$opts['display'] = array(
	'query' => false,
	'sort'  => false,
	'time'  => false
	);
	
echo '=> Wijzigen kandidaat gegevens (kies wijzig) en wijzigen antwoorden op de 100 stellingen (oranje)';	
/*

This bug note can be disabled by setting: $cfg_utf8_bug_note = 0;
If a MySQL v4.1 CHARSET is UTF8, a PHP v4.x mysql_field_len() function
may return incorrect values for the length of VARCHAR columns.
Table schema is provided below so that VARCHAR field lengths can be
compared with the 'maxlen' settings in the following field arrays.

CREATE TABLE `lime_tokens_714972` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `participant_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `emailstatus` text COLLATE utf8_unicode_ci,
  `token` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blacklisted` varchar(17) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent` varchar(17) COLLATE utf8_unicode_ci DEFAULT 'N',
  `remindersent` varchar(17) COLLATE utf8_unicode_ci DEFAULT 'N',
  `remindercount` int(11) DEFAULT '0',
  `completed` varchar(17) COLLATE utf8_unicode_ci DEFAULT 'N',
  `usesleft` int(11) DEFAULT '1',
  `validfrom` datetime DEFAULT NULL,
  `validuntil` datetime DEFAULT NULL,
  `mpid` int(11) DEFAULT NULL,
  `attribute_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

*/

// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)
$opts['fdd']['participant_id'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Limit 40 characters',
  'input'      => '',
  'maxlen'     => 30,
  'name'       => 'Organisatie',
  'values'     => array(
    'db'          => 'potoets',
    'table'       => 'organisaties',
    'column'      => 'bedrijfsnaam'),
  'options'    => 'ACFL',
  'trimlen'    => 30,
  'select'     => 'T',
  'size|ACP'   => 30,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
//  'tab|ACP'    => 'LASTNAME',
  'sort'       => true
);

$opts['fdd']['firstname'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 40 characters',
  'input'      => '',
  'maxlen'     => 40,
  'name'       => 'Naam',
  'sql'        => 'CONCAT(firstname, " ",lastname)',
  'options'    => 'VFL',
  'select'     => 'T',
  'trimlen'    => 30,
  'size|ACP'   => 40,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['email'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Limit 196,605 characters',
  'input'      => '',
  'name'       => 'Email',
  'URL'        => 'mailto:$value',
  'options'    => 'ACFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
//  'tab|ACP'    => 'EMAIL',
  'textarea'   => array('rows' => '5', 'cols' => '58'),
  'trimlen|LF' => 50,
  'sort'       => false
);

$opts['fdd']['attribute_1'] = array(
  'default'    => '',
  'help|ACP'   => 'f=feedbackgever r=respondent',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => 'Soort',
  'values2'     => array(
    	'f' => 'feedback', 
    	'r' => 'respondent'
    	),
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sort'       => true
);


// MySQL column 4: blob - text

$opts['fdd']['token'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Limit 35 characters',
  'input'      => '',
  'maxlen'     => 35,
  'name'       => 'Update',
  'colattrs|LF' => 'style="color:#0000FF ;background-color:orange"',
  'URL'        => 'http://www.4u-change.com/4u-beheer/toets-update.php?token=$value',
  'URLdisp'    => 'Wijzig',
  'options'    => 'AFL',
  'size|ACP'   => 35,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
//  'tab|ACP'    => 'TOKEN',
  'sort'       => true
);
// MySQL column 6: string - varchar(35)


$opts['fdd']['completed'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Limit 17 characters',
  'input'      => '',
  'maxlen'     => 17,
  'name'       => 'Gereed',
  'strftimemask'   => '%d/%m/%Y - %H:%M',
  'options'    => 'AFL',
  'size|ACP'   => 17,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
//  'tab|ACP'    => 'COMPLETED',
  'sort'       => true
);
$main_table = 'lime_tokens_714972';
$join_table = 'token_persoon';
$join_description_1 = 'token_voornaam';
$join_description_2 = 'token_achternaam';
$join_column = 'token_persoon_token';

$opts['fdd']['attribute_7'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => '# FB',
  'colattrs|LF'  => 'align="center";',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 17: string - varchar(255)



$opts['fdd']['attribute_3'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'FB01',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.attribute_3 = $join_table.token_persoon_token'
    ),
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['attribute_4'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'FB02',
   'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.attribute_4 = $join_table.token_persoon_token'
    ),
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['attribute_8'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'FB03',
   'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.attribute_8 = $join_table.token_persoon_token'
    ),
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['attribute_9'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'FB04',
   'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.attribute_9 = $join_table.token_persoon_token'
    ),
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

require_once($INC_DIR.'includes/output/inc/phpMyEdit.class.php');

new phpMyEdit($opts);

require_once($INC_DIR.'includes/output/inc/footer2.php');

?>

<?php

/*

Cheat Sheet:

Global filters facilitate working with a subset of records:
$opts['filters'] = 'valid_user = "'.$valid_user.'" OR valid_user = "public"';
$opts['cgi']['persist'] = array('valid_user' => $valid_user );
Other filter examples:
$opts['filters'] = "column1 like '%11%' AND column2<17";
$opts['filters'] = "section_id = 9";
$opts['filters'] = "PMEtable0.sessions_count > 200";

Certain field options can be restricted to specific page modes (ACPVDFL).
For example: 'help|ACP' or 'trimlen|LF'

'php'          new option --- see ./doc/html/configuration.fields.php.html#AEN1201
               If the 'php' option is set, a file of that name is included (and executed) in place of a value.
               Behavior is the same as in triggers.

'colattrs'     user-defined table cell attributes: 'colattrs|LF'  => 'style="color:#ff0000;background-color:transparent"',
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
               'sql|LFV' => 'if(start_date > "", CONCAT(start_date, "%b %e %Y - %a"), "")'
               'sql|LFV' => 'if(FirstName <> "", CONCAT(LastName, ", ", FirstName), LastName)'
               'sql' => 'CONCAT(FROM_UNIXTIME(col_name, "%a %b %e %Y %h:%i %p"))'
               Transform an integer (Unix timestamp) to human readable date:
               'sql|LFV' => 'if($col_name > "", CONCAT(DATE_FORMAT($col_name, "%a %b %e %Y %h:%i %p")), "")',
'sqlw'         'sqlw' => 'UPPER($val_as)'
               'sqlw' => 'TRIM(UPPER($val_as))'
               'sqlw' => 'IF($val_qas = "", NULL, $val_qas)'
'strip_tags'   true or false - whether to strip_tags() from displayed data
'tab|ACP'      see documentation
'textarea'     rows/cols - TEXTAREA attributes in ACP modes
'trimlen'      maximum length of string content to display (usually 'trimlen|LF')
'URL'          used to make a field 'clickable' in the display e.g.: 'mailto:$value', 'http://$value' or '$page?stuff';
'URLtarget'    HTML target link specification, for example: _blank (see documentation)
'values'       $opts['fdd']['col_name']['values'] = array('0', '1', '2', '3');
'values2'      $opts['fdd']['col_name']['values2'] = array('0' => 'No', '1' => 'Yes');

Extract 'values' from a different table (initialization):

$opts['fdd']['field_name'] = array(
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
    'filters'     => 'col_name = "criteria"',
    'orderby'     => 'yet_another_col')
);

Extract 'values' from a different table (post-initialization may enhance readability):

$opts['fdd']['col_name']['values']['db'] = 'databaseName';
$opts['fdd']['col_name']['values']['table'] = 'extractTable';
$opts['fdd']['col_name']['values']['column'] = 'extractColumn';
$opts['fdd']['col_name']['values']['description']['divs']['-1'] = ', ';
$opts['fdd']['col_name']['values']['description']['columns']['0'] = 'desc_column_0';
$opts['fdd']['col_name']['values']['description']['divs']['0'] = ', ';
$opts['fdd']['col_name']['values']['description']['columns']['1'] = 'desc_column_1';
$opts['fdd']['col_name']['values']['filters'] = 'id = "something" ';
$opts['fdd']['col_name']['values']['orderby'] = 'another_column';

Dummy fields can be utilized with MySQL functions, or to display calculations:
$opts['fdd']['dummy1'] = array (
   'name'    => 'Dummy Field',
   'sql'     => 'CONCAT(first_name, " ", last_name)',
   'options' => 'VDL',
   'escape'  => false,
   'sort'    => true
);

Javascript validation for entry of 0-9 in a numeric field:
$opts['fdd']['col_name']['js']['required'] = true;
$opts['fdd']['col_name']['js']['regexp'] = '/^[0-9]*$/';
$opts['fdd']['col_name']['js']['hint'] = 'Please enter only numbers in the "col_name" field.';

CGI variables:
$opts['cgi']['overwrite']['DateCreated'] = date('Y-m-d');
$opts['cgi']['persist'] = $some_variable;
$opts['cgi']['persist'] = array('article_id' => $article_id, 'session_id' => $session_id);

Notification examples:
$opts['notify']['from']   = 'ed.mol@4u-change.com';
$opts['notify']['prefix'] = $_SERVER['REQUEST_URI'].' - ';
$opts['notify']['wrap']   = '72';
$opts['notify']['insert'] = 'ed.mol@4u-change.com';
$opts['notify']['update'] = 'ed.mol@4u-change.com';
$opts['notify']['delete'] = 'ed.mol@4u-change.com';
$opts['notify']['all']    = 'ed.mol@4u-change.com'; // (insert, update, and, delete)

*/

?>

