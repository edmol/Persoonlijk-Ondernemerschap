<?php

// Suggested filename: my_mfg_outlook.php
// Sun, 30 Sep 2007 10:35:51 -0600
// Requires phpMyEdit.class.php, language files, header, footer, and db connection.
// phpvs_mfg.mfg_outlook

ob_start('ob_gzhandler');

$opts = array();

$opts['tb'] = 'mfg_outlook';

$opts['key'] = 'ID'; // Primary key checked

$opts['key_type'] = 'int';

$opts['sort_field'] = array('ID');

$opts['inc'] = 10;

$opts['options'] = 'ACPVDFL';

require_once('./inc/dbconn.php'); // Database logon + form navigation config + variables used by the page header

$opts['navigation'] = 'GU';

require_once('./inc/header2.php');

$opts['cgi']['append']['PME_sys_fl'] = 1; // Force search feature ON (version 5.6)

$opts['language'] = $_SERVER['HTTP_ACCEPT_LANGUAGE'];

$opts['fdd']['ID'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '',
  'input'      => 'R',
  'maxlen'     => 9,
  'name'       => 'Id',
  'options'    => 'VD',
  'select'     => 'T',
  'size|ACP'   => 9,
  'tab|ACPV'    => 'Main',
  'sort'       => true
);
// MySQL column 0: int - mediumint(9)


