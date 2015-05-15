<?php

// Notify $opts['mfg']['email'] of all Update events

$opts['notify']['from']   = $opts['mfg']['email'];

$opts['notify']['prefix'] = $opts['mfg']['domain'].' - ';

$opts['notify']['wrap']   = '72';

$opts['notify']['update'] = $opts['mfg']['email'];

?>
