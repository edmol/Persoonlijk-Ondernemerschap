<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
/**
 * After initial configuration, the average user will seldom need to change this file.
 * Database connection + variables affecting all generated forms.
 * Usage of the `change_log` log table schema is recommended, except
 * with the `change_log` itself.
 * If exclusively using Latin1 charsets, comment out the query below: SET NAMES utf8
 */

$opts['hn'] = 'localhost'; // MySQL host name (usually localhost)

$opts['db'] = 'potoets'; // MySQL database name

$opts['un'] = 'root'; // MySQL user name

$opts['pw'] = 'spiegel2013'; // MySQL password

$opts['mfg']['email'] = 'ed.mol@4u-change.com'; // Set *your* email address, e.g. username@domain.com

// Configuration is complete *unless* you need to comment out the UTF-8 query below.

$persistent = '';

if($persistent === (bool) @ini_get('allow_persistent')){

	if(!$opts['dbh'] = @mysql_pconnect($opts['hn'], $opts['un'], $opts['pw'])){

		die(mysql_error());

	}

}else{

	if(!$opts['dbh'] = @mysql_connect($opts['hn'], $opts['un'], $opts['pw'])){

		die(mysql_error());

	}

}

if(!@mysql_select_db($opts['db'], $opts['dbh'])) {

	die(mysql_error());

}

if(isset($opts['tb']) && !$table_exists = @mysql_query('SELECT 1 FROM `'.$opts['tb'].'` LIMIT 0')){

	die(mysql_error());

}

/**
 * UTF-8 character set query. See user contributed notes at
 * http://dev.mysql.com/doc/refman/5.0/en/charset-connection.html
 * Comment out the following query if not using UTF-8 character sets
 */

if(!@mysql_query('SET NAMES utf8')){ die(mysql_error()); }

/**
 * Variables set below could be re-defined atop individual forms,
 * for examply to apply Radio Button navigation to only one form.
 */

// Name of directory to which the forms will be written

$opts['mfg']['path'] = './output/';

// Image path to phpMyEdit icons

$opts['url'] = array('images' => './images/');

// $opts['mfg']['domain'] facilitates TITLE tags, etc., for the default header

$opts['mfg']['domain'] = str_replace('www.', '', $_SERVER['HTTP_HOST']);

// Usage of the change_log table is recommended, except with itself

if(isset($opts['tb']) && $opts['tb'] != 'change_log'){

	$opts['logtable'] = 'change_log';

}

$opts['cgi']['prefix']['data'] = 'PME_data_';

$opts['cgi']['prefix']['operation'] = 'PME_op_';

$opts['cgi']['prefix']['sys'] = 'PME_sys_';

$opts['dhtml']['prefix'] = 'PME_dhtml_';

$opts['display'] = array(
   'form' => true,
	'query' => true,
	'num_pages' => true,
	'num_records' => true,
	'sort' => false,
	'time' => false,
	'tabs' => true
);

$opts['js']['prefix'] = 'PME_js_';

// MFG label (not a phpMyEdit label) displayed in the page header if no action is set by phpMyEdit

$opts['mfg']['oper_label'] = '';

$opts['mfg']['menu_label'] = 'Terug naar hoofdmenu';

// Size of Select box for SET/ENUM search fields

$opts['multiple'] = 4;

/**
 * Navigation using goto and goto_combo boxes is disabled in phpMyEdit.class.php
 * because it causes a huge performance hit when tables contain many records.
 *
 * Radio Button navigation often confuses novice form users: BUD, BU, BD (not recommended)
 * Recommended settings for $opts['navigation'] are: GUD, TUD, GD, TD (Graphic, Text, Up, Down)
 */

$opts['navigation'] = 'DUG';

if(stristr($opts['navigation'], 'B')){

	// If Radio Button navigation is configured, Use the $default_buttons in phpMyEdit.class.php

}else{

	// Buttons for use with both Graphic and Text navigation

	$opts['buttons']['L']['up'] = array('<<', '<', 'add', '>', '>>');

	$opts['buttons']['L']['down'] = $opts['buttons']['L']['up'];

	$opts['buttons']['F']['up'] = array('<<', '<', 'add', '>', '>>');

	$opts['buttons']['F']['down'] = $opts['buttons']['F']['up'];

	$opts['buttons']['V']['up'] = array('change', 'cancel');

	$opts['buttons']['V']['down'] = $opts['buttons']['V']['up'];

}

?>