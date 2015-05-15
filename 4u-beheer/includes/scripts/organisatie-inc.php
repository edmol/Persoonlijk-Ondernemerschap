<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// Suggested filename: my_organisaties.php
// Fri, 26 Apr 2013 17:58:32 +0200
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// potoets.organisaties

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

$opts = array();

$opts['tb'] = 'organisaties';

$opts['key'] = 'bid'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('bid');

$opts['inc'] = 30;

$opts['options'] = 'ACPVDFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php'); // Database logon + form navigation config + variables used by the page header

require_once('includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 1; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];

/*

This bug note can be disabled by setting: $cfg_utf8_bug_note = 0;
If a MySQL v4.1 CHARSET is UTF8, a PHP v4.x mysql_field_len() function
may return incorrect values for the length of VARCHAR columns.
Table schema is provided below so that VARCHAR field lengths can be
compared with the 'maxlen' settings in the following field arrays.

CREATE TABLE `organisaties` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bedrijfsnaam` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `contactpersoon` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adres` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opdrachtnemer` int(11) NOT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `bedrijfsnaam` (`bedrijfsnaam`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

*/

// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

$opts['fdd']['bid'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen'     => 11,
  'name'       => 'Bid',
  'options'    => 'VD',
  'select'     => 'T',
  'size|ACP'   => 11,
//  'tab|ACP'    => 'BID',
  'sort'       => true
);
// MySQL column 0: int - int(11)


$opts['fdd']['bedrijfsnaam'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 64 characters',
  'input'      => '',
  'maxlen'     => 64,
  'name'       => 'Bedrijfsnaam',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 1: string - varchar(64)
$opts['fdd']['bedrijfsnaam']['js']['required'] = true;


$opts['fdd']['contactpersoon'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 64 characters',
  'input'      => '',
  'maxlen'     => 64,
  'name'       => 'Contactpersoon',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 2: string - varchar(64)


$opts['fdd']['email'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 64 characters',
  'input'      => '',
  'maxlen'     => 64,
  'name'       => 'Email',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 3: string - varchar(64)
$opts['fdd']['email']['URL'] = 'mailto:$value';


$opts['fdd']['adres'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 64 characters',
  'input'      => '',
  'maxlen'     => 64,
  'name'       => 'Adres',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 4: string - varchar(64)


$opts['fdd']['opdrachtnemer'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'help|ACP'   => 'Limit 11 digits',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'name'       => 'Opdrachtnemer',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 5: int - int(11)


// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once('includes/output/inc/phpMyEdit.class.php');

new phpMyEdit($opts);

require_once('includes/output/inc/footer2.php');

?>
