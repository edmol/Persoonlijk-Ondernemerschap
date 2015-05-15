<?php 

/**
 * Purpose:  Help System pop-up delivering messages to form users.
 * Usage:   <a href="popup.php?tb=table&amp;col=column" target="_blank" onclick="openWin('popup.php?tb=table&amp;col=column','Help','width=517,height=400,menubar=yes,scrollbars=yes');return false">Help</a>
 * Requires ../inc/common.js be included in the calling page.
 * mfg_help_data fields:
 * `hid`, `tb_name`, `fd_num`, `fd_name`, `fd_name2`, `help_text`, 
 * `example`, `language`, `lang_code`, `char_set`, `dir`, `deleted`, `updated`
 */

require_once('../inc/dbconn.php'); // Required to resolve the image path used in the style.

// Defaults set, just in case the database query fails:

$dir = 'ltr'; // See http://www.w3.org/TR/html4/struct/dirlang.html

$lang_code = 'en-US';

$char_set = 'UTF-8';

$content = <<<HEREDOC_VAR
<p align="center">
	This script requires both a table name and a column name be passed to it. 
	<br><br>Syntax:<br><br>&lt;a href="popup.php?tb=table&amp;col=column" target="_blank"
	<br>onclick="openWin('popup.php?tb=table&amp;col=column','Help','width=517,height=400,menubar=yes,scrollbars=yes');return false"
	<br>onMouseOver="window.status='Help';return true"
	<br>onMouseOut="window.status='';return true"&gt;Help&lt;/a&gt;<br>
</p>
<p align="center">Requires ../inc/common.js be included in the calling page.</p>
<p align="center">
	<a title="Close Window" href="#" onClick="javascript:window.parent.close()">Close Window</a>
</p>
HEREDOC_VAR;

// Determine which table and column were requested:

$tb = array_key_exists('tb', @$_GET) ? trim(stripslashes(strip_tags(@$_GET['tb']))) : '';

$col = array_key_exists('col', @$_GET) ? trim(stripslashes(strip_tags(@$_GET['col']))) : '';

if($tb != '' && $col != ''){

	$opts['tb'] = $tb; // dbconn.php expects the table name in the format of $opts['tb']

	require_once('../inc/dbconn.php');

	$qry = sprintf('SELECT * FROM `mfg_help_data` WHERE `tb_name` = "%s" AND `fd_name` = "%s" AND `deleted` = "0" LIMIT 1;', $tb, $col);

	if($res = @mysql_query($qry)){

		if(@mysql_num_rows($res) == 0){

			$content = 'Data not found.';

			$content .= '<br>'.$qry;

		}else{

			while($ary = @mysql_fetch_assoc($res)){

				foreach($ary as $key => $val){

					$$key = htmlentities(stripslashes(trim($val)));

				}

			}

			// $content  = '<p dir="'.$dir.'">Literal field name: '.$fd_name.'</p>'."\n";
			// $content .= '<p dir="'.$dir.'">Pretty field name: '.$fd_name2.'</p>'."\n";
			// $content .= '<p dir="'.$dir.'">Help text: '.$help_text.'</p>'."\n";
			// $content .= '<p dir="'.$dir.'">Example: '.$example.'</p>'."\n";
			// $content .= '<p dir="'.$dir.'">Language: '.$language.'</p>'."\n";
			// $content .= '<p dir="'.$dir.'">Language code: '.$lang_code.'</p>'."\n";
			// $content .= '<p dir="'.$dir.'">Character set: '.$char_set.'</p>'."\n";
			// $content .= '<p dir="'.$dir.'">direction: '.$dir.'</p>'."\n";

			$content  = '<table align="center" border="1" cellpadding="5" cellspacing="1" width="100%">'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'" colspan="2">'.$qry.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Table name:</td><td dir="'.$dir.'">'.$tb_name.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Field name:</td><td dir="'.$dir.'">'.$fd_name.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Alternate name:</td><td dir="'.$dir.'">'.$fd_name2.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Help text:</td><td dir="'.$dir.'">'.$help_text.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Example:</td><td dir="'.$dir.'">'.$example.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Language:</td><td dir="'.$dir.'">'.$language.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Language code:</td><td dir="'.$dir.'">'.$lang_code.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Character set:</td><td dir="'.$dir.'">'.$char_set.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Direction:</td><td dir="'.$dir.'">'.$dir.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Deleted:</td><td dir="'.$dir.'">'.$deleted.'</td></tr>'."\n";
			$content .= '<tr valign="top"><td dir="'.$dir.'">Updated:</td><td dir="'.$dir.'">'.$updated.'</td></tr>'."\n";
			$content .= '</table>'."\n";

		}

	}else{

		$content = @mysql_error();

	}

}

// Direction, language code, and character set are displayed in the header:

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html401/loose.dtd">
<html dir="<?php echo $dir; ?>">
<head>
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="content-language" content="<?php echo $lang_code; ?>">
<meta http-equiv="content-script-type" content="text/javascript">
<meta http-equiv="content-style-type" content="text/css">
<meta http-equiv="charset" content="<?php echo $char_set; ?>">
<meta http-equiv="content-type" content="text/html; charset=<?php echo $char_set; ?>">
<meta http-equiv="created" content="Sun, 01 Sep 2002 19:01:07 GMT">
<meta http-equiv="pragma" content="no-cache">
<meta name="robots" content="none">
<style type="text/css">
<!--
body{
background-image:url(".<?php echo $opts['url']['images']; ?>tile.jpg");
background-repeat:repeat;
font-family:verdana,arial,helvetica,sans-serif;
font-size:11px;
margin:20px;
}
td{
font-family:verdana,arial,helvetica,sans-serif;
font-size:11px;
}
input,select,textarea{
font-family:verdana,arial,helvetica,sans-serif;
font-size:11px;
}
pre{
font-size:11px;
font-family:verdana,arial,helvetica,sans-serif;
}
.lite{
background-color:transparent;
color:#999999;
}
.warning{
background-color:transparent;
color:#ff0000;
}
-->
</style>

<title>Help</title>

</head>

<body>

<table align="center" bgcolor="#f8f8f8" border="0" cellpadding="20" cellspacing="0" style="border:thin outset #999999" width="100%">

	<tr>

		<td>

			<?php echo $content; ?>

		</td>

	</tr>

</table>

<p align="center">

	<a href="#" onClick="javascript:window.print()" title="Print">Print</a> - 

	<a href="#" onClick="javascript:window.parent.close()" title="Close Window">Close Window</a>

</p>

</body>

</html>
