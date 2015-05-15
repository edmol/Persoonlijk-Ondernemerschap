<?php

// Sample PHP validation trigger for user input: Add, Change, Copy
// The table "colors" contains columns named "name" and "hex"
// Error message syntax: 
// $errors['col_name'] = 'Please do this';

/*
CREATE TABLE `demo_colors` (
  `id` smallint() unsigned NOT NULL auto_increment,
  `name` char(20) NOT NULL default '',
  `hex` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`)
) TYPE=MyISAM;
*/

$errors = array();

if(empty($newvals['name'])){

	$errors['name'] = 'Please enter a Name';

}elseif(!preg_match("|^[[:alnum:]]+$|i", $newvals['hex'])){

	$errors['name'] = 'Name must consist of alphanumeric characters';

}

if(empty($newvals['hex'])){

	$errors['hex'] = 'Please enter a Hex value';

}elseif(substr($newvals['hex'], 0, 1) != '#'){

	$errors['hex'] = 'The first character of the Hex entry must be the # sign';

}elseif(strlen($newvals['hex']) != 7){

	$errors['hex'] = 'Hex entries must be comprised of a # sign followed by 6 alphanumeric characters';

}elseif(!preg_match("|^[[:alnum:]#]+$|i", $newvals['hex'])){

	$errors['hex'] = 'Only alphanumeric characters are valid entries';

}

if(count($errors) < 1){

	return true;

}else{

	// foreach($newvals as $key => $value){ $this->fdd[$key]['default'] = $value; }

	echo "\n".'<div style="background-color:#ffff00;color:#ff0000;padding:10px;margin:20px;border:1px solid #ff0000">';

	echo "\n".'<p>Problem</p>';

	foreach($errors as $key => $val) {

		echo "\n".'<ul><li>';

		echo "\n".'<strong>'.$this->fdd[$key]['name'].'</strong>';

		echo "\n".'<br>'.$val;

		if($opts['fdd']['default'] = ''){

			echo "\n".'<br>The default value for '.$this->fdd[$key]['name'].' is '.$opts['fdd']['default'];

		}

		echo "\n".'<br>Help: '.$this->fdd[$key]['help'];

		echo "\n".'<br>Maximum length '.number_format($this->fdd[$key]['maxlen']).' characters';

		echo "\n".'</li></ul>';

	}

	// It may be best to force the user to Go Back, as opposed to recreating the form.

	echo "\n".'<p align="center"><a href="javascript:history.go(-1)" onmouseover="self.status=document.referrer;return true"><img src="./images/pme-go-back.png" width="16" height="16" border="0" alt=""></a></p>';

	echo "\n".'</div>';

	// $this->operation = $this->labels['Add']; 	// language unspecific, emulating moreadd/more button

	// $this->recreate_fdd();

	// $this->recreate_displayed();

	// return false; // stopping the insert proccess

	require_once('./inc/footer2.php');

	exit;

}

?>
