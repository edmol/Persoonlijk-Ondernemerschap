<?php

/**
 * Optionally included in page footer, to collect User Agent details.
 * Initializes an array, populates it with user agent (web browser) details.
 * Requires the table `mfg_user_log` for recording page requests.
 * $submit_token is configured below as basename($_SERVER['PHP_SELF']);

   CREATE TABLE `mfg_user_log` (
     `id` mediumint(6) NOT NULL auto_increment,
     `submit_token` varchar(32) NOT NULL default '',
     `ip` varchar(20) NOT NULL default '',
     `host` varchar(75) NOT NULL default '',
     `user` varchar(30) NOT NULL default '',
     `agent` varchar(255) NOT NULL default '',
     `referer` varchar(255) NOT NULL default '',
     `method` varchar(10) NOT NULL default '',
     `request` varchar(100) NOT NULL default '',
     `data` text NOT NULL,
     `updated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
     PRIMARY KEY  (`id`),
     KEY `updated` (`updated`)
   ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

 */

$ua = array();

if(!empty($_SERVER["REMOTE_HOST"])){

	$ua['host'] = $_SERVER["REMOTE_HOST"];

}elseif(!empty($_SERVER['REMOTE_ADDR'])){

	$ua['host'] = @gethostbyaddr($_SERVER['REMOTE_ADDR']);

}elseif(!empty($REMOTE_HOST)){

	$ua['host'] = $REMOTE_HOST;

}else{

	$ua['host'] = '';

}

if(isset($_SERVER['HTTP_REFERER'])){

	$ua['referer'] = $_SERVER['HTTP_REFERER'];

}elseif(isset($_ENV['HTTP_REFERER'])){

	$ua['referer'] = $_ENV['HTTP_REFERER'];

}elseif(isset($HTTP_REFERER)){

	$ua['referer'] = $HTTP_REFERER;

}else{

	$ua['referer'] = '';

}

$ua['request'] = getenv('QUERY_STRING') == '' ? @$_SERVER['PHP_SELF'] : @$_SERVER['PHP_SELF'].'?'.getenv('QUERY_STRING');

if(getenv('HTTP_CLIENT_IP')){

	$ua['ip'] = getenv('HTTP_CLIENT_IP');

}elseif(getenv('HTTP_X_FORWARDED_FOR')){

	$ua['ip'] = getenv('HTTP_X_FORWARDED_FOR');

	if(empty($ua['host'])){

		$ua['host'] = @gethostbyaddr($_SERVER['HTTP_X_FORWARDED_FOR']);

	}

}elseif(getenv('REMOTE_ADDR')){

	$ua['ip'] = getenv('REMOTE_ADDR');

	if(empty($ua['host'])){

		$ua['host'] = @gethostbyaddr($_SERVER['REMOTE_ADDR']);

	}

}else{

	$ua['ip'] = '';

}

if(isset($REMOTE_USER)){

	$ua['user'] = $REMOTE_USER;

}elseif(!empty($_ENV) && isset($_ENV['REMOTE_USER'])){

	$ua['user'] = $_ENV['REMOTE_USER'];

}elseif(getenv('REMOTE_USER')){

	$ua['user'] = getenv('REMOTE_USER');

}elseif(isset($_SERVER['PHP_AUTH_USER'])){

	$ua['user'] = $_SERVER['PHP_AUTH_USER'];

}elseif(isset($_SESSION['sess_user_name'])){

	$ua['user'] = $_SESSION['sess_user_name'];

}elseif(!empty($_COOKIE['user_name'])){

	$ua['user'] = $_COOKIE['user_name'];

}else{

	$ua['user'] = '';

}

$ua['agent'] = isset($HTTP_USER_AGENT) ? $HTTP_USER_AGENT : $_SERVER['HTTP_USER_AGENT'];

$ua['method'] = getenv('REQUEST_METHOD');

$submit_token = basename($_SERVER['PHP_SELF']);

foreach($ua as $key => $val){

	$ua["$key"] = trim(stripslashes($val));

}

$qry2 = sprintf("INSERT INTO `mfg_user_log` 
	  	(
         `submit_token`,
         `ip`,
         `host`,
         `user`,
         `agent`,
         `referer`,
         `method`,
         `request`
		)
            VALUES 
			(
               '%s',
               '%s',
               '%s',
               '%s',
               '%s',
               '%s',
               '%s',
               '%s'
               )",
               $submit_token,
               $ua['ip'],
               $ua['host'],
               $ua['user'],
               $ua['agent'],
               $ua['referer'],
               $ua['method'],
               $ua['request']
			);

$res2 = @mysql_query($qry2); // Lacks error-checking.

?>
