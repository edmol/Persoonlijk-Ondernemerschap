<?php 

function display_errors($errors)
{
	echo "\n".'<table border="0" cellspacing="0" cellpadding="10">';
   echo "\n".'<tr><td>';
   for($i=0; $i< count($errors); $i++){
		echo "\n".htmlspecialchars($errors[$i]);
  		echo $i < (count($errors)-1) ? '<br>' : '';
   }
   echo "\n".'</td></tr></table><br>';
};

// phpMyEdit-based user input validation script for MySQL table colors
// Works with functions defined in functions.php

$errors = array();

// Un-comment and/or edit the validation criteria to meet your needs.

// Beware of UNIQUE keys other than column 0 auto_increment.

// MySQL column 0: id - smallint() unsigned - not_null primary_key unsigned auto_increment
if($newvals['id'] != '' && !is_numeric($newvals['id'])) { $errors[] = 'Please enter numeric data for Id'; }

// MySQL column 1: name - char(20) - not_null multiple_key
// Validation of user input  for "name" may be required
if(empty($newvals['name'])) { $errors[] = 'Please enter a Name'; }

// MySQL column 2: hex - char(7) - not_null
// Validation of user input  for "hex" may be required
if(empty($newvals['hex'])) { $errors[] = 'Please enter a Hex'; }

if(count($errors) < 1){

    return true;

}elseif(count($errors) > 0){

    display_errors($errors);

    require_once('./inc/footer2.php');

    exit;

}

?>

 