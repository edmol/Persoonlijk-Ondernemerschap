<?php

// Notify $opts['mfg']['email'] of all Insert events

$opts['notify']['from']   = $opts['mfg']['email'];

$opts['notify']['prefix'] = $opts['mfg']['domain'].' - ';

$opts['notify']['wrap']   = '72';

$opts['notify']['insert'] = $opts['mfg']['email'];

?>
