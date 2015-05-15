<?php

/**
 * Displays column names that are reserved words in PHP or MySQL.
 * Rename this file as badwords.php or something similar.
 * This was provided as badwords.txt to prevent it from getting hung up in spam filters.
 * Configure your database connection below.
 */

ob_start('ob_gzhandler'); // Comment out if not supported by your PHP installation.

$opts = array();

require_once('./output/inc/dbconn.php'); // Required (also) to resolve the image path used in the page header.

$opts['persistent'] = '';

if($opts['persistent'] == (bool) @ini_get('allow_persistent')){

	if(!$opts['dbl'] = @mysql_pconnect($opts['hn'], $opts['un'], $opts['pw'])){

		die(mysql_error());

	}

}else{

	if(!$opts['dbl'] = @mysql_connect($opts['hn'], $opts['un'], $opts['pw'])){

		die(mysql_error());

	}

}

if(!@mysql_select_db($opts['db'], $opts['dbl'])) {

	die(mysql_error());

}

// Example of testing to make sure a table exists before querying it.
// if(isset($opts['tb']) && !$table_exists = @mysql_query('SELECT 1 FROM `'.$opts['tb'].'` LIMIT 0')){
	// die(mysql_error());
// }

function evaluate_name($name)
{
	global $opts;
	$ret = '';
	// ToDo: use preg_match() instead of eregi()
	if(!eregi("^[a-z0-9_]+$", $name)) { 
		$ret .= "\n".'<li class="contrast">'.$name.' - names should begin with a letter (a-z) and optionally be followed by more letters, numbers (0-9), or the underscore (_) character</li>';
		$ret .= stristr($name, '-') ? "\n".'<li class="contrast">The hyphen in &quot;'.$name.'&quot; can cause unexpected results if used in a double-quoted line of PHP code.</li>' : '';
	}else{
		$ret .= "\n".'<li>'.$name.' '.(stristr($opts['field_flags'], 'primary_key') ? ' (primary key)' : '').'</li>'."\n";
	}
	if(in_array(strtoupper($name), $opts['mysql_reserved_words'])){
		$ret .= "\n".'<li class="contrast">'.$name.' is a MySQL reserved word</li>';
	}elseif(in_array(strtoupper($name), $opts['php_reserved_words'])){
		$ret .= "\n".'<li class="contrast">'.$name.' is a PHP reserved word</li>';
	}
	return $ret;
};

error_reporting(E_ALL & ~E_NOTICE);

$opts['field_flags'] = '';

// Reserved word lists compiled 2007-05-18 incl. PHP 5 & MySQL 5


