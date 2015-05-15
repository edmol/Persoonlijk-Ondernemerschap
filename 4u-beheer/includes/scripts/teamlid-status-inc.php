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

$opts['key'] = 'token'; // Primary key checked

$opts['key_type'] = '';

// Sorting field(s)

$opts['sort_field'] = array('-completed');

$opts['inc'] = 50;

$opts['options'] = 'VFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php');

require_once($INC_DIR.'includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 0; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
echo '=> TEAM Ontwikkel Spiegel - Opvragen Status Gereed/Niet Gereed van de TEAM Ontwikkel Spiegels.';

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
$opts['sort_field'] = '-completed';

$opts['filters'] = "attribute_3 = ''";
// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

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

$opts['fdd']['token'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 35 characters',
  'input'      => '',
  'maxlen'     => 35,
  'name'       => 'Token',
  'options'    => 'V',
  'select'     => 'T',
  'size|ACP'   => 35,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['completed'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 17 characters',
  'input'      => '',
  'maxlen'     => 25,
  'name'       => 'Gereed',
  'strftimemask'   => '%A - %d %B %Y - %H:%M',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 25,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['email'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 196,605 characters',
  'input'      => '',
  'name'       => 'Email',
  'URL'        => 'mailto:$value', 
  'options'    => 'VFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '58'),
  'trimlen|LF' => 50,
  'sort'       => false
);

// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once($INC_DIR.'includes/output/inc/phpMyEdit.class.php');

new phpMyEdit($opts);

require_once($INC_DIR.'includes/output/inc/footer2.php');

?>
