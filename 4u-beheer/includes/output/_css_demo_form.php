<?php

ob_start('ob_gzhandler');

$opts = array();

$opts['tb'] = 'mfg_customers';

$opts['key'] = 'RecordID'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('RecordID');

$opts['inc'] = 5;

$opts['options'] = 'ACPVDFL';

require_once('./inc/dbconn.php');

require_once('./inc/header.php');

switch($operation)
{
	Case 'Add':
	Case 'Change':
	Case 'Copy':
		echo "\n".'<p align="center" style="border:1px solid #000000;padding:5px;color:#000000;background-color:#ffff00">Note: tabs are enabled in Add, Change, coPy modes.</p>';
		break;
	default:
		break;
};


$opts['cgi']['append']['PME_sys_fl'] = 1; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];

// Column names are OK (based on an internal PHP5/MySQL5 Reserved Word list compiled June 2007)

$opts['fdd']['RecordID'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen|ACP'     => 6,
  'name'       => 'Recordid',
  'options'    => 'VDFL',
  'select'     => 'T',
  'size|ACP'   => 6,
  'tab|ACP'    => 'RECORDID Tab',
  'sort'       => true
);
// MySQL column 0: int - mediumint(6)


$opts['fdd']['CustomerID'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 5 characters',
  'input'      => '',
  'maxlen'     => 5,
  'name'       => 'Customerid',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 5,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 1: string - varchar(5)
$opts['fdd']['CustomerID']['js']['required'] = true;
// $opts['fdd']['CustomerID']['js']['regexp'] = '/^[0-9]*$/';
// $opts['fdd']['CustomerID']['js']['hint'] = 'Please enter only numbers in the "Customerid" field.';


$opts['fdd']['CompanyName'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 40 characters',
  'input'      => '',
  'maxlen'     => 40,
  'name'       => 'Companyname',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 40,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 2: string - varchar(40)
$opts['fdd']['CompanyName']['js']['required'] = true;
// $opts['fdd']['CompanyName']['js']['regexp'] = '/^[0-9]*$/';
// $opts['fdd']['CompanyName']['js']['hint'] = 'Please enter only numbers in the "Companyname" field.';


$opts['fdd']['ContactName'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 30 characters',
  'input'      => '',
  'maxlen'     => 30,
  'name'       => 'Contactname',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 30,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'tab|ACP'    => 'Contact'

);
// MySQL column 3: string - varchar(30)


$opts['fdd']['ContactTitle'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 30 characters',
  'input'      => '',
  'maxlen'     => 30,
  'name'       => 'Contacttitle',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 30,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 4: string - varchar(30)


$opts['fdd']['Address'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 60 characters',
  'input'      => '',
  'maxlen'     => 60,
  'name'       => 'Address',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'tab|ACP'    => 'Address'
);
// MySQL column 5: string - varchar(60)


$opts['fdd']['City'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 15 characters',
  'input'      => '',
  'maxlen'     => 15,
  'name'       => 'City',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 15,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 6: string - varchar(15)
$opts['fdd']['City']['js']['required'] = false;


$opts['fdd']['Region'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 15 characters',
  'input'      => '',
  'maxlen'     => 15,
  'name'       => 'Region',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 15,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 7: string - varchar(15)
$opts['fdd']['Region']['js']['required'] = false;


$opts['fdd']['PostalCode'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 10 characters',
  'input'      => '',
  'maxlen'     => 10,
  'name'       => 'Postalcode',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 10,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 8: string - varchar(10)
$opts['fdd']['PostalCode']['js']['required'] = false;


$opts['fdd']['Country'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 15 characters',
  'input'      => '',
  'maxlen'     => 15,
  'name'       => 'Country',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 15,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 9: string - varchar(15)
// Set 'select' => 'D' above to create drop-down selector
// $opts['fdd']['country']['values'] = array('', 'United States of America', 'Afghanistan', 'Albania', 'Algeria', 'American Samoa', 'Andorra', 'Angola', 'Antarctica', 'Antigua & Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia', 'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bermuda', 'Bhutan', 'Bolivia', 'Bosnia & Herzegovina', 'Botswana', 'Bouvet Island', 'Brazil', 'British Antarctica Territory', 'British Indian Ocean Territory', 'British West Indies', 'Brunei', 'Bulgaria', 'Burundi', 'Caledonia', 'Cambodia', 'Cameroon', 'Canada', 'Canary Islands', 'Canton And Enderbury Islands', 'Cape Verdi Islands', 'Cayman Islands', 'Central African Republic', 'Chad', 'Channel Islands UK', 'Chile', 'China', 'Christmas Island', 'Cocos (Keeling) Islands', 'Colombia', 'Comoros', 'Congo - Republic of', 'Cook Islands', 'Costa Rica', 'Croatia', 'Cuba', 'Curacao', 'Cyprus', 'Czech Republic', 'Dahomey', 'Dem. People\'s Republic of Korea', 'Dem. Republic of Vietnam', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic', 'Dronning Muad Land - Antarctica', 'Ecuador', 'Egypt', 'El Salvador', 'England,UK', 'Equatorial Guinea', 'Estonia', 'Ethiopia', 'Faeroe Islands', 'Falkland Islands', 'Fiji', 'Finland', 'France', 'French Guiana', 'French Polynesia', 'French Southern & Antarctica', 'French Territory of Afars & Issas', 'French West Indies', 'Gabon', 'Gambia', 'Gaza', 'Georgia', 'Germany', 'Ghana', 'Gibraltar', 'Greece', 'Greenland', 'Guadeloupe', 'Guam', 'Guatemala', 'Guinea', 'Guinea Bissau', 'Guyana', 'Haiti', 'Heard & McDonald Islands', 'Holland', 'Honduras', 'Hong Kong', 'Hungary', 'Iceland', 'Ifni', 'India', 'Indonesia', 'Iran', 'Iraq', 'Iraq-Saudi Arabia Neutral Zone', 'Ireland', 'Israel', 'Italy', 'Ivory Coast', 'Jamaica', 'Japan', 'Johnston Atoll', 'Jordan', 'Kazakhstan', 'Kenya', 'Kuwait', 'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon', 'Leeward Islands', 'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macau', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Mariana Islands', 'Martinique', 'Mauritania', 'Mauritius', 'Melanesia', 'Mexico', 'Micronesia', 'Midway Islands', 'Moldova', 'Monaco', 'Mongolia', 'Montenegro', 'Montserrat', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nauru', 'Navassa Island', 'Nepal', 'Netherlands', 'Netherlands Antilles', 'Neutral Zone', 'New Hebrides', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'Niue', 'Norfolk Island', 'North Korea', 'Northern Ireland,UK', 'Norway', 'Oman', 'Pacific Island', 'Pakistan', 'Panama', 'Papua New Guinea', 'Paracel Islands', 'Paraguay', 'Peru', 'Philippines', 'Pitcairn', 'Poland', 'Polynesia', 'Portugal', 'Portuguese Guinea', 'Portuguese Timor', 'Principe & Sao Tome', 'Puerto Rico', 'Qatar', 'Republic of Congo', 'Republic of Korea', 'Reunion', 'Romania', 'Russia', 'Rwanda', 'Ryukyu Islands', 'Sabah', 'San Marino', 'Sao Tome & Principe', 'Saudi Arabia', 'Scotland,UK', 'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Sikkim', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Somalia', 'Somaliliand', 'South Africa', 'South Korea', 'Spain', 'Spanish Sahara', 'Spartly Islands', 'Sri Lanka', 'St. Christopher-Nevis-Anguilla', 'St. Helena', 'St. Kitts', 'St. Lucia', 'St. Pierre & Miquelon', 'St. Vincent', 'Sudan', 'Surinam', 'Svalbard & Jan Mayen Islands', 'Swaziland', 'Sweden', 'Switzerland', 'Syrian Arab Republic', 'Taiwan', 'Tanzania', 'Thailand', 'Togo', 'Tonga', 'Transkei', 'Trinidad/Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Turks & Caicos Islands', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom', 'United States of America', 'Uruguay', 'US Pacific Island', 'US Virgin Islands', 'Uzbekistan', 'Vanuatu', 'Vatican City', 'Venezuela', 'Vietnam', 'Virgin Islands (British)', 'Virgin Islands (US)', 'Wake Island', 'Wales,UK', 'West Indies', 'Western Samoa', 'Windward Islands', 'Yemen', 'Zambia', 'Zimbabwe');


$opts['fdd']['Phone'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 24 characters',
  'input'      => '',
  'maxlen'     => 24,
  'name'       => 'Phone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 24,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'tab|ACP'    => 'Phone Tab'
);
// MySQL column 10: string - varchar(24)


$opts['fdd']['Fax'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 24 characters',
  'input'      => '',
  'maxlen'     => 24,
  'name'       => 'Fax',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 24,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 11: string - varchar(24)


// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once('./inc/phpMyEdit.class.php');

new phpMyEdit($opts);

// echo "\n".'<p><a href="_css_demo_form2.php" rel="nofollow">no stylesheet</a></p>';

require_once('./inc/footer.php');

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
$opts['notify']['from']   = 'you@domain.com';
$opts['notify']['prefix'] = $_SERVER['REQUEST_URI'].' - ';
$opts['notify']['wrap']   = '72';
$opts['notify']['insert'] = 'you@domain.com';
$opts['notify']['update'] = 'you@domain.com';
$opts['notify']['delete'] = 'you@domain.com';
$opts['notify']['all']    = 'you@domain.com'; // (insert, update, and, delete)

*/

?>

