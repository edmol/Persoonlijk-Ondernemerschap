<?php

/*
Validation example, a Trigger include file.
Display error message if validation fails, include the appropriate footer, and exit.

Variables available within triggers include the following.
$this             object reference
$this->dbh        initialized MySQL database handle
$this->key        primary key name
$this->key_type   primary key type
$this->key_delim  primary key deliminator
$this->rec        primary key value (update and delete only)
$newvals          associative array of new values (update and insert only)
$oldvals          associative array of old values (update and delete only)
$changed          array of keys with changed values
*/

$errors = array();

foreach($newvals as $key => $val){

	switch($key)

	{

		Case 'email':

			if(empty($email)){ 

				$errors[] = 'You did not enter an email address'; 

			}elseif(!eregi("^[_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3}$", $email)){ 

				$errors[] = 'Invalid e-mail address: '.$email;

			}

			break;

		default:

			break;

	};

}

if(count($errors) > 0){

	echo "\n".'<p>Problem...</p><ol>';

	for ($i = 0; $i < count($errors); $i++){

		echo "\n".'<li>'.$errors[$i].'</li>';

	}

	echo "\n".'</ol>';

	echo "\n".'<a href="javascript:history.go(-1)" onmouseover="self.status=document.referrer;return true">Go Back</a>';

	require_once('./inc/footer2.php');

	exit;

}

?>
