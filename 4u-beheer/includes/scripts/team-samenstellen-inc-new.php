<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
// Suggested filename: my_teamspiegel.php
// Mon, 04 Feb 2013 17:33:43 +0100
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// teamspiegels.teamspiegel

if(!@ini_get('zlib.output_compression')){

	ob_start('ob_gzhandler');

}

$opts = array();

$opts['tb'] = 'teamspiegel01';

$opts['key'] = 'teamID'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('Organisatie');

$opts['inc'] = 20;

$opts['options'] = 'PACVFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php');

require_once($INC_DIR.'includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 0; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];

$opts['filters'] = "teamlid1 != ''";


echo '=> TEAM Ontwikkel Spiegel - Samenstellen van een TEAM voor een TEAM Ontwikkel Spiegel voor een organisatie. Een TEAMlid moeten eerst uitgenodigd zijn voordat deze onderdeel van een TEAM kan zijn';
$main_table = 'teamspiegel01';
$join_table = 'token_persoon';

$join_description_1 = 'token_voornaam';
$join_description_2 = 'token_achternaam';
$join_column = 'token_persoon_token';
$join_column_2 = 'token_soort';

$join_table_3 = 'organisaties';
$join_description_3 = 'bedrijfsnaam';
$join_column_3 = 'bid';

// 'required' status is now post-initialized for easier readability with Javascript hints, validation, REGEX, etc.

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

$opts['fdd']['teamID'] = array(
//  'colattrs|LF'   => '',
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen'     => 11,
  'name'       => 'Teamid',
  'options'    => 'VD',
  'select'     => 'T',
  'size|ACP'   => 11,
//  'tab|ACP'    => 'TEAMID',
  'sort'       => true
);
$opts['fdd']['datum'] = array(
//  'colattrs|LF'   => '',
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => '',
  'maxlen'     => 20,
  'name'       => 'datum',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 15,
  'sort'       => true
);


$opts['fdd']['orgID'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Selecteer een organisatie',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Organisatie',
  'values'     => array(
    'table'       => $join_table_3,
    'column'      => $join_column_3,
    'description' => array(
    	'columns' => array($join_description_3),
    	'divs'    => array(' ')
    ),
    ),
  'options'    => 'PAVFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
$opts['fdd']['team_naam'] = array(
  'default'    => '',
  'help|ACP'   => 'Beschrijving van het Team',
  'input'      => '',
  'name'       => 'Team omschrijving',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '40'),
  'trimlen|LF' => 40,
  'sort'       => false
);

$opts['fdd']['teamlid1'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Selecteer een team lid uit de lijst',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Teamlid1',
  'options'    => 'PAVFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.teamlid1 = $join_table.$join_column',
    'filters' => $join_column_2.' <> "f"'
    ),
  'sort'       => true
);
// MySQL column 2: string - varchar(40)


$opts['fdd']['teamlid2'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Selecteer een team lid uit de lijst',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Teamlid2',
  'options'    => 'PAVFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.teamlid2 = $join_table.$join_column',
    'filters' => $join_column_2.' <> "f"'
    ),
  'sort'       => true
);
// MySQL column 3: string - varchar(40)


$opts['fdd']['teamlid3'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Selecteer een team lid uit de lijst',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Teamlid3',
  'options'    => 'PAVFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.teamlid3 = $join_table.$join_column',
    'filters' => $join_column_2.' <> "f"'
    ),
  'sort'       => true
);
// MySQL column 4: string - varchar(40)


$opts['fdd']['teamlid4'] = array(
//  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Selecteer een team lid uit de lijst',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Teamlid4',
  'options'    => 'PAVFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.teamlid4 = $join_table.$join_column',
    'filters' => $join_column_2.' <> "f"'
    ),
  'sort'       => true
);
// MySQL column 5: string - varchar(40)


$opts['fdd']['teamlid5'] = array(
  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Selecteer een team lid uit de lijst',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Teamlid5',
  'options'    => 'PAVFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.teamlid5 = $join_table.$join_column',
    'filters' => $join_column_2.' <> "f"'
    ),
  'sort'       => true
);
// MySQL column 6: string - varchar(40)


$opts['fdd']['teamlid6'] = array(
  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Selecteer een team lid uit de lijst',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Teamlid6',
  'options'    => 'PAVFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.teamlid6 = $join_table.$join_column',
    'filters' => $join_column_2.' <> "f"'
    ),
  'sort'       => true
);
// MySQL column 7: string - varchar(40)


$opts['fdd']['teamlid7'] = array(
  'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Selecteer een team lid uit de lijst',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Teamlid7',
  'options'    => 'PAVFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.teamlid7 = $join_table.$join_column',
    'filters' => $join_column_2.' <> "f"'
    ),
  'sort'       => true
);
// MySQL column 8: string - varchar(40)


$opts['fdd']['teamlid8'] = array(
   'colattrs|LF'   => '',
  'default'    => '',
  'help|ACP'   => 'Selecteer een team lid uit de lijst',
  'input'      => '',
  'maxlen'     => 120,
  'name'       => 'Teamlid8',
  'options'    => 'PAVFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'values'     => array(
    'table' => $join_table,
    'column' => $join_column,
    'description' => array(
		'columns' => array($join_description_1, $join_description_2),
    	'divs'    => array(' ')
         ),
    'join' => '$main_table.teamlid8 = $join_table.$join_column',
    'filters' => $join_column_2.' <> "f"'
    ),
  'sort'       => true
);

$main_table = 'advies';
$main_column = 'advies_num';
$join_table = 'facilitators';
$join_column = 'fac_id';
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


