See the documentation at
http://platon.sk/projects/doc.php/phpMyEdit/html/configuration.triggers.html

Also, use the Forum's search feature to look for "trigger" or "triggers"
http://platon.sk/forum/projects/?c=5

/**
 * Resources available inside triggers include the following
 * 
 * $this               object reference
 * $this->dbh	        initialized MySQL database handle
 * $this->key	        primary key name
 * $this->key_type	  primary key type
 * $this->key_delim	  primary key deliminator
 * $this->rec	        primary key value (update and delete only)
 * $newvals	           associative array of new values (update and insert only)
 * $oldvals	           associative array of old values (update and delete only)
 * $changed	           array of keys with changed values
 *
 */


foreach($newvals as $key => $val){

  if($key == 'some_column_name') { 

    $newvals[$key] = strtoupper($newvals[$val]); 

  }

}
