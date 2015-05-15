<?php

$errors = array();

$nothing = 'Nothing entered. Please go back.';

if($newvals['name'] == ''){

	$errors['name'] = $nothing;

}elseif(strlen($newvals['name']) < 5){

	$errors['name'] = '&quot;'.$newvals['name'].'&quot; - Entries must be at least 5 characters long';

}

if(strlen($newvals['hex']) == ''){

	$errors['hex'] = $nothing;

}elseif(strlen($newvals['hex']) < 5){

	$errors['hex'] = '&quot;'.$newvals['hex'].'&quot; - Entries  must be at least 5 characters long';

}

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

	echo "\n".'<p><a href="javascript:history.go(-1)" onmouseover="self.status=document.referrer;return true">Go Back</a></p>';


	echo "\n".'</div>';

	require_once('./inc/footer2.php');

	exit;

}


	// Field label:    $this->fdd[$key]['name']
	// Help:           $this->fdd[$key]['help']
	// Maximum Length: $this->fdd[$key]['maxlen']


// $this->operation = $this->labels['Add']; // language unspecific, emulating moreadd/more button

// $this->recreate_fdd();

// $this->recreate_displayed();

// return false; // stopping the insert proccess


/*
for ($k = 0; $k < $this->num_fds; $k++) {
	if (isset($this->fdd[$k]['js']['regexp'])) {
		$value = $newvals[$this->fds[$k]];
		if(!preg_match($this->fdd[$k]['js']['regexp'], $value)){
			$errors[$this->fds[$k]] = $this->fdd[$k]['js']['hint'];
		}
	}
}
*/