$opts['mysql_reserved_words'] = array(
	'ACTION',
	'ADD',
	'ALL',
	'ALTER',
	'ANALYZE',
	'AND',
	'AS',
	'ASC',
	'ASENSITIVE',
	'BEFORE', 
	'BETWEEN', 
	'BIGINT', 
	'BINARY', 
	'BIT', 
	'BLOB', 
	'BOTH', 
	'BY', 
	'CALL', 
	'CASCADE', 
	'CASE', 
	'CHANGE', 
	'CHAR', 
	'CHARACTER', 
	'CHECK', 
	'COLLATE', 
	'COLUMN', 
	'CONDITION', 
	'CONSTRAINT', 
	'CONTINUE', 
	'CONVERT', 
	'CREATE', 
	'CROSS', 
	'CURRENT_DATE', 
	'CURRENT_TIME', 
	'CURRENT_TIMESTAMP', 
	'CURRENT_USER', 
	'CURSOR', 
	'DATABASE', 
	'DATABASES', 
	'DATE', 
	'DAY_HOUR', 
	'DAY_MICROSECOND', 
	'DAY_MINUTE', 
	'DAY_SECOND', 
	'DEC', 
	'DECIMAL', 
	'DECLARE', 
	'DEFAULT', 
	'DELAYED', 
	'DELETE', 
	'DESC', 
	'DESCRIBE', 
	'DETERMINISTIC', 
	'DISTINCT', 
	'DISTINCTROW', 
	'DIV', 
	'DOUBLE', 
	'DROP', 
	'DUAL', 
	'EACH', 
	'ELSE', 
	'ELSEIF', 
	'ENCLOSED', 
	'ENUM', 
	'ESCAPED', 
	'EXISTS', 
	'EXIT', 
	'EXPLAIN', 
	'FALSE', 
	'FETCH', 
	'FLOAT', 
	'FLOAT4', 
	'FLOAT8', 
	'FOR', 
	'FORCE', 
	'FOREIGN', 
	'FROM', 
	'FULLTEXT', 
	'GRANT', 
	'GROUP', 
	'HAVING', 
	'HIGH_PRIORITY', 
	'HOUR_MICROSECOND', 
	'HOUR_MINUTE', 
	'HOUR_SECOND', 
	'IF', 
	'IGNORE', 
	'IN', 
	'INDEX', 
	'INFILE', 
	'INNER', 
	'INOUT', 
	'INSENSITIVE', 
	'INSERT', 
	'INT', 
	'INT1', 
	'INT2', 
	'INT3', 
	'INT4', 
	'INT8', 
	'INTEGER', 
	'INTERVAL', 
	'INTO', 
	'IS', 
	'ITERATE', 
	'JOIN', 
	'KEY', 
	'KEYS', 
	'KILL', 
	'LEADING', 
	'LEAVE', 
	'LEFT', 
	'LIKE', 
	'LIMIT', 
	'LINES', 
	'LOAD', 
	'LOCALTIME', 
	'LOCALTIMESTAMP', 
	'LOCK', 
	'LONG', 
	'LONGBLOB', 
	'LONGTEXT', 
	'LOOP', 
	'LOW_PRIORITY', 
	'MATCH', 
	'MEDIUMBLOB', 
	'MEDIUMINT', 
	'MEDIUMTEXT', 
	'MIDDLEINT', 
	'MINUTE_MICROSECOND', 
	'MINUTE_SECOND', 
	'MOD', 
	'MODIFIES', 
	'NATURAL', 
	'NO', 
	'NO_WRITE_TO_BINLOG', 
	'NOT', 
	'NULL', 
	'NUMERIC', 
	'ON', 
	'OPTIMIZE', 
	'OPTION', 
	'OPTIONALLY', 
	'OR', 
	'ORDER', 
	'OUT', 
	'OUTER', 
	'OUTFILE', 
	'PRECISION', 
	'PRIMARY', 
	'PROCEDURE', 
	'PURGE', 
	'RAID0', 
	'READ', 
	'READS', 
	'REAL', 
	'REFERENCES', 
	'REGEXP', 
	'RELEASE', 
	'RENAME', 
	'REPEAT', 
	'REPLACE', 
	'REQUIRE', 
	'RESTRICT', 
	'RETURN', 
	'REVOKE', 
	'RIGHT', 
	'RLIKE', 
	'SCHEMA', 
	'SCHEMAS', 
	'SECOND_MICROSECOND', 
	'SELECT', 
	'SENSITIVE', 
	'SEPARATOR', 
	'SET', 
	'SHOW', 
	'SMALLINT', 
	'SONAME', 
	'SPATIAL', 
	'SPECIFIC', 
	'SQL', 
	'SQL_BIG_RESULT', 
	'SQL_CALC_FOUND_ROWS', 
	'SQL_SMALL_RESULT', 
	'SQLEXCEPTION', 
	'SQLSTATE', 
	'SQLWARNING', 
	'SSL', 
	'STARTING', 
	'STRAIGHT_JOIN', 
	'TABLE', 
	'TERMINATED', 
	'TEXT', 
	'THEN', 
	'TIME', 
	'TIMESTAMP', 
	'TINYBLOB', 
	'TINYINT', 
	'TINYTEXT', 
	'TO', 
	'TRAILING', 
	'TRIGGER', 
	'TRUE', 
	'UNDO', 
	'UNION', 
	'UNIQUE', 
	'UNLOCK', 
	'UNSIGNED', 
	'UPDATE', 
	'USAGE', 
	'USE', 
	'USING', 
	'UTC_DATE', 
	'UTC_TIME', 
	'UTC_TIMESTAMP', 
	'VALUES', 
	'VARBINARY', 
	'VARCHAR', 
	'VARCHARACTER', 
	'VARYING', 
	'WHEN', 
	'WHERE', 
	'WHILE', 
	'WITH', 
	'WRITE', 
	'X509', 
	'XOR', 
	'YEAR_MONTH', 
	'ZEROFILL'
);



