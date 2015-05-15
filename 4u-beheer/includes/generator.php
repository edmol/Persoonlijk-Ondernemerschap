<?php

function getmicrotime()
{
	@list($usec, $sec) = explode(' ', microtime());
	return ((float) $usec + (float) $sec);
};

$time = getmicrotime(); // Start the timer

/**
 * This is a self-proccessing form. Note the switch() statement below.
 * generator.inc.php is included multiple times (once for each table processed).
 * In ./output/index.php set the same $cfg_target_prefix value as you use below, e.g.: $cfg_target_prefix = 'my_';
 * Configure also: ./output/inc/dbconn.php
 */

$cfg_utf8_bug_note = 1; // Include UTF8 bug note in forms (may affect MySQL 4.1 if the CHARSET is UTF8)

$cfg_date_created = date('r'); // A timestamp is written into each form (commented out)

$cfg_disable_overwrite = 0; // [0|1] Set 1 to completely disable over-writing during output.

// $cfg_skip_table_array = array('change_log'); // An array of tables that will be skipped (suppressed).
$cfg_skip_table_array = array('');

$cfg_datemask_date = 'Y-m-d'; // non-US users may want to change "Y-m-d" to "d-m-Y" or "m-d-Y"

$cfg_datemask_time = 'H:i:s';

// Values for optional Help cell tips/hints:

$cfg_help_date = 'YYYY-MM-DD';

$cfg_help_datetime = 'YYYY-MM-DD HH:MM:SS';

$cfg_help_time = 'HH:MM:SS';

$cfg_help_timestamp = 'Timestamp';

$cfg_help_year = 'YYYY';

// Translate several items to a different language (if necessary).

// English text labels applied to basic Help cell labels, e.g. "Limit 255 characters".

$label_help_Limit = 'Limit';

$label_help_digits = 'digits';

$label_help_characters = 'characters';

$label_help_Select = 'Select';

$cfg_tweak_file_name = './inc/tweak.php';

// Specify matched header/footer pairs (refers to files located in /mfg571/output/inc/)

// $cfg_header_include_file = 'header.php'; // Plain form header (includes cookies for selecting style on-the-fly)
// $cfg_footer_include_file = 'footer.php'; // Plain form footer

$cfg_header_include_file = 'header2.php';   // Fancy form header (generic2.css recommended; manually edit if necessary)
$cfg_footer_include_file = 'footer2.php';   // Fancy form footer


/**
 * $lf is the variable used to define a carriage return and/or linefeed sequence
 * for the generated forms. If "\r\n" does not work for you, simply change it below.
 * Windows "\r\n"
 * Linux   "\n"
 * Mac     "\r"
 */

$lf = "\r\n";

// If forms are configured to utilize the Help popup in the 3rd cell in ACP mode, then
// sprintf($cfg_help_ACP_link, $tb, $fn, $tb, $fn);
// will be applied in order to pass the table & column names to the popup.
// Use \' (not simply ') because of the manner in which this is subsequently processed.

$cfg_help_ACP_link = <<<HEREDOC_VAR
<a href="./help/popup.php?tb=%s&amp;col=%s" target="_blank" class="pme-tab" onclick="openWinHelp(\'./help/popup.php?tb=%s&amp;col=%s\',\'Help\',\'width=640,height=480,menubar=yes,scrollbars=yes\');return false;" onMouseOver="window.status=\'Help\';return true;" onMouseOut="window.status=\'\';return true;">Help</a>
HEREDOC_VAR;


// In generator.inc.php, comment out ob_start('ob_gzhandler'); if not supported by your PHP installation.


/***************************************************************************************
 * Stop. Configuration is more or less complete. Review the following at a later date.
 ***************************************************************************************/


if(isset($cfg_skip_table_array)){

	natcasesort($cfg_skip_table_array);

}

// Internal display settings (textareas containing form code):
$cfg_form_cols = 140;
$cfg_form_rows = 15;

require_once('./output/inc/dbconn.php');

$cfg_email_logging = $opts['mfg']['email']; // from dbconn.php

require_once('./inc/hdr.php');

// If the first column fails to meet the criteria of a
// primary key insert the following statement in the form.

