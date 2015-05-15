<?php

/**
 * Page header for the generated forms (included after dbconn.php)
 * The current $operation is displayed in the page header.
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

}elseif(isset($_REQUEST['PME_sys_savechange'])){

   $operation = 'View';

}elseif(isset($opts['mfg']['oper_label'])){

   $operation = $opts['mfg']['oper_label'];     // Set in dbconn.php

}

if(basename($_SERVER['PHP_SELF']) == 'index.php'){

	$operation = $_SERVER['REQUEST_URI'];

}
require_once('./style/blue2.php');
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

<link href="./style/generic2.css" rel="stylesheet" type="text/css" lang="en">

<script src="./js/common.js" type="text/javascript" language="javascript"><!--  --></script>

<title><?php echo !empty($operation) ? strip_tags($operation) : 'Menu'; ?></title>

</head>

<body>
<img src=http://www.4u-change.com/4u-beheer/zelfbeeld.jpeg height="100" width="100">
</br>

<!-- "Container table" for the phpMyEdit form is terminated in footer2.php -->

<table class="container" border="0" cellpadding="0" cellspacing="0">

	<tr valign="top">

		<td class="nopadding">

			<table border="0" cellpadding="0" cellspacing="0">

				<tr valign="top">

					<td class="nopadding"><img src="images/page_corner_tl.gif" width="30" height="30" alt="" border="0" /></td>

					<td class="nopadding" background="images/page_edge_top.gif"><img src="images/spacer.gif" width="30" height="1" alt="" border="0" /></td>

					<td class="nopadding"><img src="images/page_corner_tr.gif" width="30" height="30" alt="" border="0" /></td>

				</tr>

				<tr valign="top">

					<td class="nopadding" background="images/page_edge_left.gif"><img src="images/spacer.gif" width="1" height="1" alt="" border="0" /></td>

					<td class="nopadding" background="images/bkdn2.jpg">

						<div class="container-cell">

						<?php echo !empty($operation) && basename($_SERVER['PHP_SELF']) != 'index.php' ? '<p style="margin:5px 0px 5px 8px"><strong class="contrast">'.$operation.'</strong></p>' : ''; ?>

						<!-- phpMyEdit form follows -->

