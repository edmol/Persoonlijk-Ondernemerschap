<?php

/**
 * Not sure about this... Fails to work as planned when Javascript required = true
 * Capture the last mysql_insert_id() and change the operation / page mode to 'View'
 * Usage: $opts['triggers']['insert']['after']  = 'triggers/view_rec_after_add.php';
 */

if($_POST['PME_sys_saveadd'] == 'Save' || $_POST['PME_sys_savechange'] == 'Save'){
	
	$PME_sys_operation = 'PME_op_View';

	$PME_sys_rec = $_POST['PME_sys_rec'];

	$mfg_label_list_rec = 'View';

	$this->operation = $mfg_label_list_rec;

}

?>

<p>
A <a href="http://platon.sk/projects/doc.php/phpMyEdit/html/configuration.triggers.html" target="_blank" title="Trigger">Trigger</a> 
is currently enabled to switch to View mode after 
<br>a new record is added: ./output/inc/view_rec_after_add.php
</p>