$opts['fdd']['advies_p1'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst onder gegevens van de veranderbegeleider',
  'input'      => '',
  'name'       => 'Veranderbegeleider',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Algemeen',
  'textarea'   => array('rows' => '3', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 3: blob - text
//

$opts['fdd']['advies_p12'] = array(
  'default'    => '',
 'help|ACP'   => 'Aanbevelingen laatste pagina ',
  'input'      => '',
  'name'       => 'Aanbevelingen',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '40', 'cols' => '80'),
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
  'textarea'   => array('rows' => '4', 'cols' => '80'),
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
  'textarea'   => array('rows' => '4', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 6: blob - text

/*
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
*/

$opts['fdd']['advies_p343'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na 10 R Stappen',
  'input'      => '',
  'name'       => '10 R stappen',
  'options'    => 'ACPVDF',
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
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Succes en faalfactoren',
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 9: blob - text


$opts['fdd']['advies_p42'] = array(
  'default'    => '',
  'help|ACP'   => 'tekst na houding',
  'input'      => '',
  'name'       => 'Houding',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 10: blob - text


$opts['fdd']['advies_p43'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na organisatie kenmerk',
  'input'      => '',
  'name'       => 'Organisatie K',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 11: blob - text


$opts['fdd']['advies_p44'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na gedrag',
  'input'      => '',
  'name'       => 'Gedrag',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 12: blob - text


$opts['fdd']['advies_p45'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na effect',
  'input'      => '',
  'name'       => 'EFFECT',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);

$opts['fdd']['advies_p5'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na koesterpunten ondernemendheid',
  'input'      => '',
  'name'       => 'Koesterpunten ondernemndheid',
  'tab|ACP'    => 'Koester- en ontwikkelpunten',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '2', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);

$opts['fdd']['advies_p51'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na koesterpunten betrokkenheid',
  'input'      => '',
  'name'       => 'Koesterpunten betrokkenheid',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '2', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);

$opts['fdd']['advies_p6'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na ontwikkelpunten ondernemendheid',
  'input'      => '',
  'name'       => 'Ontwikkelpunten ondernemendheid',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '2', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);

$opts['fdd']['advies_p61'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na ontwikkelpunten betrokkenheid',
  'input'      => '',
  'name'       => 'Ontwikkelpunten betrokkenheid',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '2', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);

$opts['fdd']['advies_p81'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na Vitaliteit',
  'input'      => '',
  'name'       => 'Vitaliteitsfactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Kritieke factoren-SPECIALS',
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 18: blob - text


$opts['fdd']['advies_p82'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na Verandering',
  'input'      => '',
  'name'       => 'Veranderfactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 19: blob - text


$opts['fdd']['advies_p83'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na transformatie factoren',
  'input'      => '',
  'name'       => 'Transformatiefactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 20: blob - text


$opts['fdd']['advies_p84'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na Prestatie',
  'input'      => '',
  'name'       => 'Prestatiefactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 21: blob - text


$opts['fdd']['advies_p85'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na natuurlijke rol en waarden',
  'input'      => '',
  'name'       => 'Waarden factoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 22: blob - text


$opts['fdd']['advies_p91'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek ondernemendheid',
  'input'      => '',
  'name'       => 'Grafiek ondernemendheid',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Grafieken ondernemendheid/betrokkenheid en ontwikkelruimte',
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 23: blob - text


$opts['fdd']['advies_p92'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek betrokkenheid',
  'input'      => '',
  'name'       => 'Grafiek betrokkenheid',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 24: blob - text


$opts['fdd']['advies_p93'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek groei PO stappen',
  'input'      => '',
  'name'       => 'Grafiek ontwikkelruimte PO stappen',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 25: blob - text


$opts['fdd']['advies_p94'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek ontwikkelruimte kritieke succes en faalfactoren',
  'input'      => '',
  'name'       => 'Grafiek ontwikkelruimte succes/faalfactoren',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 26: blob - text


$opts['fdd']['advies_p95'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek ontwikkelruimte PO dimensies',
  'input'      => '',
  'name'       => 'Grafiek ontwikkelruimte PO dimensies',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 27: blob - text


$opts['fdd']['advies_p96'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na grafiek ontwikkelruimte kritieke factoren (specials)',
  'input'      => '',
  'name'       => 'Grafiek ontwikkelruimte kritieke factoren(specials)',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
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
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'tab|ACP'    => 'Samenvatting - Tabellen',
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
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 30: blob - text


$opts['fdd']['advies_p103'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 3',
  'input'      => '',
  'name'       => 'Samenvatting tabel 3',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p104'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 4',
  'input'      => '',
  'name'       => 'Samenvatting tabel 4',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 29: blob - text


$opts['fdd']['advies_p105'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 5',
  'input'      => '',
  'name'       => 'Samenvatting tabel 5',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 30: blob - text


$opts['fdd']['advies_p106'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 6',
  'input'      => '',
  'name'       => 'Samenvatting tabel 6',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
$opts['fdd']['advies_p107'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 7',
  'input'      => '',
  'name'       => 'Samenvatting tabel 7',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);
// MySQL column 30: blob - text


$opts['fdd']['advies_p108'] = array(
  'default'    => '',
  'help|ACP'   => 'Tekst na samenvatting tabel 8',
  'input'      => '',
  'name'       => 'Samenvatting tabel 8',
  'options'    => 'ACPVDF',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '1', 'cols' => '80'),
  'trimlen|LF' => 80,
  'sort'       => false
);

// MySQL column 9: string - varchar(40)

// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once($INC_DIR.'includes/output/inc/phpMyEdit.class.php');

new phpMyEdit($opts);

require_once($INC_DIR.'includes/output/inc/footer2.php');

?>
