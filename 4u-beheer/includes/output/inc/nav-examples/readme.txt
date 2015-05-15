Navigation configuration can be found in "dbconn.php" 

The following clip is from phpMyEdit.class.php. With a large 
number of records in a table, usage of goto and goto_combo 
causes a negative performance hit.

	var $default_buttons = array(
			'L' => array('<<','<','add','view','change','copy','delete','>','>>','goto','goto_combo'),
			'F' => array('<<','<','add','view','change','copy','delete','>','>>','goto','goto_combo'),
			'A' => array('save','more','cancel'),
			'C' => array('save','more','cancel'),
			'P' => array('save', 'cancel'),
			'D' => array('save','cancel'),
			'V' => array('change','cancel')
			);

THE CLASS FILE FURNISHED TO YOU READS:

	var $default_buttons = array(
			'L' => array('<<','<','add','view','change','copy','delete','>','>>'),
			'F' => array('<<','<','add','view','change','copy','delete','>','>>'),
			'A' => array('save','more','cancel'),
			'C' => array('save','more','cancel'),
			'P' => array('save', 'cancel'),
			'D' => array('save','cancel'),
			'V' => array('change','cancel')
			);

If you absolutely must have Go To buttons, then restore
'goto'  and 'goto_combo' to the $default_buttons array
inside phpMyEdit.class.php.

Basic navigation examples follow:

$opts['navigation'] = 'GUD';

if(!stristr($opts['navigation'], 'B')){

   // Graphic or Text navigation strongly recommended

   $opts['buttons']['L']['up'] = array('<<', '<', 'add', '>', '>>');

   $opts['buttons']['L']['down'] = $opts['buttons']['L']['up'];

   $opts['buttons']['F']['up'] = array('<<', '<', 'add', '>', '>>');

   $opts['buttons']['F']['down'] = $opts['buttons']['F']['up'];

   $opts['buttons']['V']['up'] = array('change', 'cancel');

   $opts['buttons']['V']['down'] = $opts['buttons']['V']['up'];

}else{

   // Button navigation (not recommended)

   $opts['buttons']['A']['up'] = array('save', 'more', 'cancel');
   $opts['buttons']['A']['down'] = $opts['buttons']['A']['up'];

   $opts['buttons']['C']['up'] = array('save', 'more', 'cancel');
   $opts['buttons']['C']['down'] = $opts['buttons']['C']['up'];

   $opts['buttons']['P']['up'] = array('save', 'cancel');
   $opts['buttons']['P']['down'] = $opts['buttons']['P']['up'];

   $opts['buttons']['D']['up'] = array('save', 'cancel');
   $opts['buttons']['D']['down'] = $opts['buttons']['D']['up'];

   $opts['buttons']['V']['up'] = array('change', 'cancel');
   $opts['buttons']['V']['down'] = $opts['buttons']['V']['up'];

   $opts['buttons']['L']['up'] = array('<<', '<', 'add', 'view', 'change', 'copy', 'delete', '>', '>>');
   $opts['buttons']['L']['down'] = $opts['buttons']['L']['up'];

   $opts['buttons']['F']['up'] = array('<<', '<', 'add', 'view', 'change', 'copy', 'delete', '>', '>>');
   $opts['buttons']['F']['down'] = $opts['buttons']['F']['up'];

}