$opts['fdd']['Title'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Title',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 1: string - varchar(255)


$opts['fdd']['FirstName'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'First Name',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 2: string - varchar(255)


$opts['fdd']['MiddleName'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Middlename',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 3: string - varchar(255)


$opts['fdd']['LastName'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Last Name',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 4: string - varchar(255)


$opts['fdd']['Suffix'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Suffix',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 5: string - varchar(255)


$opts['fdd']['Company'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Company',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'tab|ACPV'    => 'Company'

);
// MySQL column 6: string - varchar(255)


$opts['fdd']['Department'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Department',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 7: string - varchar(255)


$opts['fdd']['JobTitle'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Jobtitle',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 8: string - varchar(255)


$opts['fdd']['BusinessStreet'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Businessstreet',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 9: string - varchar(255)


$opts['fdd']['BusinessStreet2'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Businessstreet2',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 10: string - varchar(255)


$opts['fdd']['BusinessStreet3'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Businessstreet3',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 11: string - varchar(255)


$opts['fdd']['BusinessCity'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Businesscity',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 12: string - varchar(255)


$opts['fdd']['BusinessState'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Businessstate',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 13: string - varchar(255)


$opts['fdd']['BusinessPostalCode'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Businesspostalcode',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 14: string - varchar(255)


$opts['fdd']['BusinessCountry'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Businesscountry',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 15: string - varchar(255)


$opts['fdd']['HomeStreet'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homestreet',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'tab|ACPV'    => 'Home Address'
);
// MySQL column 16: string - varchar(255)


$opts['fdd']['HomeStreet2'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homestreet2',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 17: string - varchar(255)


$opts['fdd']['HomeStreet3'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homestreet3',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 18: string - varchar(255)


$opts['fdd']['HomeCity'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homecity',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 19: string - varchar(255)


$opts['fdd']['HomeState'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homestate',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 20: string - varchar(255)


$opts['fdd']['HomePostalCode'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homepostalcode',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 21: string - varchar(255)


$opts['fdd']['HomeCountry'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homecountry',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 22: string - varchar(255)


$opts['fdd']['OtherStreet'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Otherstreet',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'tab|ACPV'    => 'Other Address'
);
// MySQL column 23: string - varchar(255)


$opts['fdd']['OtherStreet2'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Otherstreet2',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 24: string - varchar(255)


$opts['fdd']['OtherStreet3'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Otherstreet3',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 25: string - varchar(255)


$opts['fdd']['OtherCity'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Othercity',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 26: string - varchar(255)


$opts['fdd']['OtherState'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Otherstate',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 27: string - varchar(255)


$opts['fdd']['OtherPostalCode'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Otherpostalcode',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 28: string - varchar(255)


$opts['fdd']['OtherCountry'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Othercountry',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 29: string - varchar(255)


$opts['fdd']['AssistantsPhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Assistantsphone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'tab|ACPV'    => 'Telephone'
);
// MySQL column 30: string - varchar(255)


$opts['fdd']['BusinessFax'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Business fax',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => false
);
// MySQL column 31: string - varchar(255)


$opts['fdd']['BusinessPhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Business phone',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => false
);
// MySQL column 32: string - varchar(255)


$opts['fdd']['BusinessPhone2'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Businessphone2',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 33: string - varchar(255)


$opts['fdd']['Callback'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Callback',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 34: string - varchar(255)


$opts['fdd']['CarPhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Carphone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 35: string - varchar(255)


$opts['fdd']['CompanyMainPhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Companymainphone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 36: string - varchar(255)


$opts['fdd']['HomeFax'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homefax',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 37: string - varchar(255)


$opts['fdd']['HomePhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homephone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 38: string - varchar(255)


$opts['fdd']['HomePhone2'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Homephone2',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 39: string - varchar(255)


$opts['fdd']['ISDN'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Isdn',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 40: string - varchar(255)


$opts['fdd']['MobilePhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Mobilephone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 41: string - varchar(255)


$opts['fdd']['OtherFax'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Otherfax',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 42: string - varchar(255)


$opts['fdd']['OtherPhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Otherphone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 43: string - varchar(255)


$opts['fdd']['Pager'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Pager',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 44: string - varchar(255)


$opts['fdd']['PrimaryPhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Primaryphone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 45: string - varchar(255)


$opts['fdd']['RadioPhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Radiophone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 46: string - varchar(255)


$opts['fdd']['TTYTDDPhone'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Ttytddphone',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 47: string - varchar(255)


$opts['fdd']['Telex'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Telex',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 48: string - varchar(255)


$opts['fdd']['Account'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Account',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true,
  'tab|ACPV'    => 'Account, etc.'
);
// MySQL column 49: string - varchar(255)


$opts['fdd']['Anniversary'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Anniversary',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 50: string - varchar(255)


$opts['fdd']['AssistantsName'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Assistantsname',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 51: string - varchar(255)


$opts['fdd']['BillingInformation'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Billinginformation',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 52: string - varchar(255)


$opts['fdd']['Birthday'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Birthday',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 53: string - varchar(255)


$opts['fdd']['Categories'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Categories',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 54: string - varchar(255)


$opts['fdd']['Children'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Children',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 55: string - varchar(255)


$opts['fdd']['DirectoryServer'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Directoryserver',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 56: string - varchar(255)


$opts['fdd']['EmailAddress'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Emailaddress',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 57: string - varchar(255)
$opts['fdd']['EmailAddress']['URL'] = 'mailto:$value';


$opts['fdd']['EmailDisplayName'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Emaildisplayname',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 58: string - varchar(255)
$opts['fdd']['EmailDisplayName']['URL'] = 'mailto:$value';


$opts['fdd']['Email2Address'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Email2address',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 59: string - varchar(255)
$opts['fdd']['Email2Address']['URL'] = 'mailto:$value';


$opts['fdd']['Email2DisplayName'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Email2displayname',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 60: string - varchar(255)
$opts['fdd']['Email2DisplayName']['URL'] = 'mailto:$value';


$opts['fdd']['Email3Address'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Email3address',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 61: string - varchar(255)
$opts['fdd']['Email3Address']['URL'] = 'mailto:$value';


$opts['fdd']['Email3DisplayName'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Email3displayname',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 62: string - varchar(255)
$opts['fdd']['Email3DisplayName']['URL'] = 'mailto:$value';


$opts['fdd']['Gender'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Gender',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 63: string - varchar(255)


$opts['fdd']['GovernmentIDNumber'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Governmentidnumber',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 64: string - varchar(255)


$opts['fdd']['Hobby'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Hobby',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 65: string - varchar(255)


$opts['fdd']['Initials'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Initials',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 66: string - varchar(255)


$opts['fdd']['InternetFreeBusy'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Internetfreebusy',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 67: string - varchar(255)


$opts['fdd']['Keywords'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Keywords',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 68: string - varchar(255)


$opts['fdd']['Language1'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Language1',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 69: string - varchar(255)


$opts['fdd']['Location'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Location',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 70: string - varchar(255)


$opts['fdd']['ManagersName'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Managersname',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 71: string - varchar(255)


$opts['fdd']['Mileage'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Mileage',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 72: string - varchar(255)


$opts['fdd']['Notes'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 16777215,
  'name'       => 'Notes',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'strip_tags|LF' => true,
  'textarea'   => array('rows' => '5', 'cols' => '58'),
  'trimlen|LF' => 50,
  'sort'       => false
);
// MySQL column 73: blob - longtext


$opts['fdd']['OfficeLocation'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Officelocation',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 74: string - varchar(255)


$opts['fdd']['OrganizationalIDNumber'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Organizationalidnumber',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 75: string - varchar(255)


$opts['fdd']['POBox'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Pobox',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 76: string - varchar(255)


$opts['fdd']['Priority'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Priority',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 77: string - varchar(255)


$opts['fdd']['Private'] = array(
  'css'        => array('postfix' => 'right-justify'),
  'default'    => '0',
  'input'      => '',
//  'number_format|VDLF' => array(0, '.', ','),
  'maxlen|ACP'     => 3,
  'name'       => 'Private',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 3,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true
);
// MySQL column 78: int - tinyint(3) unsigned


$opts['fdd']['Profession'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Profession',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 79: string - varchar(255)


$opts['fdd']['ReferredBy'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Referredby',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 80: string - varchar(255)


$opts['fdd']['Sensitivity'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Sensitivity',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 81: string - varchar(255)


$opts['fdd']['Spouse'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Spouse',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 82: string - varchar(255)


$opts['fdd']['User1'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'User1',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 83: string - varchar(255)


$opts['fdd']['User2'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'User2',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 84: string - varchar(255)


$opts['fdd']['User3'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'User3',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 85: string - varchar(255)


$opts['fdd']['User4'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'User4',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 86: string - varchar(255)


$opts['fdd']['WebPage'] = array(
  'default'    => '',
  'input'      => '',
  'maxlen'     => 255,
  'name'       => 'Webpage',
  'options'    => 'ACPVD',
  'select'     => 'T',
  'size|ACP'   => 60,
  'sqlw'       => 'IF($val_qas = "", NULL, $val_qas)',
  'sort'       => true
);
// MySQL column 87: string - varchar(255)


// Enable this trigger induce View mode after adding a new record
// $opts['triggers']['insert']['after'] = './triggers/view_rec_after_add.php';

// require_once('./inc/notify/all.php'); // See ./output/inc/notify/*.php

require_once('./inc/phpMyEdit.class.php');

new phpMyEdit($opts);

echo "\n".'<p>Tabs are configured as visible in View, Change, and coPy modes.</p>';
echo "\n".'<p>Navigation buttons are restricted to the Up position.</p>';

require_once('./inc/footer2.php');

?>