$opts['php_reserved_words'] = array(
	'__CLASS__', 
	'__COMPILER_HALT_OFFSET__', 
	'__FILE__', 
	'__FUNCTION__', 
	'__LINE__', 
	'__METHOD__', 
	'__PHP_INCOMPLETE_CLASS', 
	'ABDAY_1', 
	'ABDAY_2', 
	'ABDAY_3', 
	'ABDAY_4', 
	'ABDAY_5', 
	'ABDAY_6', 
	'ABDAY_7', 
	'ABMON_1', 
	'ABMON_10', 
	'ABMON_11', 
	'ABMON_12', 
	'ABMON_2', 
	'ABMON_3', 
	'ABMON_4', 
	'ABMON_5', 
	'ABMON_6', 
	'ABMON_7', 
	'ABMON_8', 
	'ABMON_9', 
	'ABSTRACT ', 
	'ALT_DIGITS', 
	'AM_STR', 
	'AND', 
	'ARGC', 
	'ARGV', 
	'ARRAY', 
	'AS', 
	'ASSERT_ACTIVE', 
	'ASSERT_BAIL', 
	'ASSERT_CALLBACK', 
	'ASSERT_QUIET_EVAL', 
	'ASSERT_WARNING', 
	'AUTH_TYPE', 
	'BREAK', 
	'CASE', 
	'CASE_LOWER', 
	'CASE_UPPER', 
	'CATCH ', 
	'CFUNCTION ', 
	'CHAR_MAX', 
	'CLASS', 
	'CLONE ', 
	'CODESET', 
	'CONNECTION_ABORTED', 
	'CONNECTION_NORMAL', 
	'CONNECTION_TIMEOUT', 
	'CONST', 
	'CONTINUE', 
	'COUNT_NORMAL', 
	'COUNT_RECURSIVE', 
	'CREDITS_ALL', 
	'CREDITS_DOCS', 
	'CREDITS_FULLPAGE', 
	'CREDITS_GENERAL', 
	'CREDITS_GROUP', 
	'CREDITS_MODULES', 
	'CREDITS_QA', 
	'CREDITS_SAPI', 
	'CRNCYSTR', 
	'CRYPT_BLOWFISH', 
	'CRYPT_EXT_DES', 
	'CRYPT_MD5', 
	'CRYPT_SALT_LENGTH', 
	'CRYPT_STD_DES', 
	'CURRENCY_SYMBOL', 
	'D_FMT', 
	'D_T_FMT', 
	'DAY_1', 
	'DAY_2', 
	'DAY_3', 
	'DAY_4', 
	'DAY_5', 
	'DAY_6', 
	'DAY_7', 
	'DECIMAL_POINT', 
	'DECLARE', 
	'DEFAULT', 
	'DEFAULT_INCLUDE_PATH', 
	'DIE', 
	'DIRECTORY_SEPARATOR', 
	'DO', 
	'DOCUMENT_ROOT', 
	'E_ALL', 
	'E_COMPILE_ERROR', 
	'E_COMPILE_WARNING', 
	'E_CORE_ERROR', 
	'E_CORE_WARNING', 
	'E_ERROR', 
	'E_NOTICE', 
	'E_PARSE', 
	'E_STRICT', 
	'E_USER_ERROR', 
	'E_USER_NOTICE', 
	'E_USER_WARNING', 
	'E_WARNING', 
	'ECHO', 
	'ELSE', 
	'ELSEIF', 
	'EMPTY', 
	'ENDDECLARE', 
	'ENDFOR', 
	'ENDFOREACH', 
	'ENDIF', 
	'ENDSWITCH', 
	'ENDWHILE', 
	'ENT_COMPAT', 
	'ENT_NOQUOTES', 
	'ENT_QUOTES', 
	'ERA', 
	'ERA_D_FMT', 
	'ERA_D_T_FMT', 
	'ERA_T_FMT', 
	'ERA_YEAR', 
	'EVAL', 
	'EXCEPTION', 
	'EXIT', 
	'EXTENDS', 
	'EXTR_IF_EXISTS', 
	'EXTR_OVERWRITE', 
	'EXTR_PREFIX_ALL', 
	'EXTR_PREFIX_IF_EXISTS', 
	'EXTR_PREFIX_INVALID', 
	'EXTR_PREFIX_SAME', 
	'EXTR_SKIP', 
	'FINAL ', 
	'FOR', 
	'FOREACH', 
	'FRAC_DIGITS', 
	'FUNCTION', 
	'GATEWAY_INTERFACE', 
	'GLOBAL', 
	'GROUPING', 
	'HTML_ENTITIES', 
	'HTML_SPECIALCHARS', 
	'HTTP_ACCEPT', 
	'HTTP_ACCEPT_CHARSET', 
	'HTTP_ACCEPT_ENCODING', 
	'HTTP_ACCEPT_LANGUAGE', 
	'HTTP_CONNECTION', 
	'HTTP_HOST', 
	'HTTP_REFERER', 
	'HTTP_USER_AGENT', 
	'HTTPS', 
	'IF', 
	'IMPLEMENTS ', 
	'INCLUDE', 
	'INCLUDE_ONCE', 
	'INFO_ALL', 
	'INFO_CONFIGURATION', 
	'INFO_CREDITS', 
	'INFO_ENVIRONMENT', 
	'INFO_GENERAL', 
	'INFO_LICENSE', 
	'INFO_MODULES', 
	'INFO_VARIABLES', 
	'INI_ALL', 
	'INI_PERDIR', 
	'INI_SYSTEM', 
	'INI_USER', 
	'INT_CURR_SYMBOL', 
	'INT_FRAC_DIGITS', 
	'INTERFACE ', 
	'ISSET', 
	'LC_ALL', 
	'LC_COLLATE', 
	'LC_CTYPE', 
	'LC_MESSAGES', 
	'LC_MONETARY', 
	'LC_NUMERIC', 
	'LC_TIME', 
	'LIST', 
	'LOCK_EX', 
	'LOCK_NB', 
	'LOCK_SH', 
	'LOCK_UN', 
	'LOG_ALERT', 
	'LOG_AUTH', 
	'LOG_AUTHPRIV', 
	'LOG_CONS', 
	'LOG_CRIT', 
	'LOG_CRON', 
	'LOG_DAEMON', 
	'LOG_DEBUG', 
	'LOG_EMERG', 
	'LOG_ERR', 
	'LOG_INFO', 
	'LOG_KERN', 
	'LOG_LOCAL0', 
	'LOG_LOCAL1', 
	'LOG_LOCAL2', 
	'LOG_LOCAL3', 
	'LOG_LOCAL4', 
	'LOG_LOCAL5', 
	'LOG_LOCAL6', 
	'LOG_LOCAL7', 
	'LOG_LPR', 
	'LOG_MAIL', 
	'LOG_NDELAY', 
	'LOG_NEWS', 
	'LOG_NOTICE', 
	'LOG_NOWAIT', 
	'LOG_ODELAY', 
	'LOG_PERROR', 
	'LOG_PID', 
	'LOG_SYSLOG', 
	'LOG_USER', 
	'LOG_UUCP', 
	'LOG_WARNING', 
	'M_1_PI', 
	'M_2_PI', 
	'M_2_SQRTPI', 
	'M_E', 
	'M_LN10', 
	'M_LN2', 
	'M_LOG10E', 
	'M_LOG2E', 
	'M_PI', 
	'M_PI_2', 
	'M_PI_4', 
	'M_SQRT1_2', 
	'M_SQRT2', 
	'MON_1', 
	'MON_10', 
	'MON_11', 
	'MON_12', 
	'MON_2', 
	'MON_3', 
	'MON_4', 
	'MON_5', 
	'MON_6', 
	'MON_7', 
	'MON_8', 
	'MON_9', 
	'MON_DECIMAL_POINT', 
	'MON_GROUPING', 
	'MON_THOUSANDS_SEP', 
	'N_CS_PRECEDES', 
	'N_SEP_BY_SPACE', 
	'N_SIGN_POSN', 
	'NEGATIVE_SIGN', 
	'NEW', 
	'NOEXPR', 
	'NOSTR', 
	'OLD_FUNCTION ', 
	'OR', 
	'P_CS_PRECEDES', 
	'P_SEP_BY_SPACE', 
	'P_SIGN_POSN', 
	'PATH_SEPARATOR', 
	'PATH_TRANSLATED', 
	'PATHINFO_BASENAME', 
	'PATHINFO_DIRNAME', 
	'PATHINFO_EXTENSION', 
	'PEAR_EXTENSION_DIR', 
	'PEAR_INSTALL_DIR', 
	'PHP_AUTH_DIGEST', 
	'PHP_AUTH_PW', 
	'PHP_AUTH_USER', 
	'PHP_BINDIR', 
	'PHP_CONFIG_FILE_PATH', 
	'PHP_CONFIG_FILE_SCAN_DIR', 
	'PHP_DATADIR', 
	'PHP_EOL', 
	'PHP_EXTENSION_DIR', 
	'PHP_INT_MAX', 
	'PHP_INT_SIZE', 
	'PHP_LIBDIR', 
	'PHP_LOCALSTATEDIR', 
	'PHP_OS', 
	'PHP_OUTPUT_HANDLER_CONT', 
	'PHP_OUTPUT_HANDLER_END', 
	'PHP_OUTPUT_HANDLER_START', 
	'PHP_PREFIX', 
	'PHP_SAPI', 
	'PHP_SELF', 
	'PHP_SHLIB_SUFFIX', 
	'PHP_SYSCONFDIR', 
	'PHP_USER_FILTER', 
	'PHP_USER_FILTER ', 
	'PHP_VERSION', 
	'PM_STR', 
	'POSITIVE_SIGN', 
	'PRINT', 
	'PRIVATE ', 
	'PROTECTED ', 
	'PUBLIC ', 
	'QUERY_STRING', 
	'RADIXCHAR', 
	'REMOTE_ADDR', 
	'REMOTE_HOST', 
	'REMOTE_PORT', 
	'REQUEST_METHOD', 
	'REQUEST_TIME', 
	'REQUEST_URI', 
	'REQUIRE', 
	'REQUIRE_ONCE', 
	'RETURN', 
	'SCRIPT_FILENAME', 
	'SCRIPT_NAME', 
	'SEEK_CUR', 
	'SEEK_END', 
	'SEEK_SET', 
	'SERVER_ADDR', 
	'SERVER_ADMIN', 
	'SERVER_NAME', 
	'SERVER_PORT', 
	'SERVER_PROTOCOL', 
	'SERVER_SIGNATURE', 
	'SERVER_SOFTWARE', 
	'SORT_ASC', 
	'SORT_DESC', 
	'SORT_NUMERIC', 
	'SORT_REGULAR', 
	'SORT_STRING', 
	'STATIC', 
	'STDCLASS', 
	'STR_PAD_BOTH', 
	'STR_PAD_LEFT', 
	'STR_PAD_RIGHT', 
	'SWITCH', 
	'T_FMT', 
	'T_FMT_AMPM', 
	'THIS', 
	'THOUSANDS_SEP', 
	'THOUSEP', 
	'THROW ', 
	'TRY ', 
	'UNSET', 
	'USE', 
	'VAR', 
	'WHILE', 
	'XOR', 
	'YESEXPR', 
	'YESSTR'
);

