<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// Suggested filename: my_personen.php
// Fri, 26 Apr 2013 16:46:43 +0200
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// potoets.personen

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

$opts = array();

$opts['tb'] = 'personen';

$opts['key'] = 'persoon_id'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('persoon_id');

$opts['inc'] = 30;

$opts['options'] = 'ACPVDFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php'); // Database logon + form navigation config + variables used by the page header

require_once('includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 1; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];

$opts['filters'] = "persoon_voornaam != ''";

/*

This bug note can be disabled by setting: $cfg_utf8_bug_note = 0;
If a MySQL v4.1 CHARSET is UTF8, a PHP v4.x mysql_field_len() function
may return incorrect values for the length of VARCHAR columns.
Table schema is provided below so that VARCHAR field lengths can be
compared with the 'maxlen' settings in the following field arrays.

CREATE TABLE `personen` (
  `persoon_id` int(11) NOT NULL AUTO_INCREMENT,
  `persoon_voornaam` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `persoon_achternaam` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `persoon_actief` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `persoon_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `persoon_bedrijf` int(11) NOT NULL,
  `persoon_geslacht` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `persoon_functie` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`persoon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=566 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

*/

// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

$opts['fdd']['persoon_id'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen'     => 11,
  'name'       => 'Persoon Id',
  'options'    => 'VD',
  'select'     => 'T',
  'size|ACP'   => 11,
//  'tab|ACP'    => 'PERSOON ID',
  'sort'       => true
);
// MySQL column 0: int - int(11)


$opts['fdd']['persoon_voornaam'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 80 characters',
  'input'      => '',
  'maxlen'     => 80,
  'name'       => 'Voornaam',
  'colattrs'  => 'align="center"',
  'required'   => true,
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 1: string - varchar(80)
$opts['fdd']['persoon_voornaam']['js']['required'] = true;


$opts['fdd']['persoon_achternaam'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 80 characters',
  'input'      => '',
  'maxlen'     => 80,
  'name'       => 'Achternaam',
  'colattrs'  => 'align="center"',
  'required'   => true,
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 2: string - varchar(80)
$opts['fdd']['persoon_achternaam']['js']['required'] = true;


$opts['fdd']['persoon_actief'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 1 characters',
  'input'      => '',
  'maxlen'     => 1,
  'name'       => 'Actief',
  'colattrs'  => 'align="center"',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 1,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 3: string - char(1)
$opts['fdd']['persoon_actief']['js']['required'] = true;


$opts['fdd']['persoon_email'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 80 characters',
  'input'      => '',
  'maxlen'     => 80,
  'name'       => 'Email',
  'colattrs'  => 'align="center"',
  'required'   => true,
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 4: string - varchar(80)
$opts['fdd']['persoon_email']['URL'] = 'mailto:$value';

$main_table = 'personen';
$join_table = 'organisaties';
$join_description_1 = 'bedrijfsnaam';
$join_column = 'bid';
$opts['fdd']['persoon_bedrijf'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'help|ACP'   => 'Limit 11 digits',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'name'       => 'Bedrijf',
  'colattrs'  => 'align="center"',
  'required'   => true,
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.persoon_bedrijf = $join_table.bid'
    ),
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 5: int - int(11)


$opts['fdd']['persoon_geslacht'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 1 characters',
  'input'      => '',
  'maxlen'     => 1,
  'name'       => 'Geslacht',
  'colattrs'  => 'align="center"',
  'required'   => true,
   'values2'     => array(
    	'm' => 'man', 
    	'v' => 'vrouw'
    	),
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 1,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 6: string - varchar(1)


$opts['fdd']['persoon_functie'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 80 characters',
  'input'      => '',
  'maxlen'     => 80,
  'name'       => 'Functie',
  'colattrs'  => 'align="center"',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 7: string - varchar(80)


// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once('includes/output/inc/phpMyEdit.class.php');

new phpMyEdit($opts);

require_once('includes/output/inc/footer2.php');

?>