$pri_key_warning = <<<MYHEREDOC
<html><body>***** WARNING ***********************************
<h4>Column 0 does not appear to be the primary key in this table</h4>
<p>Please manually edit this script.<br>Specify the column name and column type. For example:</p>
<ol><li>\$opts['key'] = \$col_name;</li><li>\$opts['key_type'] = 'timestamp';</li>
<li>Remove this warning message (embedded in the file).</li></ol>
***** WARNING ***********************************</body></html><?php exit;?>
MYHEREDOC;

// Begin processing...

switch($_SERVER['REQUEST_METHOD']){

   Case 'POST':

		// Huge array: $reserved_words (updated June 2007 to include PHP 5, MySQL 5)

		$reserved_words = array( 	'action', 'add', 'all', 'alter', 'analyze', 'and', 'as', 'asc', 'asensitive', 'before', 'between', 'bigint', 'binary', 'bit', 'blob', 'both', 'by', 'call', 'cascade', 'case', 'change', 'char', 'character', 'check', 'collate', 'column', 'condition', 'constraint', 'continue', 'convert', 'create', 'cross', 'current_date', 'current_time', 'current_timestamp', 'current_user', 'cursor', 'database', 'databases', 'date', 'day_hour', 'day_microsecond', 'day_minute', 'day_second', 'dec', 'decimal', 'declare', 'default', 'delayed', 'delete', 'desc', 'describe', 'deterministic', 'distinct', 'distinctrow', 'div', 'double', 'drop', 'dual', 'each', 'else', 'elseif', 'enclosed', 'enum', 'escaped', 'exists', 'exit', 'explain', 'false', 'fetch', 'float', 'float4', 'float8', 'for', 'force', 'foreign', 'from', 'fulltext', 'grant', 'group', 'having', 'high_priority', 'hour_microsecond', 'hour_minute', 'hour_second', 'if', 'ignore', 'in', 'index', 'infile', 'inner', 'inout', 'insensitive', 'insert', 'int', 'int1', 'int2', 'int3', 'int4', 'int8', 'integer', 'interval', 'into', 'is', 'iterate', 'join', 'key', 'keys', 'kill', 'leading', 'leave', 'left', 'like', 'limit', 'lines', 'load', 'localtime', 'localtimestamp', 'lock', 'long', 'longblob', 'longtext', 'loop', 'low_priority', 'match', 'mediumblob', 'mediumint', 'mediumtext', 'middleint', 'minute_microsecond', 'minute_second', 'mod', 'modifies', 'natural', 'no', 'no_write_to_binlog', 'not', 'null', 'numeric', 'on', 'optimize', 'option', 'optionally', 'or', 'order', 'out', 'outer', 'outfile', 'precision', 'primary', 'procedure', 'purge', 'raid0', 'read', 'reads', 'real', 'references', 'regexp', 'release', 'rename', 'repeat', 'replace', 'require', 'restrict', 'return', 'revoke', 'right', 'rlike', 'schema', 'schemas', 'second_microsecond', 'select', 'sensitive', 'separator', 'set', 'show', 'smallint', 'soname', 'spatial', 'specific', 'sql', 'sql_big_result', 'sql_calc_found_rows', 'sql_small_result', 'sqlexception', 'sqlstate', 'sqlwarning', 'ssl', 'starting', 'straight_join', 'table', 'terminated', 'text', 'then', 'time', 'timestamp', 'tinyblob', 'tinyint', 'tinytext', 'to', 'trailing', 'trigger', 'true', 'undo', 'union', 'unique', 'unlock', 'unsigned', 'update', 'usage', 'use', 'using', 'utc_date', 'utc_time', 'utc_timestamp', 'values', 'varbinary', 'varchar', 'varcharacter', 'varying', 'when', 'where', 'while', 'with', 'write', 'x509', 'xor', 'year_month', 'zerofill', '__class__', '__compiler_halt_offset__', '__file__', '__function__', '__line__', '__method__', '__php_incomplete_class', 'abday_1', 'abday_2', 'abday_3', 'abday_4', 'abday_5', 'abday_6', 'abday_7', 'abmon_1', 'abmon_10', 'abmon_11', 'abmon_12', 'abmon_2', 'abmon_3', 'abmon_4', 'abmon_5', 'abmon_6', 'abmon_7', 'abmon_8', 'abmon_9', 'abstract ', 'alt_digits', 'am_str', 'and', 'argc', 'argv', 'array', 'as', 'assert_active', 'assert_bail', 'assert_callback', 'assert_quiet_eval', 'assert_warning', 'auth_type', 'break', 'case', 'case_lower', 'case_upper', 'catch ', 'cfunction ', 'char_max', 'class', 'clone ', 'codeset', 'connection_aborted', 'connection_normal', 'connection_timeout', 'const', 'continue', 'count_normal', 'count_recursive', 'credits_all', 'credits_docs', 'credits_fullpage', 'credits_general', 'credits_group', 'credits_modules', 'credits_qa', 'credits_sapi', 'crncystr', 'crypt_blowfish', 'crypt_ext_des', 'crypt_md5', 'crypt_salt_length', 'crypt_std_des', 'currency_symbol', 'd_fmt', 'd_t_fmt', 'day_1', 'day_2', 'day_3', 'day_4', 'day_5', 'day_6', 'day_7', 'decimal_point', 'declare', 'default', 'default_include_path', 'die', 'directory_separator', 'do', 'document_root', 'e_all', 'e_compile_error', 'e_compile_warning', 'e_core_error', 'e_core_warning', 'e_error', 'e_notice', 'e_parse', 'e_strict', 'e_user_error', 'e_user_notice', 'e_user_warning', 'e_warning', 'echo', 'else', 'elseif', 'empty', 'enddeclare', 'endfor', 'endforeach', 'endif', 'endswitch', 'endwhile', 'ent_compat', 'ent_noquotes', 'ent_quotes', 'era', 'era_d_fmt', 'era_d_t_fmt', 'era_t_fmt', 'era_year', 'eval', 'exception', 'exit', 'extends', 'extr_if_exists', 'extr_overwrite', 'extr_prefix_all', 'extr_prefix_if_exists', 'extr_prefix_invalid', 'extr_prefix_same', 'extr_skip', 'final ', 'for', 'foreach', 'frac_digits', 'function', 'gateway_interface', 'global', 'grouping', 'html_entities', 'html_specialchars', 'http_accept', 'http_accept_charset', 'http_accept_encoding', 'http_accept_language', 'http_connection', 'http_host', 'http_referer', 'http_user_agent', 'https', 'if', 'implements ', 'include', 'include_once', 'info_all', 'info_configuration', 'info_credits', 'info_environment', 'info_general', 'info_license', 'info_modules', 'info_variables', 'ini_all', 'ini_perdir', 'ini_system', 'ini_user', 'int_curr_symbol', 'int_frac_digits', 'interface ', 'isset', 'lc_all', 'lc_collate', 'lc_ctype', 'lc_messages', 'lc_monetary', 'lc_numeric', 'lc_time', 'list', 'lock_ex', 'lock_nb', 'lock_sh', 'lock_un', 'log_alert', 'log_auth', 'log_authpriv', 'log_cons', 'log_crit', 'log_cron', 'log_daemon', 'log_debug', 'log_emerg', 'log_err', 'log_info', 'log_kern', 'log_local0', 'log_local1', 'log_local2', 'log_local3', 'log_local4', 'log_local5', 'log_local6', 'log_local7', 'log_lpr', 'log_mail', 'log_ndelay', 'log_news', 'log_notice', 'log_nowait', 'log_odelay', 'log_perror', 'log_pid', 'log_syslog', 'log_user', 'log_uucp', 'log_warning', 'm_1_pi', 'm_2_pi', 'm_2_sqrtpi', 'm_e', 'm_ln10', 'm_ln2', 'm_log10e', 'm_log2e', 'm_pi', 'm_pi_2', 'm_pi_4', 'm_sqrt1_2', 'm_sqrt2', 'mon_1', 'mon_10', 'mon_11', 'mon_12', 'mon_2', 'mon_3', 'mon_4', 'mon_5', 'mon_6', 'mon_7', 'mon_8', 'mon_9', 'mon_decimal_point', 'mon_grouping', 'mon_thousands_sep', 'n_cs_precedes', 'n_sep_by_space', 'n_sign_posn', 'negative_sign', 'new', 'noexpr', 'nostr', 'old_function ', 'or', 'p_cs_precedes', 'p_sep_by_space', 'p_sign_posn', 'path_separator', 'path_translated', 'pathinfo_basename', 'pathinfo_dirname', 'pathinfo_extension', 'pear_extension_dir', 'pear_install_dir', 'php_auth_digest', 'php_auth_pw', 'php_auth_user', 'php_bindir', 'php_config_file_path', 'php_config_file_scan_dir', 'php_datadir', 'php_eol', 'php_extension_dir', 'php_int_max', 'php_int_size', 'php_libdir', 'php_localstatedir', 'php_os', 'php_output_handler_cont', 'php_output_handler_end', 'php_output_handler_start', 'php_prefix', 'php_sapi', 'php_self', 'php_shlib_suffix', 'php_sysconfdir', 'php_user_filter', 'php_user_filter ', 'php_version', 'pm_str', 'positive_sign', 'print', 'private ', 'protected ', 'public ', 'query_string', 'radixchar', 'remote_addr', 'remote_host', 'remote_port', 'request_method', 'request_time', 'request_uri', 'require', 'require_once', 'return', 'script_filename', 'script_name', 'seek_cur', 'seek_end', 'seek_set', 'server_addr', 'server_admin', 'server_name', 'server_port', 'server_protocol', 'server_signature', 'server_software', 'sort_asc', 'sort_desc', 'sort_numeric', 'sort_regular', 'sort_string', 'static', 'stdclass', 'str_pad_both', 'str_pad_left', 'str_pad_right', 'switch', 't_fmt', 't_fmt_ampm', 'this', 'thousands_sep', 'thousep', 'throw ', 'try ', 'unset', 'use', 'var', 'while', 'xor', 'yesexpr', 'yesstr' );

		function echo_html($x)
		{
			global $lf;
			echo htmlspecialchars($x)."$lf";
		};

		function echo_buffer($x)
		{
			global $buffer, $lf;
			$buffer .= $x."$lf";
		};

		function mysql_tb_schema($tb) {
			if(!$res = mysql_query("SHOW CREATE TABLE `$tb`")){
				return @mysql_error();
			}
			if($schema = mysql_result($res, 0, 1)){
				return $schema.';';
			}
			return 'Table description not found';
		};

		foreach($_POST as $key => $val){

			$$key = stripslashes(trim($val));

		}

		// Just in case...

		if(empty($cfg_lang)){

			$cfg_language = '$opts[\'language\'] = $_SERVER[\'HTTP_ACCEPT_LANGUAGE\'];';

		}else{

			$cfg_language = '$opts[\'language\'] = \''.$cfg_lang.'\';';

		}

		// Just in case...

		if(empty($cfg_target_prefix)) { $cfg_target_prefix = 'my_'; }

		// Retrieve a list of tables from the configured MySQL database

		$tbs = mysql_list_tables($opts['db'], $opts['dbh']);

		$num_tbs = mysql_num_rows($tbs);

		if($num_tbs < 1) {

			echo '<p><strong>No tables found in '.$opts['db'].'</strong></p>';

			require_once('./inc/ftr.php');

			exit;

		}

		$file_write_array = array();

		$hack_all_tb_list = array();

		// Optionally write to disk all tables (if the value of $cfg_selected_table is empty)

		// Only display the form if one table is selected ($cfg_selected_table)

		if(empty($cfg_selected_table)){

			// Process all tables

			for($i = 0; $i < $num_tbs; $i++) {

				$tb = mysql_tablename($tbs, $i);

				if(!in_array($tb, $cfg_skip_table_array)){

					$tb = htmlspecialchars($tb);

					$hack_all_tb_list[] = $tb;

					require('./inc/generator.inc.php');

				}

			};

			// If no errors were encountered, forms were written to disk

		}else{

			// One table selected for output

			if(in_array($cfg_selected_table, $cfg_skip_table_array)){

				$cfg_diskwrite = 0;

			}

			$tb = $cfg_selected_table;

			require('./inc/generator.inc.php');

		}

		break;


	Case 'GET':
   default:

		echo "\n".'<h3>Select your options below, then click the Submit button</h3>';

		echo "\n".'<p>The default options set in this PHP/HTML form will work for most users.</p>';

		echo $cfg_disable_overwrite == 1 ? '<p>File over-writing is disabled in the generator.php script. ($cfg_disable_overwrite == 1;)</p>' : '';

		require_once('./inc/generator.menu.php');

		break;

};

$buffer = '';

echo "\n".'<p align="center" class="pme-message">Execution time: '.number_format((getmicrotime()-$time),3).' seconds</p>';

echo "\n".'<p align="center"><a title="phpMyEdit Documentation" href="./doc/html/" target="_blank">phpMyEdit Documentation<br>(included with MFG)</a></p>';

require_once('./inc/ftr.php');

?>
