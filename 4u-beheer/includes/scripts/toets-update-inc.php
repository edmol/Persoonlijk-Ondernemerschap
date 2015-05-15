<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// Suggested filename: my_lime_survey_714972.php
// Thu, 21 Mar 2013 09:01:15 +0100
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// potoets.lime_survey_714972

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

$opts = array();

$opts['tb'] = 'lime_survey_714972';

$opts['key'] = 'id'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('id');

$opts['inc'] = 99;

$opts['options'] = 'ACVFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php');

require_once($INC_DIR.'includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 0; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
$opts['cgi']['persist'] = array('token' => $token);

$opts['filters'] = 'token = "'.$token.'"';
echo '=> Wijzigen van antwoorden op een of meerdere stellingen van een specifiek gekozen persoon - kies wijzig';

/*

This bug note can be disabled by setting: $cfg_utf8_bug_note = 0;
If a MySQL v4.1 CHARSET is UTF8, a PHP v4.x mysql_field_len() function
may return incorrect values for the length of VARCHAR columns.
Table schema is provided below so that VARCHAR field lengths can be
compared with the 'maxlen' settings in the following field arrays.

CREATE TABLE `lime_survey_714972` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int(11) DEFAULT NULL,
  `startlanguage` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `startdate` datetime NOT NULL,
  `datestamp` datetime NOT NULL,
  `ipaddr` text COLLATE utf8_unicode_ci,
  `714972X2X101` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X102` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X103` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X104` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X105` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X106` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X107` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X108` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X109` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X110` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X111` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X112` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X113` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X114` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X115` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X116` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X117` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X118` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X119` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X120` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X121` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X122` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X123` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X124` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X125` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X126` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X127` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X128` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X129` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X130` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X131` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X132` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X133` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X134` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X135` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X136` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X137` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X138` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X139` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X140` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X141` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X142` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X143` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X144` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X145` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X146` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X147` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X148` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X149` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X150` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X151` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X152` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X153` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X154` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X155` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X156` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X157` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X158` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X159` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X160` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X161` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X162` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X163` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X164` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X165` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X166` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X167` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X168` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X169` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X170` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X171` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X172` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X173` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X174` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X175` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X176` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X177` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X178` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X179` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X180` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X181` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X182` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X183` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X184` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X185` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X186` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X187` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X188` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X189` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X190` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X191` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X192` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X193` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X194` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X195` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X196` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X197` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X198` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X199` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `714972X2X200` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

*/

// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

$opts['fdd']['id'] = array(
//  'colattrs|LF'   => '',
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen'     => 11,
  'name'       => 'Id',
  'options'    => 'VD',
  'select'     => 'T',
  'size|ACP'   => 11,
//  'tab|ACP'    => 'ID',
  'sort'       => true
);
// MySQL column 0: int - int(11)

$opts['fdd']['token'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 36,
  'name'       => 'ToetsID',
  'colattrs|LF' => 'style="color:#0000FF ;background-color:orange"',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 36,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 1: string - varchar(36)

$opts['fdd']['714972X2X101'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '1: Open Staan',
  'tab'        => array('name' => '1.Regenboog zien', 'default' => true), 
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 8: string - varchar(5)


$opts['fdd']['714972X2X102'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '2: Afsluiten',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 9: string - varchar(5)


$opts['fdd']['714972X2X103'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '3: Verlangen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 10: string - varchar(5)


$opts['fdd']['714972X2X104'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '4: Verwachting',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 11: string - varchar(5)


$opts['fdd']['714972X2X105'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '5:  Missie leidend',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 12: string - varchar(5)


$opts['fdd']['714972X2X106'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '6: Operatie leidend',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 13: string - varchar(5)


$opts['fdd']['714972X2X107'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '7: Waarden bepalen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 14: string - varchar(5)


$opts['fdd']['714972X2X108'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '8: Ongerust blijven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 15: string - varchar(5)


$opts['fdd']['714972X2X109'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '9: Intenties uitspreken',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 16: string - varchar(5)


$opts['fdd']['714972X2X110'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '10 : Afwachten',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 17: string - varchar(5)

$opts['fdd']['714972X2X111'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '11 : Bereid zijn om',
  'tab'        => array('name' => '2.Regie voeren'),
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 18: string - varchar(5)


$opts['fdd']['714972X2X112'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '12 : Beperktheid',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 19: string - varchar(5)


$opts['fdd']['714972X2X113'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '13 : Vertrouwen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 20: string - varchar(5)


$opts['fdd']['714972X2X114'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '14 : Wantrouwen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 21: string - varchar(5)


$opts['fdd']['714972X2X115'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '15 : Leiderschap tonen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 22: string - varchar(5)


$opts['fdd']['714972X2X116'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '16 : Vaag blijven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 23: string - varchar(5)


$opts['fdd']['714972X2X117'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '17 : Dialoog aangaan',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 24: string - varchar(5)


$opts['fdd']['714972X2X118'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '18 : Angst denken en doen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 25: string - varchar(5)


$opts['fdd']['714972X2X119'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '19 : Perspectief zien',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 26: string - varchar(5)


$opts['fdd']['714972X2X120'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '20 : (Ver)oordelen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['714972X2X121'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '21 : Duidelijk zijn',
  'tab'        => array('name' => '3.Richting bepalen'),
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 28: string - varchar(5)


$opts['fdd']['714972X2X122'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '22 : Verwarring zaaien',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 29: string - varchar(5)


$opts['fdd']['714972X2X123'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '23 : Verwondering',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 30: string - varchar(5)


$opts['fdd']['714972X2X124'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '24 : Frustratie',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 31: string - varchar(5)


$opts['fdd']['714972X2X125'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '25 : Aanleiding benoemen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 32: string - varchar(5)


$opts['fdd']['714972X2X126'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '26 : Afgeleid zijn',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 33: string - varchar(5)


$opts['fdd']['714972X2X127'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '27 : Keuzes maken',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 34: string - varchar(5)


$opts['fdd']['714972X2X128'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '28 : Blijven vragen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 35: string - varchar(5)


$opts['fdd']['714972X2X129'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '29 : Ambities delen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 36: string - varchar(5)


$opts['fdd']['714972X2X130'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '30 : Terughoudend zijn',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X131'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '31 : Accepteren',
  'tab'        => array('name' => '4.Rust'),
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 38: string - varchar(5)


$opts['fdd']['714972X2X132'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '32 : Ontkennen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 39: string - varchar(5)


$opts['fdd']['714972X2X133'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '33 : Verademing',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 40: string - varchar(5)


$opts['fdd']['714972X2X134'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '34 : Teleurstelling',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 41: string - varchar(5)


$opts['fdd']['714972X2X135'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '35 : Focus aanbrengen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 42: string - varchar(5)


$opts['fdd']['714972X2X136'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '36 : Verdeeld zijn',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 43: string - varchar(5)


$opts['fdd']['714972X2X137'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '37 : Grenzen aangeven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 44: string - varchar(5)


$opts['fdd']['714972X2X138'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '38 : Pijn vermijden',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 45: string - varchar(5)


$opts['fdd']['714972X2X139'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '39 : Prioriteiten stellen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 46: string - varchar(5)


$opts['fdd']['714972X2X140'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '40 : Uitsloven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X141'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '41 : Loslaten',
  'tab'        => array('name' => '5.Ruimte creëren'),
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 48: string - varchar(5)


$opts['fdd']['714972X2X142'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '42 : Vasthouden',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 49: string - varchar(5)


$opts['fdd']['714972X2X143'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '43 : Veiligheid',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 50: string - varchar(5)


$opts['fdd']['714972X2X144'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '44 : Onzekerheid',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 51: string - varchar(5)


$opts['fdd']['714972X2X145'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '45 : Commitment geven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 52: string - varchar(5)


$opts['fdd']['714972X2X146'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '46 : Onduidelijk blijven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 53: string - varchar(5)


$opts['fdd']['714972X2X147'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '47 : Initiatieven nemen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 54: string - varchar(5)


$opts['fdd']['714972X2X148'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '48 : Wegkijken',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 55: string - varchar(5)


$opts['fdd']['714972X2X149'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '49 : Mogelijkheden onderzoeken',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X150'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '50 : Bedreigingen zien',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 57: string - varchar(5)


$opts['fdd']['714972X2X151'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '51 : Analyseren',
  'tab'        => array('name' => '6. Rendement'),
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['714972X2X152'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '52 : Veronderstellen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X153'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '53 : Verantwoordelijkheid',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X154'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '54 : Miskenning',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X155'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '55 : Kwaliteit leveren',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X156'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '56 : Brandjes blussen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X157'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '57 : Doelen stellen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X158'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '58 : Meelopen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 65: string - varchar(5)


$opts['fdd']['714972X2X159'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '59 : Strategie bepalen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 66: string - varchar(5)
$opts['fdd']['714972X2X160'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '60 : Overleven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X161'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '61 : Capaciteiten benutten',
  'tab'        => array('name' => '7. Resultaten'),
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X162'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '62 : Onmacht',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X163'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '63 : Vermogen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X164'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '64 : Gelatenheid',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X165'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '65 : Communicatie',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 72: string - varchar(5)
$opts['fdd']['714972X2X166'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '66 : Rumour',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 73: string - varchar(5)
$opts['fdd']['714972X2X167'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '67 : Handelen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 74: string - varchar(5)
$opts['fdd']['714972X2X168'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '68 : Weerstand bieden',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 75: string - varchar(5)
$opts['fdd']['714972X2X169'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '69 : Prestaties leveren',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X170'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '70 : Aversie tonen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X171'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '71 : Open zijn',
  'tab'        => array('name' => '8.Reflectie'),
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X172'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '72 : Gesloten zijn',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X173'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '73 : Voldoening',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X174'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '74 : Ontevredenheid',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X175'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '75 : Passend belonen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X176'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '76 : Bestraffen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X177'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '77 : Spiegelen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X178'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '78 : Vinger wijzen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X179'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '79 : Bewust worden',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X180'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '80 : Onbewust blijven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X181'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '81 : Respect hebben',
  'tab'        => array('name' => '9.Relaties'),
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X182'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '82 : Onwetend zijn',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 89: string - varchar(5)


$opts['fdd']['714972X2X183'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '83 : Verbinding',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X184'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '84 : Eenzaamheid',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 91: string - varchar(5)


$opts['fdd']['714972X2X185'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '85 : begrijpen en afstemmen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 92: string - varchar(5)


$opts['fdd']['714972X2X186'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '86 : Ieder voor zich',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 93: string - varchar(5)


$opts['fdd']['714972X2X187'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '87 : Waardering geven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X188'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '88 : Schuld geven',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 95: string - varchar(5)


$opts['fdd']['714972X2X189'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '89 : Samenwerken',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 96: string - varchar(5)


$opts['fdd']['714972X2X190'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '90 : Ontwijken',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X191'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '91 : Discipline hebben',
  'tab'        => array('name' => '10.Ruggengraat'),
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 98: string - varchar(5)


$opts['fdd']['714972X2X192'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '92 : Terugvallen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 99: string - varchar(5)


$opts['fdd']['714972X2X193'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '93 : Volledig betrokken',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 100: string - varchar(5)


$opts['fdd']['714972X2X194'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '94 : Onverschilligheid',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 101: string - varchar(5)


$opts['fdd']['714972X2X195'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '95 : Voorbeeld gedrag',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 102: string - varchar(5)


$opts['fdd']['714972X2X196'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '96 : Voorbeeld gedrag',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 103: string - varchar(5)


$opts['fdd']['714972X2X197'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '97 : Zelf bewegen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 104: string - varchar(5)


$opts['fdd']['714972X2X198'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '98 : Mee bewegen',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 105: string - varchar(5)


$opts['fdd']['714972X2X199'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '99 : Onafhankelijk',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['714972X2X200'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => '100 : Afhankelijk',
  'options'    => 'ACPVD',
  'values'     => array('n','i','s','m','a'),
  'help|ACP'   => 'n=nooit i=incidenteel s=soms m=meestal a=altijd',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 76: string - varchar(5)
// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

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

