<?php

/**
 * Header used by the selectable stylesheet demo forms.
 * Alternate (simple) page header for the generated forms.
 * Certain page modes (modes of operation) are well defined.
 * Others are more subtle. In order to properly utilize certain
 * use PHP stylesheets (e.g. /style/blue.php) within the included
 * header, determine the page mode *before* including the header.
 */

if(isset($_REQUEST['PME_sys_operation'])){

   $operation = str_replace('PME_op_', '', $_REQUEST['PME_sys_operation']);

}elseif(isset($_REQUEST['PME_sys_morechange'])){

   $operation = $_REQUEST['PME_sys_morechange']; // returns Apply

}elseif(isset($_REQUEST['PME_sys_moreadd'])){

   $operation = $_REQUEST['PME_sys_moreadd'];    // returns More

}else{

   $operation = $opts['mfg']['oper_label'];     // No page mode is defined

}

// Work-around for usage with the menu script: /mfg571/output/index.php

if(basename($_SERVER['PHP_SELF']) == 'index.php'){

	$operation = $_SERVER['REQUEST_URI'];

}

// Cookies used for the selectable stylesheet forms (demo forms)

$opts['expiry'] = 60*60*24*365;

if(!isset($_COOKIE['style'])){

	$style_num = array_key_exists('css', @$_REQUEST) ? trim(stripslashes(strip_tags(@$_REQUEST['css']))) : 1;

	setcookie('style', $style_num, time() + $opts['expiry'], '/', '.'.$opts['mfg']['domain'], 0);

	$_COOKIE['style'] = $style_num;

}elseif(isset($_COOKIE['style'])){

	if(array_key_exists('css', @$_REQUEST)){

		$style_num = trim(stripslashes(strip_tags(@$_REQUEST['css'])));

	}else{

		$style_num = $_COOKIE['style'];

	}

	if($_COOKIE['style'] != $style_num){

		setcookie('style', $style_num, time() + $opts['expiry'], '/', '.'.$opts['mfg']['domain'], 0);

		$_COOKIE['style'] = $style_num;

	}

}

if(!@SID == ''){

	$opts['cookies'] = 0;

}else{

	$opts['cookies'] = 1;

}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="cache-control" content="no-cache">

<meta http-equiv="content-language" content="en-US">

<meta http-equiv="content-script-type" content="text/javascript">

<meta http-equiv="content-style-type" content="text/css">

<meta http-equiv="charset" content="UTF-8">

<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<meta http-equiv="created" content="<?php echo date('r'); ?>">

<meta http-equiv="expires" content="Fri, 01 Jan 1990 00:00:00 GMT"> 

<meta http-equiv="pragma" content="no-cache">

<meta name="googlebot" content="noarchive">

<meta name="robots" content="none">

<?php

// Evaluate the stylesheet requested by demo form

switch($style_num)
{

	Case 1:
		echo '<link href="./style/generic.small.css" rel="stylesheet" type="text/css" lang="en">';
		break;
	Case 2:
		echo '<link href="./style/generic.minimal.css" rel="stylesheet" type="text/css" lang="en">';
		break;	
	Case 3:
		require_once('./style/blue.php');
		break;
	Case 4:
		require_once('./style/blue2.php');
		break;
	Case 5:
		echo '<link href="./style/monospace.css" rel="stylesheet" type="text/css" lang="en">';
		break;
	Case 0:
	default:
		echo '<link href="./style/generic.css" rel="stylesheet" type="text/css" lang="en">';
		break;
};

?>

<script src="./js/common.js" type="text/javascript" language="javascript"><!--  --></script>

<title><?php echo !empty($operation) ? strip_tags($operation) : 'Menu'; ?></title>

</head>

<body>

<!-- Container table for phpMyEdit form (terminated in the included footer). Set center alignment if preferred. -->

<table class="container" border="0" cellspacing="0" cellpadding="0">

	<tr>

		<td class="container"> 

			<!-- Container cell for phpMyEdit form should be closed in the included footer -->

			<?php echo !empty($operation) ? '<div style="margin:5px 0px 5px 8px"><strong class="contrast">'.$operation.'</strong></div>' : ''; ?>

			<!-- phpMyEdit form follows -->

