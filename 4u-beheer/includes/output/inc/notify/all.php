<?php

// Notify $opts['mfg']['email'] of all form events

$opts['notify']['from']   = $opts['mfg']['email'];

$opts['notify']['prefix'] = $opts['mfg']['domain'].' - ';

$opts['notify']['wrap']   = '72';

$opts['notify']['all']    = $opts['mfg']['email'];

?>