$dbs = @mysql_list_dbs($opts['dbl']);

$num_dbs = @mysql_num_rows($dbs);

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html401/loose.dtd">
<html>
<head>
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="content-language" content="en-US">
<meta http-equiv="content-script-type" content="text/javascript">
<meta http-equiv="content-style-type" content="text/css">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta http-equiv="expires" content="Mon, 01 Jan 1900 01:01:01 GMT">
<meta http-equiv="pragma" content="no-cache">
<meta name="author" content="Doug Hockinson">
<meta name="copyright" content="Doug Hockinson">
<meta name="description" content="PHP/MySQL Reserved Word Test">
<meta name="distribution" content="global">
<meta name="googlebot" content="noarchive">
<meta name="keywords" lang="en-US" content="php,mysql,reserved word, reserved words">
<meta name="language" content="en-US">
<meta name="robots" content="index,follow,noarchive">
<style type="text/css">
<!--
a{
color:#000000;
background-color:transparent;
}
body{
color:#999999;
background-color:#000000;
font-family:verdana,arial,helvetica,sans-serif;
font-size:11px;
}
.contrast{
color:#ffff00;
background-color:transparent;
font-weight:bold;
}
td{
border:1px solid #999999;
}
-->
</style>
<title><?php echo basename($_SERVER['PHP_SELF']); ?></title>
</head>
<body>

