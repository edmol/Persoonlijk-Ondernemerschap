<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// Suggested filename: my_advies.php
// Wed, 13 Mar 2013 11:24:47 +0100
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// potoets.advies

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

$opts = array();

$opts['tb'] = 'advies';

$opts['key'] = 'advies_id'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('advies_id');

$opts['inc'] = 40;

$opts['options'] = 'ACPVDFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php');

require_once($INC_DIR.'includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 0; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
echo '=> Koppel aan een toets een facilitator en variabele teksten voor deze toets';

/*

This bug note can be disabled by setting: $cfg_utf8_bug_note = 0;
If a MySQL v4.1 CHARSET is UTF8, a PHP v4.x mysql_field_len() function
may return incorrect values for the length of VARCHAR columns.
Table schema is provided below so that VARCHAR field lengths can be
compared with the 'maxlen' settings in the following field arrays.

CREATE TABLE `advies` (
  `advies_id` int(11) NOT NULL AUTO_INCREMENT,
  `advies_num` int(11) DEFAULT NULL,
  `advies_kandidaat` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advies_p1` text COLLATE utf8_unicode_ci,
  `advies_p12` text COLLATE utf8_unicode_ci,
  `advies_p13` text COLLATE utf8_unicode_ci,
  `advies_p131` text COLLATE utf8_unicode_ci,
  `advies_p24` text COLLATE utf8_unicode_ci,
  `advies_p343` text COLLATE utf8_unicode_ci,
  `advies_p41` text COLLATE utf8_unicode_ci,
  `advies_p42` text COLLATE utf8_unicode_ci,
  `advies_p43` text COLLATE utf8_unicode_ci,
  `advies_p44` text COLLATE utf8_unicode_ci,
  `advies_p45` text COLLATE utf8_unicode_ci,
  `advies_p5` text COLLATE utf8_unicode_ci,
  `advies_p51` text COLLATE utf8_unicode_ci,
  `advies_p6` text COLLATE utf8_unicode_ci,
  `advies_p61` text COLLATE utf8_unicode_ci,
  `advies_p81` text COLLATE utf8_unicode_ci,
  `advies_p82` text COLLATE utf8_unicode_ci,
  `advies_p83` text COLLATE utf8_unicode_ci,
  `advies_p84` text COLLATE utf8_unicode_ci,
  `advies_p85` text COLLATE utf8_unicode_ci,
  `advies_p91` text COLLATE utf8_unicode_ci,
  `advies_p92` text COLLATE utf8_unicode_ci,
  `advies_p93` text COLLATE utf8_unicode_ci,
  `advies_p94` text COLLATE utf8_unicode_ci,
  `advies_p95` text COLLATE utf8_unicode_ci,
  `advies_p96` text COLLATE utf8_unicode_ci,
  `advies_p101` text COLLATE utf8_unicode_ci,
  `advies_p102` text COLLATE utf8_unicode_ci,
  `advies_p103` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`advies_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

*/

// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

$opts['fdd']['advies_id'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen'     => 11,
  'name'       => 'Advies Id',
  'options'    => 'VD',
  'select'     => 'T',
  'size|ACP'   => 11,
  'tab|ACP'    => 'ADVIES ID',
  'sort'       => true
);
// MySQL column 0: int - int(11)


$main_table = 'advies';
$main_column = 'advies_num';
$join_table = 'facilitators';
$join_column = 'fac_id';
$join_description_1 = 'fac_voornaam';
$join_description_2 = 'fac_achternaam';

$opts['fdd']['advies_num'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'help|ACP'   => '',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 11,
  'required'	=> true,
  'name'       => 'Voer begeleider in',
  'options'    => 'ACPVDFL',
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
// MySQL column 1: int - int(11)


$main_table = 'advies';
$main_column = 'advies_kandidaat';
$join_table = 'lime_tokens_714972';
$join_column = 'token';
$join_description_1 = 'firstname';
$join_description_2 = 'lastname';
$join_description_3 = 'attribute_3';
$join_description_4 = 'attribute_1';

$opts['fdd']['advies_kandidaat'] = array(
  'default'    => '',
  'help|ACP'   => '',
  'input'      => '',
  'maxlen'     => 35,
  'required'	=> true,
  'name'       => 'Voor welke kandidaat/spiegel',
  'options'    => 'APVDFL',
  'select'     => 'T',
  'size|ACP'   => 35,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'values'	=> array(
  	'join'	=> '$main_table.$main_column = $join_table.$join_column',
  	'table'	=> $join_table,
  	'column' => $join_column,
  	'description' => array(
  		'columns'	=> array($join_description_1, $join_description_2),
  		'divs'	=> array(' ')
  		),
  		'filters' => $join_description_4. '= "r" ')
  		// description_3 geeft eerste feedbackgever aan - 13 april 2015 
  		//'filters' => $join_description_3.'<> "" AND '.$join_description_4. '= "r" ')
);
// MySQL column 2: string - varchar(35)
$opts['fdd']['advies_p12'] = array(
  'default'    => '',
  'help|ACP'   => 'Aanbevelingen',
  'input'      => '',
  'name'       => 'Aanbevelingen',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Algemeen',
  'textarea'   => array('rows' => '3', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);

$opts['fdd']['advies_p1'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst onder gegevens veranderbegeleider',
  'input'      => '',
  'name'       => 'Veranderbegeleider',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '3', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 3: blob - text

// MySQL column 4: blob - text


$opts['fdd']['advies_p13'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst bij constructieve indicatoren',
  'input'      => '',
  'name'       => 'Constructief',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Constructief',
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
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Destructief',
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
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Uitleg rapport',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 7: blob - text


$opts['fdd']['advies_p343'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na 10 R Stappen',
  'input'      => '',
  'name'       => '10 R stappen',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => '10 R stappen',
  'textarea'   => array('rows' => '40', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 8: blob - text


$opts['fdd']['advies_p41'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na gevoel',
  'input'      => '',
  'name'       => 'Gevoel',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Gevoel',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 9: blob - text


$opts['fdd']['advies_p42'] = array(
  'default'    => '',
  'help|ACP'   => 'tekst na houding',
  'input'      => '',
  'name'       => 'Houding',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Houding',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 10: blob - text


$opts['fdd']['advies_p43'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na organisatie kenmerk',
  'input'      => '',
  'name'       => 'Organisatie K',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Organisatie',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 11: blob - text


$opts['fdd']['advies_p44'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na gedrag',
  'input'      => '',
  'name'       => 'Gedrag',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Gedrag',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 12: blob - text


$opts['fdd']['advies_p45'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na effect',
  'input'      => '',
  'name'       => 'EFFECT',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'EFFECT',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 13: blob - text


$opts['fdd']['advies_p5'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na koesterpunten ondernemendheid',
  'input'      => '',
  'name'       => 'Koester ondernemendheid',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Koester ondernemendheid',
  'textarea'   => array('rows' => '20', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 14: blob - text


$opts['fdd']['advies_p51'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na koesterpunten betrokkenheid',
  'input'      => '',
  'name'       => 'Koester betrokkenheid',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Koester betrokkenheid',
  'textarea'   => array('rows' => '20', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 15: blob - text


$opts['fdd']['advies_p6'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na ontwikkelpunten ondernemendheid',
  'input'      => '',
  'name'       => 'Ontwikkel ondernemendheid',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Ontwikkel ondernemendheid',
  'textarea'   => array('rows' => '20', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 16: blob - text


$opts['fdd']['advies_p61'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na ontwikkelpunten betrokkenheid',
  'input'      => '',
  'name'       => 'Ontwikkel betrokkenheid',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Ontwikkel betrokkenheid',
  'textarea'   => array('rows' => '20', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 17: blob - text


$opts['fdd']['advies_p81'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na Vitaliteit',
  'input'      => '',
  'name'       => 'Vitaliteit',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Vitaliteit',
  'textarea'   => array('rows' => '3', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 18: blob - text


$opts['fdd']['advies_p82'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na Verandering',
  'input'      => '',
  'name'       => 'Verandering',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Verandering',
  'textarea'   => array('rows' => '3', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 19: blob - text


$opts['fdd']['advies_p83'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na omgeving bewust',
  'input'      => '',
  'name'       => 'Omgevingsbewust',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Omgevingsbewust',
  'textarea'   => array('rows' => '3', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 20: blob - text


$opts['fdd']['advies_p84'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na Prestatie',
  'input'      => '',
  'name'       => 'Prestatie',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Prestatie',
  'textarea'   => array('rows' => '3', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 21: blob - text


$opts['fdd']['advies_p85'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na natuurlijke rol en waarden',
  'input'      => '',
  'name'       => 'Waarden',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Waarden',
  'textarea'   => array('rows' => '3', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 22: blob - text


$opts['fdd']['advies_p91'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek ondernemendheid',
  'input'      => '',
  'name'       => 'Grafiek ondernemendheid',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Grafiek ondernemendheid',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 23: blob - text


$opts['fdd']['advies_p92'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek betrokkenheid',
  'input'      => '',
  'name'       => 'Grafiek betrokkenheid',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Grafiek betrokkenheid',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 24: blob - text


$opts['fdd']['advies_p93'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek groei PO stappen',
  'input'      => '',
  'name'       => 'Grafiek groei PO stappen',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Grafiek groei PO stappen',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 25: blob - text


$opts['fdd']['advies_p94'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek groei houding etc',
  'input'      => '',
  'name'       => 'Grafiek groei houding etc',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Grafiek houding etc',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 26: blob - text


$opts['fdd']['advies_p95'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek groei dimensies',
  'input'      => '',
  'name'       => 'Grafiek groei dimensies',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Grafiek groei dimensies',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 27: blob - text


$opts['fdd']['advies_p96'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek groei kritieke factoren',
  'input'      => '',
  'name'       => 'Grafiek kritieke factoren',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Grafiek kritieke factoren',
  'textarea'   => array('rows' => '7', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 28: blob - text


$opts['fdd']['advies_p101'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 1',
  'input'      => '',
  'name'       => 'Samenvatting tabel 1',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Samenvatting tabel 1',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 29: blob - text


$opts['fdd']['advies_p102'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 2',
  'input'      => '',
  'name'       => 'Samenvatting tabel 2',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Samenvatting tabel 1',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 30: blob - text


$opts['fdd']['advies_p103'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 3',
  'input'      => '',
  'name'       => 'Samenvatting tabel 3',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Samenvatting tabel 3',
  'textarea'   => array('rows' => '10', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 31: blob - text


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

