<?php

/*
$opts['fdd']['name'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 20 characters',
  'input'      => '',
  'maxlen'     => 20,
  'name'       => 'Name',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 20,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true,
  'help|ACP'	=> 'Netscape color name'
);

$opts['triggers']['insert']['before'] = './triggers/test-color-validation2.php';

$opts['triggers']['update']['before'] = $opts['triggers']['insert']['before'];


$opts['fdd']['hex'] = array(
  'default'    => '',
  'help|ACP'   => 'Limit 7 characters',
  'input'      => '',
  'maxlen'     => 7,
  'name'       => 'Hex',
  'options'    => 'ACPVDFL',
  'select'     => 'T',
  'size|ACP'   => 7,
  'sqlw'       => 'TRIM("$val_as")',
  'sort'       => true,
  'help|ACP'	=> 'Hexadecimal code'
);
*/

####################################

// test-color-validation2.php

$errors = array();

if(empty($newvals['name'])) { $errors['name'] = 'Please enter a Name'; }

if(empty($newvals['hex'])) { $errors['hex'] = 'Please enter a Hex'; }

if(count($errors) < 1){

	return true;

}else{

	foreach($newvals as $key => $value){

		$this->fdd[$key]['default'] = $value;

	}

	echo "\n".'<div style="background-color:#ffff00;color:#ff0000;padding:10px;margin:20px;border:1px solid #ff0000">';

	echo "\n".'<p>Problem</p>';

	foreach($errors as $key => $val) {

		echo "\n".'<ul><li>';

		echo "\n".'<strong>'.$this->fdd[$key]['name'].'</strong>';

		echo "\n".'<br>'.$val;

		if($opts['fdd']['default'] = ''){

			echo "\n".'<br>The default value for '.$this->fdd[$key]['name'].' is '.$opts['fdd']['default'];

		}

		echo "\n".'<br>Help: '.$this->fdd[$key]['help'];

		echo "\n".'<br>Maximum length '.number_format($this->fdd[$key]['maxlen']).' characters';

		echo "\n".'</li></ul>';

	}



	echo "\n".'<p align="center"><a href="javascript:history.go(-1)" onmouseover="self.status=document.referrer;return true"><img src="./images/pme-go-back.png" width="16" height="16" border="0" alt=""></a></p>';

	echo "\n".'</div>';

	require_once('./inc/footer2.php');

	exit;

}

?>