<h3>PHP/MySQL Reserved Word Test Compiled 2007-05-18 incl. PHP 5 & MySQL 5</h3>

<p>The use of a &quot;reserved word&quot; as the name of a MySQL database, 
MySQL table, MySQL column, or PHP variable, may produce unexpected results.
<br><br>If either a &quot;reserved word&quot; or suspicious a character is 
found in the currently configured MySQL database, comments will be displayed 
below using a <span class="contrast">contrasting font</span>.</p>

<table cellpadding="3" cellspacing="0" width="100%">

	<tr>

	<td style="vertical-align:top">



	<?php

	for ($i = 0; $i < $num_dbs; $i++) {

		$db = @mysql_db_name($dbs, $i);

		echo '<ul>'.evaluate_name($db);

		if($db == $opts['db']){

			$tbs = @mysql_list_tables($db, $opts['dbl']);

			$num_tbs = @mysql_num_rows($tbs);

			for ($j = 0; $j < $num_tbs; $j++) {

				$tb = @mysql_tablename($tbs, $j);

				echo '<ul>'.evaluate_name($tb);

				$tb_desc = @mysql_query("DESCRIBE $tb");

				$field_list	 = @mysql_list_fields($db, $tb, $opts['dbl']);

				$num_fds = @mysql_num_fields($field_list);

				for($col_no = 0; $col_no < $num_fds; $col_no++) {

					$field_name = @mysql_field_name($field_list, $col_no);

					$field_type = @mysql_field_type($field_list, $col_no);

					$opts['field_flags'] = @mysql_field_flags(@mysql_query('SELECT * FROM '.$tb.' LIMIT 1'), $col_no); 

					echo '<ul>'.evaluate_name($field_name).'</ul>';

				}

				echo "\n".'</ul>';

			}

			echo "\n".'</ul>';

		}

		echo "\n".'</ul>';

	}

	?>


	</td>

	<td style="vertical-align:top">

		<div>PHP (<?php echo count($opts['php_reserved_words']); ?>)</div>

		<ul>

		<?php

		foreach($opts['php_reserved_words'] as $var) {

			echo "\n".'<li>'.$var.'</li>';

		}

		?>

		</ul>

	</td>

	<td style="vertical-align:top">

		<div>MySQL (<?php echo count($opts['mysql_reserved_words']); ?>)</div>

		<ul>

		<?php

		foreach($opts['mysql_reserved_words'] as $var) {

			echo "\n".'<li>'.$var.'</li>';

		}

		?>

		</ul>

	</td>

	<?php

	$combined_reserved_words = $opts['mysql_reserved_words'];

	foreach($opts['php_reserved_words'] as $var) {

		if(!in_array($var, $combined_reserved_words)){

			$combined_reserved_words[] = $var;

		}

	}

	sort($combined_reserved_words);

	?>

	<td style="vertical-align:top">

		<div>Combined (<?php echo count($combined_reserved_words); ?>)</div>

		<ul>

		<?php

		foreach($combined_reserved_words as $var) {

			echo "\n".'<li>'.$var.'</li>';

		}

		?>

		</ul>

	</td>

	<td style="vertical-align:top">

		<div>Common</div>

		<ol>

		<?php

		foreach($opts['php_reserved_words'] as $var) {

			echo !in_array($var, $opts['mysql_reserved_words']) ? '' : "\n".'<li>'.$var.'</li>';

		}

		?>

		</ol>

	</td>

	</tr>

</table>

<p>If nothing in the above list is highlighted using the <span class="contrast">contrasting font</span> then you're probably OK.</p>

<p>If a column name appears above using the <span class="contrast">contrasting font</span> and your version of MySQL supports the backtick character (`column_name`) you might get by OK by backticking that column name in all your scripts.</p>

<p>Regarding MySQL naming conventions, IMHO, limit yourself to using lower case letters and/or the underscore character in the names of all databases, tables, and columns (or else your application may not work as expected on someone else's system configuration). Avoid using hyphens or else the quoted code may break (interpreting the hyphen as a minus sign). Numerals 0-9 are OK as long as they are not the first character in the name of a database, table, or column.</p>

<p>&nbsp;</p>

</body>

</html>
