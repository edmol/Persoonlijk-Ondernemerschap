<?php

/*
Instead of deleting the record, change the status of the 'deleted' column to 1
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

$query2 = sprintf('UPDATE %s SET `deleted` = "1" WHERE `%s` = "%d"', $this->tb, $this->key, $this->rec);

// die($query2);

if($this->MyQuery($query2)){

	return false;

}else{

	echo "\n".'<p>'.mysql_error().'</p>';

	echo "\n".'<a href="javascript:history.go(-1)" onmouseover="self.status=document.referrer;return true">Go Back</a>';

	require_once('./inc/footer2.php');

	exit;

}

?>
