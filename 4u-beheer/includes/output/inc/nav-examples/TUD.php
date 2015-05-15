<?php

// Text navigation example

// GUD nav and TUD nav can essentially use the same settings:

$opts['navigation'] = 'TUD';

$opts['buttons']['L']['up'] = array('<<', '<', 'add', '>', '>>');

$opts['buttons']['L']['down'] = $opts['buttons']['L']['up'];

$opts['buttons']['F']['up'] = array('<<', '<', 'add', '>', '>>');

$opts['buttons']['F']['down'] = $opts['buttons']['F']['up'];

$opts['buttons']['V']['up'] = array('change', 'cancel');

$opts['buttons']['V']['down'] = $opts['buttons']['V']['up'];

?>
