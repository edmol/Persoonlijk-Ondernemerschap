<?php 

require_once('./inc/hdr.php');

$filename = (string) array_key_exists('f', @$_REQUEST) ? get_magic_quotes_gpc() == 1 ? trim(stripslashes(strip_tags(@$_REQUEST['f']))) : trim(strip_tags(@$_REQUEST['f'])) : '';

$_REQUEST = '';

if($filename == ''){

	echo "\n".'<p>Filename not specified.</p>';

}elseif($filename == 'my_mfg_content.php'){

	echo "\n".'<h3>Sample Script - phpMyEdit Script</h3>';

	echo "\n".'<p>Code appearing below is a phpMyEdit script which you can access by <a href="http://www.php-form-generator.com/phpmyedit/output/'.$filename.'" title="./output/'.$filename.'" target="_blank" rel="nofollow">clicking here</a></p>';

	$string = file_get_contents('./output/'.$filename);

	highlight_string($string);

}

require_once('./inc/ftr.php'); 

?>

