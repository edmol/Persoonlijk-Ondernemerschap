<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// Suggested filename: my_mwb.php
// Mon, 11 Feb 2013 18:29:35 +0100
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// potoets.mwb

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

$opts = array();

$opts['tb'] = 'mwb';

$opts['key'] = 'mwb_id'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('mwb-id');

$opts['inc'] = 10;

$opts['options'] = 'ACVFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php'); // Database logon + form navigation config + variables used by the page header

require_once($INC_DIR.'includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 0; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];

echo '=> Organisatie Ontwikkel Spiegel - Aanvraag van een ROOS rapportage voor een organisatie';

/*

This bug note can be disabled by setting: $cfg_utf8_bug_note = 0;
If a MySQL v4.1 CHARSET is UTF8, a PHP v4.x mysql_field_len() function
may return incorrect values for the length of VARCHAR columns.
Table schema is provided below so that VARCHAR field lengths can be
compared with the 'maxlen' settings in the following field arrays.

CREATE TABLE `mwb` (
  `mwb_id` int(11) NOT NULL AUTO_INCREMENT,
  `mwb_naam` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mwb_dir` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mwb_aantal` int(4) DEFAULT NULL,
  `advies_teamnum` int(11) DEFAULT NULL,
  `advies_p1` text COLLATE utf8_unicode_ci,
 	 `advies_p12` text COLLATE utf8_unicode_ci,
 	 `advies_p13` text COLLATE utf8_unicode_ci,
  	`advies_p131` text COLLATE utf8_unicode_ci,
  `advies_p24` text COLLATE utf8_unicode_ci,
  `advies_p41` text COLLATE utf8_unicode_ci,
   `advies_p42` text COLLATE utf8_unicode_ci,
    `advies_p43` text COLLATE utf8_unicode_ci,
     `advies_p44` text COLLATE utf8_unicode_ci,
      `advies_p45` text COLLATE utf8_unicode_ci,
       `advies_p46` text COLLATE utf8_unicode_ci,
        `advies_p47` text COLLATE utf8_unicode_ci,
         `advies_p48` text COLLATE utf8_unicode_ci,
          `advies_p49` text COLLATE utf8_unicode_ci,
           `advies_p410` text COLLATE utf8_unicode_ci,
   `advies_p51` text COLLATE utf8_unicode_ci,
  `advies_p52` text COLLATE utf8_unicode_ci,
  `advies_p53` text COLLATE utf8_unicode_ci,
  `advies_p54` text COLLATE utf8_unicode_ci,
  `advies_p55` text COLLATE utf8_unicode_ci,
  `advies_p61` text COLLATE utf8_unicode_ci,
  `advies_p62` text COLLATE utf8_unicode_ci,
  `advies_p63` text COLLATE utf8_unicode_ci,
  `advies_p64` text COLLATE utf8_unicode_ci,
  `advies_p65` text COLLATE utf8_unicode_ci,
    `advies_p71` text COLLATE utf8_unicode_ci,
   `advies_p72` text COLLATE utf8_unicode_ci,
  `advies_p73` text COLLATE utf8_unicode_ci,
  `advies_p74` text COLLATE utf8_unicode_ci,
`advies_p75` text COLLATE utf8_unicode_ci,
  `advies_p76` text COLLATE utf8_unicode_ci,
  `advies_p81` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mwb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

*/

// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

$opts['fdd']['mwb_id'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen'     => 11,
  'name'       => 'Mwb Id',
  'options'    => 'VD',
  'select'     => 'T',
  'size|ACP'   => 11,
//  'tab|ACP'    => 'MWB ID',
  'sort'       => true
);
// MySQL column 0: int - int(11)


$opts['fdd']['mwb_naam'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 40,
  'name'       => 'Organisatie',
   'values'     => array(
    'db'          => 'potoets',
    'table'       => 'organisaties',
    'column'      => 'bedrijfsnaam'),
  'options'    => 'AVFL',
  'select'     => 'T',
  'size|ACP'   => 40,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$join_description_1 = 'fac_voornaam';
$join_description_2 = 'fac_achternaam';

$opts['fdd']['advies_teamnum'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'help|ACP'   => '',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'required'	=> true,
  'name'       => 'Voer begeleider in',
  'options'    => 'ACVDFL',
  'select'     => 'T',
  'size|ACP'   => 11,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'values'	=> array(
  	'table'	=> 'facilitators',
  	'column' => 'fac_id',
  	'description' => array(
  		'columns'	=> array($join_description_1, $join_description_2),
  		'divs'	=> array(' ')
  		))
);
$opts['fdd']['advies_p1'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst onder gegevens veranderbegeleider',
  'input'      => '',
  'name'       => 'Veranderbegeleider',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Veranderbegeleider hoofdpagina',
  'textarea'   => array('rows' => '3', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 3: blob - text


$opts['fdd']['advies_p12'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst bij uitleg wat is persoonlijk ondernemerschap',
  'input'      => '',
  'name'       => 'Wat is PO?',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Inleiding',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 4: blob - text


$opts['fdd']['advies_p13'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst bij constructieve indicatoren',
  'input'      => '',
  'name'       => 'Constructief',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 5: blob - text


$opts['fdd']['advies_p131'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst bij destructieve indicatoren',
  'input'      => '',
  'name'       => 'Destructief',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 6: blob - text


$opts['fdd']['advies_p24'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst bij uitleg rapportage',
  'input'      => '',
  'name'       => 'Uitleg rapport',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Uitleg rapport',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 7: blob - text


$opts['fdd']['advies_p41'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Regenboog zien',
  'input'      => '',
  'name'       => 'Regenboog zien',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => '10 R stappen',
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p42'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Regie voeren',
  'input'      => '',
  'name'       => 'Regie voeren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p43'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Richting bepalen',
  'input'      => '',
  'name'       => 'Richting bepalen',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p44'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Rust geven',
  'input'      => '',
  'name'       => 'Rust geven',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p45'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Ruimte creeren',
  'input'      => '',
  'name'       => 'Ruimte creeren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p46'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Rendement vaststellen',
  'input'      => '',
  'name'       => 'Rendement vaststellen',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p47'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Resultaten boeken',
  'input'      => '',
  'name'       => 'Resultaten boeken',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p48'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Reflectie geven',
  'input'      => '',
  'name'       => 'Reflectie geven',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p49'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Relaties onderhouden',
  'input'      => '',
  'name'       => 'Relaties onderhouden',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p410'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek Ruggengraat tonen',
  'input'      => '',
  'name'       => 'Ruggengraat tonen',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 8: blob - text


$opts['fdd']['advies_p51'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na gevoel',
  'input'      => '',
  'name'       => 'Gevoel',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Succes-Faalfactoren',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 9: blob - text


$opts['fdd']['advies_p52'] = array(
  'default'    => '',
  'help|ACP'   => 'tekst na houding',
  'input'      => '',
  'name'       => 'Houding',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 10: blob - text


$opts['fdd']['advies_p53'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na organisatie kenmerk',
  'input'      => '',
  'name'       => 'Organisatie K',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 11: blob - text


$opts['fdd']['advies_p54'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na gedrag',
  'input'      => '',
  'name'       => 'Gedrag',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 12: blob - text


$opts['fdd']['advies_p55'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na effect',
  'input'      => '',
  'name'       => 'EFFECT',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 13: blob - text

// MySQL column 17: blob - text


$opts['fdd']['advies_p61'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na Vitaliteit',
  'input'      => '',
  'name'       => 'Vitaliteitsfactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Kritieke factoren-SPECIALS',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 18: blob - text


$opts['fdd']['advies_p62'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na Verandering',
  'input'      => '',
  'name'       => 'Veranderfactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 19: blob - text


$opts['fdd']['advies_p63'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na omgeving bewust',
  'input'      => '',
  'name'       => 'Transformatiefactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 20: blob - text


$opts['fdd']['advies_p64'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na Prestatie',
  'input'      => '',
  'name'       => 'Prestatiefactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 21: blob - text


$opts['fdd']['advies_p65'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na natuurlijke rol en waarden',
  'input'      => '',
  'name'       => 'Waarden factoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 22: blob - text



$opts['fdd']['advies_p71'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek ondernemendheid',
  'input'      => '',
  'name'       => 'Grafiek ondernemendheid',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Grafieken Ondernemendheid en Betrokkenheid',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 23: blob - text


$opts['fdd']['advies_p72'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek mate betrokkenheid',
  'input'      => '',
  'name'       => 'Grafiek betrokkenheid',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 24: blob - text


$opts['fdd']['advies_p73'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek groei PO stappen',
  'input'      => '',
  'name'       => 'Grafiek groei PO stappen',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Grafieken groeipotentieel',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 25: blob - text


$opts['fdd']['advies_p74'] = array(
  'default'    => '',
  'help|ACP'   => 'Groeipotentieel Gevoel, Houding, Organisatie, Gedrag en Effect',
  'input'      => '',
  'name'       => 'Grafiek succes/faalfactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 26: blob - text


$opts['fdd']['advies_p75'] = array(
  'default'    => '',
  'help|ACP'   => 'Ontwikkelpotentieel op de PO dimensies',
  'input'      => '',
  'name'       => 'Grafiek groei dimensies',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 27: blob - text


$opts['fdd']['advies_p76'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na ontwikkelpotentieel op de kritieke factoren',
  'input'      => '',
  'name'       => 'Grafiek kritieke factoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 28: blob - text


$opts['fdd']['advies_p81'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 1',
  'input'      => '',
  'name'       => 'Samenvatting tabel 1',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Tabellen',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);

// MySQL column 1: string - varchar(40)

// MySQL column 3: int - int(4)


// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once($INC_DIR.'includes/output/inc/phpMyEdit.class.php');

new phpMyEdit($opts);

require_once($INC_DIR.'includes/output/inc/footer2.php');

?>
