<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// Suggested filename: form_lime_tokens_714972.php
// Sat, 02 Feb 2013 18:45:26 +0100
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// potoets.lime_tokens_714972

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

$opts = array();

$opts['tb'] = 'lime_tokens_714972';

$opts['key'] = 'tid'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('tid');

// Sorting field(s)
$opts['sort_field'] = array('firstname');

$opts['inc'] = 35;

$opts['options'] = 'VFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php'); // Database logon + form navigation config + variables used by the page header

require_once($INC_DIR.'includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 1; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
echo '=> Individuele Ontwikkel Spiegel - Bekijk Individuele Ontwikkel Spiegel (oranje) via het WEB';

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

*/
$opts['filters'] = "attribute_1 = 'r' AND completed != 'N' AND attribute_3 !=''";
// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

$opts['fdd']['tid'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen'     => 11,
  'name'       => 'Tid',
  'options'    => 'VD',
  'select'     => 'T',
  'size|ACP'   => 11,
//  'tab|ACP'    => 'TID',
  'sort'       => true
);
// MySQL column 1: string - varchar(50)


$opts['fdd']['firstname'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 40 characters',
  'input'      => '',
  'maxlen'     => 40,
  'name'       => 'Voornaam',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 40,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 2: string - varchar(40)


$opts['fdd']['lastname'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 40 characters',
  'input'      => '',
  'maxlen'     => 40,
  'name'       => 'Achternaam',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 40,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 3: string - varchar(40)

$opts['fdd']['token'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 35 characters',
  'input'      => '',
  'maxlen'     => 50,
  'name'       => 'Maak SPIEGEL',
  'colattrs|LF'  => 'style="color:#0000FF ;background-color:orange"',
  'URL'      => 'http://www.4u-change.com/4u-beheer/fb-toonweb.php?dir=$value',
  'URLtarget' => '_blank',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 50,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 6: string - varchar(35)



$opts['fdd']['completed'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 17 characters',
  'input'      => '',
  'maxlen'     => 17,
  'name'       => 'Gereed',
  'strftimemask'   => '%A - %d %B %Y - %H:%M',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 17,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['attribute_1'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Soort',
  'values2'     => array(
    	'f' => 'feedback', 
    	'r' => 'respondent'
    	),
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['attribute_7'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Aantal FB',
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
  'name'       => 'FB-gever 1',
  'options'    => 'V',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 19: string - varchar(255)


$opts['fdd']['attribute_4'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'FB-gever 2',
  'options'    => 'V',
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
  'name'       => 'FB-gever 3',
  'options'    => 'V',
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
  'name'       => 'FB-gever 4',
  'options'    => 'V',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 23: string - varchar(255)


// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once($INC_DIR.'includes/output/inc/phpMyEdit.class.php');

new phpMyEdit($opts);

require_once($INC_DIR.'includes/output/inc/footer2.php');

?>
