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

// Sorting field(s)
$opts['sort_field'] = array( '-attribute_1');

$opts['inc'] = 30;

$opts['display'] = array(
	'query' => true,
	'sort'  => true,
	'time'  => true
	);

$opts['options'] = 'VFL';

require_once($INC_DIR.'includes/output/inc/dbconn-oos-default.php'); // Database logon + form navigation config + variables used by the page header

require_once($INC_DIR.'includes/output/inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 1; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];

echo '=> Individuele Ontwikkel Spiegel - Niet Gereed';

$main_table = 'lime_tokens_714972';
$join_table = 'token_persoon';
$join_description_1 = 'token_voornaam';
$join_description_2 = 'token_achternaam';
$join_column = 'token_persoon_token';

$opts['filters'] = "completed = 'N'";
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

$opts['fdd']['participant_id'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 40 characters',
  'input'      => '',
  'maxlen'     => 40,
  'name'       => 'Organisatie',
  'colattrs'  => 'align="center"',
  'options'    => 'VFL',
  'select'     => 'T',
  'trimlen'    => 30,
  'size|ACP'   => 40,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);


$opts['fdd']['token'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Uitnodigen',
  'colattrs|LF'  => 'style="color:#000000 ;background-color:blue"; align="left";',
   'URL'      => 'http://www.4u-change.com/4u-beheer/mail.php?dir=$value',
  'URLtarget' => '_blank',
  'URLdisp'   => 'Mail uitnodiging',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
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
// MySQL column 2: string - varchar(40)

/*
$opts['fdd']['token'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 40 characters',
  'input'      => '',
  'maxlen'     => 35,
  'name'       => 'PO TOETS',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 40,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
*/
// MySQL column 3: string - varchar(40)


$opts['fdd']['attribute_1'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Rol',
  'values2'     => array(
    	'f' => 'Feedbackgever', 
    	'r' => 'Respondent'
    	),
  'colattrs'  => 'align="center"', 	
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);

$opts['fdd']['remindersent'] = array(
  'css'        => array('postfix' => 'left-justify'),
  'colattrs|LF'  => 'style="color:#000000 ;background-color:lightgreen"; align="left";',
  'default'    => '',
  'help|ACP'   => '',
  'input'      => '',
  'maxlen'     => 17,
  'name'       => 'verstuurd',
  'options'    => 'VFL',
  'select'     => 'T',
  'size|ACP'   => 17,
  'sort'       => true
);

/*
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
*/

/*
$opts['fdd']['attribute_3'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Feedback01',
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
  'name'       => 'Feedback02',
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
  'name'       => 'Feedback03',
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
  'name'       => 'Feedback04',
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
*/

$opts['fdd']['token'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 255 characters',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Uitnodigen',
  'colattrs|LF'  => 'style="color:#000000 ;background-color:lightgreen"; align="left";',
   'URL'      => 'http://www.4u-change.com/4u-beheer/mail.php?dir=$value',
  'URLtarget' => '_blank',
  'URLdisp'   => 'Mail uitnodiging',
  'options'    => 'VFL',
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