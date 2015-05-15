<?php

// May not work when Javascript required = true

// This appears to be broken if used with a second request for Change.

// Going from Change mode to View mode works OK (but Change again, and it displays an empty record?)

// $PME_sys_operation = 'View';

$this->rec = $this->key;

$this->operation = $this->labels['View'];

$this->recreate_fdd();

$this->recreate_displayed();

?>
