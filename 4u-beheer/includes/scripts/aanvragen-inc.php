<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// Suggested filename: my_ios_aanvragen.php
// Sat, 27 Apr 2013 14:49:25 +0200
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// potoets.ios_aanvragen

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

$opts = array();

$opts['tb'] = 'ios_aanvragen';

$opts['key'] = 'aanvraag_id'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('aanvraag_id');

$opts['inc'] = 10;

$opts['options'] = 'ACPVFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php'); // Database logon + form navigation config + variables used by the page header

require_once($INC_DIR.'includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 1; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];

/*

This bug note can be disabled by setting: $cfg_utf8_bug_note = 0;
If a MySQL v4.1 CHARSET is UTF8, a PHP v4.x mysql_field_len() function
may return incorrect values for the length of VARCHAR columns.
Table schema is provided below so that VARCHAR field lengths can be
compared with the 'maxlen' settings in the following field arrays.

CREATE TABLE `ios_aanvragen` (
  `aanvraag_id` int(11) NOT NULL AUTO_INCREMENT,
  `aanvraag_opdrachtgever` int(11) NOT NULL,
  `aanvraag_omschrijving` varchar(40) NOT NULL,
  `aanvraag_respondent` int(11) NOT NULL,
  `aanvraag_feedback01` int(11) NOT NULL,
  `aanvraag_feedback02` int(11) NOT NULL,
  `aanvraag_feedback03` int(11) NOT NULL,
  `aanvraag_feedback04` int(11) NOT NULL,
  `aanvraag_vragenlijst` int(11) NOT NULL,
  `aanvraag_verwerken` varchar(1) NOT NULL DEFAULT 'N',
  `aanvraag_wijzigen` varchar(1) NOT NULL DEFAULT 'N',
  `aanvraag_status` varchar(1) DEFAULT '0',
  PRIMARY KEY (`aanvraag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

*/

// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

$opts['fdd']['aanvraag_id'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen'     => 11,
  'name'       => 'Aanvraag Id',
  'options'    => 'VD',
  'select'     => 'T',
  'size|ACP'   => 11,
//  'tab|ACP'    => 'AANVRAAG ID',
  'sort'       => true
);
// MySQL column 0: int - int(11)

$main_table = 'ios_aanvragen';
$join_table = 'organisaties';
$join_description_1 = 'bedrijfsnaam';
$join_column = 'bid';

$opts['fdd']['aanvraag_opdrachtgever'] = array(
  'default'    => '',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'name'       => 'Opdrachtgever',
  'colattrs'  => 'align="center"', 	
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.aanvraag_opdrachtgever = $join_table.bid'
    ),
  'options'    => 'APVFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 1: int - int(11)
$opts['fdd']['aanvraag_opdrachtgever']['js']['required'] = true;
// $opts['fdd']['aanvraag_opdrachtgever']['js']['regexp'] = '/^[0-9]*$/';
// $opts['fdd']['aanvraag_opdrachtgever']['js']['hint'] = 'Please enter only numbers in the "Aanvraag Opdrachtgever" field.';


$opts['fdd']['aanvraag_omschrijving'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Omschrijving',
  'colattrs'  => 'align="center"', 	
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 2: string - varchar(40)
$opts['fdd']['aanvraag_omschrijving']['js']['required'] = true;

$main_table = 'ios_aanvragen';
$join_table = 'personen';
$join_description_1 = 'persoon_voornaam';
$join_description_2 = 'persoon_achternaam';
$join_column = 'persoon_id';

$opts['fdd']['aanvraag_respondent'] = array(
   'colattrs|LF'  => 'style="color:#0000FF ;background-color:lightblue"',
  'default'    => '',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'name'       => 'Respondent',
 'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.aanvraag_respondent = $join_table.persoon_id'
    ), 
  'options'    => 'APVFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 3: int - int(11)
$opts['fdd']['aanvraag_respondent']['js']['required'] = true;
// $opts['fdd']['aanvraag_respondent']['js']['regexp'] = '/^[0-9]*$/';
// $opts['fdd']['aanvraag_respondent']['js']['hint'] = 'Please enter only numbers in the "Aanvraag Respondent" field.';


$opts['fdd']['aanvraag_feedback01'] = array(
  'colattrs'  => 'align="center"', 	
  'default'    => '',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'name'       => 'Feedback01',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.aanvraag_feedback01 = $join_table.persoon_id'
    ),
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 4: int - int(11)


$opts['fdd']['aanvraag_feedback02'] = array(
  'colattrs'  => 'align="center"', 	
  'default'    => '',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'name'       => 'Feedback02',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.aanvraag_feedback02 = $join_table.persoon_id'
    ),
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 5: int - int(11)


$opts['fdd']['aanvraag_feedback03'] = array(
 'colattrs'  => 'align="center"', 	
  'default'    => '',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'name'       => 'Feedback03',
   'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.aanvraag_feedback03 = $join_table.persoon_id'
    ),
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 6: int - int(11)


$opts['fdd']['aanvraag_feedback04'] = array(
  'colattrs'  => 'align="center"', 	
  'default'    => '',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'name'       => 'Feedback04',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.aanvraag_feedback04 = $join_table.persoon_id'
    ),
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 7: int - int(11)


$opts['fdd']['aanvraag_vragenlijst'] = array(
  'colattrs'  => 'align="center"', 	
  'default'    => '',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'name'       => 'Vragenlijst',
  'values2'     => array(
    	'1' => 'Standaard', 
    	'2' => 'ZZP'
    	),
  'options'    => 'APVFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 8: int - int(11)


$opts['fdd']['aanvraag_verwerken'] = array(
  'default'    => 'N',
  'colattrs'  => 'align="center"', 
  'input'      => '',
  'maxlen'     => 3,
   'values2'     => array(
    	'J' => 'Ja', 
    	'N' => 'Nee'
    	),
  'name'       => 'Verwerk wijzigingen',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 3,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 9: string - varchar(1)



// MySQL column 10: string - varchar(1)


$opts['fdd']['aanvraag_status'] = array(
  'default'    => 'Gereed',
  'input'      => '',
  'maxlen'     => 3,
  'name'       => 'Status Informatie',
  'colattrs|LF'  => 'style="color:#0000FF ;background-color:orange";align="center" ',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 3,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['aanvraag_opruimen'] = array(
  'default'    => 'N',
  'input'      => '',
  'maxlen'     => 3,
  'name'       => 'Verwijderen',
   'values2'     => array(
    	'J' => 'Ja', 
    	'N' => 'Nee'
    	),
  'colattrs|LF'  => 'style="color:#0000FF ;background-color:red"',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 3,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 11: string - varchar(1)


// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once($INC_DIR.'includes/output/inc/phpMyEdit.class.php');

new phpMyEdit($opts);

require_once($INC_DIR.'includes/output/inc/footer2.php');

?>
