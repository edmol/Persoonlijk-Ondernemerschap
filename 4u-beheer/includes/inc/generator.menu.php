<?php

/**
 * Include file (menu) for Multi Form Generator.
 * In order to quickly locate HTML SELECT boxes that you want
 * to change, use your text editor to search for keywords below.
 * You might repeatedly search for "selected" to locate various form elements.
 */

if(basename($_SERVER['PHP_SELF']) == 'generator.menu.php'){ die('Nice try!'); }

$tbs = mysql_list_tables($opts['db'], $opts['dbh']);

$num_tbs = mysql_num_rows($tbs);

if($num_tbs < 1) {

	echo '<p>No tables found in '.$opts['db'].'</p>';

}

?>

<p class="red">Certain configurable options are now hard-coded in the <a href="dbconn.txt" title="database connection script" target="_blank" rel="nofollow" style="color:#ff0000;background-color:transparent">database connection script</a> (initial setup required). <br><br>The <a href="hilite.php?f=my_mfg_content.php" style="color:#ff0000;background-color:transparent" target="_blank">Sample Script</a> may help to give you a better idea as to how the following variables are applied.</p>

<form method="POST" action="<?php echo basename($_SERVER['PHP_SELF']); ?>">

<table border="0" cellpadding="0" cellspacing="0" width="750">

	<tr class="ctr">
		<td class="demo" colspan="2">
			Primary key column (usually MySQL column number 0)
		</td>
		<td class="demo">
			<select name="cfg_pri_key_col_no">
				<!-- If for some reason your primary key is consistently a different MySQL column number, configure it here. -->
				<option value="0" selected>0</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo" colspan="2">
			<a href="./ignore.php?id=prefix" rel="nofollow" target="_blank" onclick="openWinDocs('ignore.php?id=prefix','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Target filename prefix</a>
			(restricted for demo purposes)
		</td>
		<td class="demo">
			<select name="cfg_target_prefix">

				<option selected value="my_">my_</option> <!-- Recommended -->

 				<option value="db.">db.</option>

 				<option value="mfg_">mfg_</option>

 				<option value="pme_">pme_</option>

				<option value="form_">form_</option>

				<option value="_">_</option>

			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo" colspan="2">Include a Field Options &quot;cheat sheet&quot; in scripts, commented out</td>
		<td class="demo">
			<select name="cfg_cheat_sheet">
				<option value="0">No</option>
				<option value="1">Yes</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo" colspan="2">
			Post-initialize <a href="./ignore.php?id=tweak" rel="nofollow" target="_blank" onclick="openWinDocs('ignore.php?id=tweak','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">additional code</a> below certain field option arrays using an include file
		</td>
		<td class="demo">
			<select name="cfg_tweak_file_usage">
				<option value="0">No</option>
				<option value="1" selected>Yes</option>
			</select>
		</td>
	</tr>



	<tr class="ctr">
		<td colspan="3"><strong>Global Form Options</strong></td>
	</tr>



	<tr class="ctr">
		<td class="demo">$opts['sort_field']</td>
		<td class="demo"><a rel="nofollow" target="_blank" href="./doc/html/configuration.sorting.html" onclick="openWinDocs('doc/html/configuration.sorting.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Sorting</a> (default column)</td>
		<td class="demo">
			<select name="cfg_sort_field">
				<option selected value="0">0 (1st column)</option>
				<option value="1">1 (2nd column)</option>
				<option value="2">2 (3rd column)</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">$opts['inc']</td>
		<td class="demo"><a rel="nofollow" target="_blank" href="./doc/html/configuration.common-options.html#CONFIGURATION.DISPLAYED-RECORDS" onclick="openWinDocs('doc/html/configuration.common-options.html#CONFIGURATION.DISPLAYED-RECORDS','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Records per page in list mode</a></td>
		<td class="demo">
			<select name="cfg_num_rows">
				<option value="-1">All</option>
				<option value="1">&nbsp;1</option>
				<option value="2">&nbsp;2</option>
				<option value="3">&nbsp;3</option>
				<option value="4">&nbsp;4</option>
				<option value="5">&nbsp;5</option>
				<option value="6">&nbsp;6</option>
				<option value="7">&nbsp;7</option>
				<option value="8">&nbsp;8</option>
				<option value="9">&nbsp;9</option>
				<option value="10" selected>10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="35">35</option>
				<option value="40">40</option>
				<option value="45">45</option>
				<option value="50">50</option>
				<option value="60">60</option>
				<option value="70">70</option>
				<option value="80">80</option>
				<option value="90">90</option>
				<option value="95">95</option>
				<option value="100">100</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">$opts['options']</td>
		<td class="demo">
			<a rel="nofollow" target="_blank" href="./doc/html/configuration.permission-options.html" onclick="openWinDocs('doc/html/configuration.permission-options.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Permission options</a>
		</td>
		<td class="demo">
			<!-- L (list mode) is assumed; it does not technically need to be specified in ACPVDFL -->
			<select name="cfg_perm_options">
				<option value="ACPVDFL" selected>ACPVDFL</option>
				<option value="ACPVFL">ACPVFL</option>
				<option value="VFL">VFL</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">$opts['language']</td>
		<td class="demo"><a rel="nofollow" target="_blank" href="./doc/html/configuration.languages.html" onclick="openWinDocs('doc/html/configuration.languages.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Language labels</a></td>
		<td class="demo">
			<select name="cfg_lang">
				<option value="" selected>$HTTP_ACCEPT_LANGUAGE</option>
				<option value="CZ">Czech</option>
				<option value="DE">German</option>
				<option value="DK">Danish</option>
				<option value="EL">Greek - Hellenic</option>
				<option value="EN">English</option>
				<option value="EN-US">English - US</option>
				<option value="ES">Spanish</option>
				<option value="ES-AR">Spanish - Argentina</option>
				<option value="ES-MX">Spanish - Mexico</option>
				<option value="EU">Basque</option>
				<option value="FR">French</option>
				<option value="IT">Italian</option>
				<option value="NL">Dutch</option>
				<option value="PL">Polish</option>
				<option value="PT">Portuguese</option>
				<option value="PT-BR">Portuguese - Brazil</option>
				<option value="RU">Russian</option>
				<option value="SE">Swedish</option>
				<option value="SK">Slovak</option>
				<option value="TR">Turkey</option>
				<option value="ZH">Chinese - traditional</option>
				<option value="ZH-SG">Chinese - Singapore</option>
			</select>
		</td>
	</tr>

	<tr class="ctr">
		<td colspan="3">
			<a class="red" rel="nofollow" target="_blank" href="./doc/html/configuration.fields.html" onclick="openWinDocs('doc/html/configuration.fields.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true"><strong>Field-Specific Options</strong></a>
		</td>
	</tr>

	<tr class="ctr">
		<td class="demo" colspan="3">
			Field options consist of an array of column attributes. Attributes may be applied to specific page modes (Add, Change, coPy, View, Delete, List, Filter). Attributes are configured individually for each type of MySQL column. With the possible exception of date formatting, the default field options appearing below should meet the needs of most users.
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo" colspan="2">
			CSS can apply right justification to
			<a href="./ignore.php?id=css" rel="nofollow" target="_blank" onclick="openWinDocs('ignore.php?id=css','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">these fields</a>
			using
			<br>'css' =&gt; array('postfix' =&gt; 'right-justify'),
		</td>

		<td class="demo">
			<select name="cfg_right_align">
				<!-- <option value="0">No</option> -->
				<option value="1" selected>Yes</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">'colattrs' =&gt; '',</td>
		<td class="demo"><a rel="nofollow" target="_blank" href="./doc/html/configuration.output-control.html" onclick="openWinDocs('doc/html/configuration.output-control.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Output control: Column attributes</a><br>for CSS/HTML (commented out)</td>
		<td class="demo">
			<select name="cfg_colattrs">
				<option value="0">No</option>
				<option value="1">Yes</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">
			'<a rel="nofollow" target="_blank" href="./doc/html/configuration.output-control.html" onclick="openWinDocs('doc/html/configuration.output-control.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">datemask</a>' =&gt; 'Y-m-d H:i:s',
		</td>
		<td class="demo">
			TIMESTAMP &amp; DATETIME fields:<br>
			<select name="cfg_datemask_timestamp">
				<option value="Y-m-d H:i:s">Y-m-d H:i:s</option>
				<option value="m-d-Y H:i:s">m-d-Y H:i:s</option>
				<option value="d-m-Y H:i:s">d-m-Y H:i:s</option>
				<option value="Y/m/d H:i:s">Y/m/d H:i:s</option>
				<option value="m/d/Y H:i:s">m/d/Y H:i:s</option>
				<option value="d/m/Y H:i:s">d/m/Y H:i:s</option>
			</select>
		</td>
		<td class="demo">
			<select name="cfg_datemask_usage">
				<option value="0">No</option>
				<option value="1">Yes</option>
			</select>
		</td>
	</tr>

<!-- Handling of escape has changed, and the following is not advisable. -->

<!--
	<tr class="ctr">
		<td class="demo">'escape' =&gt; false,</td>
		<td class="demo"><a rel="nofollow" target="_blank" href="./doc/html/configuration.fields.booleans.html" onclick="openWinDocs('doc/html/configuration.fields.booleans.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Booleans: HTML escaping</a> (commented out)</td>
		<td class="demo">
			<select name="cfg_escape_usage">
				<option value="1">Yes</option>
				<option value="0" selected>No</option>
			</select>

		</td>
	</tr>
 -->


	<tr class="ctr"><td colspan="3">
			<a rel="nofollow" target="_blank" href="./doc/html/configuration.basic-options.html" onclick="openWinDocs('doc/html/configuration.basic-options.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Basic Options:  Guidance help</a>.
			Optionally add a 3rd cell (Help cell) to Add, coPy, and Change forms. Standard help columns insert basic field info such as &quot;Limit x characters&quot; or &quot;Limit x digits&quot; or date format help. MFG optionally installs a link to a Help popup that fetches &quot;help text&quot; from `mfg_help_data` (help text for the configured table and column). See <a title="Help System" href="help_data.php" rel="nofollow" target="_blank">Help System</a>.

		</td>
	</tr>

	<tr class="ctr">
		<td class="demo" colspan="2">'help|ACP' =&gt; '',<br><br></td>

		<td class="demo">
			<select name="cfg_help_ACP">
				<option value="1">standard help column</option>
				<option value="0">omit help</option>
				<option value="2">link to Help popup</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">'<a rel="nofollow" target="_blank" href="./doc/html/configuration.basic-options.html" onclick="openWinDocs('doc/html/configuration.basic-options.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">input</a>' =&gt; 'R', </td>
		<td class="demo">Apply read-only status to auto_increment and/or TIMESTAMP columns</td>
		<td class="demo">
			<select name="cfg_input_usage">
				<option value="1" selected>Yes</option>
				<option value="0">No</option>
			</select>

		</td>
	</tr>


	<!-- TD ROWSPAN is used in a few places below -->

	<tr class="ctr">
		<td class="demo" rowspan="4">'options' =&gt; 'ACPVDFL',<br><br><a rel="nofollow" target="_blank" href="./doc/html/configuration.basic-options.html#CONFIGURATION.OPTIONS" onclick="openWinDocs('doc/html/configuration.basic-options.html#CONFIGURATION.OPTIONS','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Display options</a> are column specific and can be enabled or disabled in various page modes (Add, Change, coPy, View, Delete, Filter, List). &quot;L&quot; is assumed and does not have to be specified. <br><br><span class="red">Display &quot;n&quot; columns in List mode.<br>Select 999 to display all in List mode.</span></td>
		<td class="demo">auto_increment columns</td>
		<td class="demo"><input type="text" name="cfg_option_auto_increment" size="10" value="VD"></td>
	</tr>

	<tr class="ctr">
		<td class="demo">TIMESTAMP columns</td>
		<td class="demo"><input type="text" name="cfg_option_timestamp" size="10" value="VD"></td>
	</tr>

	<tr class="ctr">
		<td>All other columns ...</td>
		<td><input type="text" name="cfg_option_other" size="10" value="ACPVDFL"></td>
	</tr>

	<tr class="ctr">
		<td class="demo">Except, if the MySQL column number <br>is &gt;
			<select name="cfg_option_limit">
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>

				<option value="999">999</option>

			</select> suppress the display of the remaining columns from List &amp; Filter modes.

		</td>
		<td class="demo"><input type="text" name="cfg_option_other2" size="10" value="ACPVD"></td>
	</tr>


	<tr class="ctr">
		<td class="demo">
			'php' =&gt; 'filename.inc',
		</td>
		<td class="demo" colspan="2">
			<a rel="nofollow" target="_blank" href="./doc/html/configuration.fields.php.html" onclick="openWinDocs('doc/html/configuration.fields.php.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">PHP expressions</a>
			can be manually configured by advanced users. The effect is to suppress the display of a field value, and run an include file in it's place. Works like Triggers. Consult the documentation.
		</td>
	</tr>

<!-- October 2007: the 'required' element is now handled differently, post-initialized for readability and usage of Hints -->

	<tr class="ctr">
		<td class="demo">'required' fields</td>
		<td class="demo"><a rel="nofollow" target="_blank" href="./doc/html/configuration.javascript-validation.html" onclick="openWinDocs('doc/html/configuration.javascript-validation.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">JavaScript validation</a></td>
		<td class="demo">
			<select name="cfg_required">
				<option value="0" selected>first 3 columns</option>
				<option value="1">all columns</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">'size|ACP' =&gt; n,</td>
		<td class="demo"><a rel="nofollow" target="_blank" href="./doc/html/configuration.output-control.html" onclick="openWinDocs('doc/html/configuration.output-control.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Field size</a> (HTML INPUT tags)</td>
		<td class="demo">
			<select name="cfg_size_usage">
				<option selected value="1">Yes</option>
				<option value="0">No</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">'sort' =&gt; false,</td>
		<td class="demo">
			<a rel="nofollow" target="_blank" href="./doc/html/configuration.fields.booleans.html" onclick="openWinDocs('doc/html/configuration.fields.booleans.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Sorting</a> disabled for BLOB column titles
		</td>
		<td class="demo">
			<select name="cfg_sort_blobs">
				<option value="0" selected>Yes</option>
				<option value="1">No</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo" colspan="3">
			<a rel="nofollow" target="_blank" href="./doc/html/configuration.fields.sql.html" onclick="openWinDocs('doc/html/configuration.fields.sql.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">SQL expressions</a>
			can be manually configured in the options array, for example:
			<br>'sql|LFV' =&gt; 'if(FirstName &lt;&gt; &quot;&quot;, CONCAT(LastName, &quot;, &quot;, FirstName), LastName)'
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">'sqlw' =&gt; 'TRIM(&quot;$val_as&quot;)',</td>
		<td class="demo">
			<a rel="nofollow" target="_blank" href="./doc/html/configuration.fields.sql.html" onclick="openWinDocs('doc/html/configuration.fields.sql.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Write SQL expressions</a><br>(e.g. trim, insert null, MD5(), etc.)
		</td>
		<td class="demo">
			<select name="cfg_sqlw_usage">
				<option value="1" selected>Yes</option>
				<!-- <option value="1">No</option> -->
			</select>

		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">'strip_tags|LF' =&gt; true,</td>
		<td class="demo">
			<a rel="nofollow" target="_blank" href="./doc/html/configuration.fields.booleans.html" onclick="openWinDocs('doc/html/configuration.fields.booleans.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Booleans: Stripping tags</a> from displayed BLOB fields in List/Filter mode</td>
		<td class="demo">
			<select name="cfg_blob_striptags">
				<option value="0">omit</option>
				<option value="1" selected>set true</option>
				<option value="2">set false</option>
			</select>
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo">'tabs' =&gt; 'col_name', &nbsp;<a href="./ignore.php?id=tabs" rel="nofollow" target="_blank" onclick="openWinDocs('ignore.php?id=tabs','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">(Note)</a></td>
		<td class="demo"><a rel="nofollow" target="_blank" href="./doc/html/configuration.tabs-feature.html" onclick="openWinDocs('doc/html/configuration.tabs-feature.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">TABs feature</a> (column 0 active, all others commented out)</td>
		<td class="demo">
			<select name="cfg_tabs_usage">
				<option value="0">No</option>
				<option value="1">Yes</option>
			</select>


		</td>
	</tr>


	<tr class="ctr">
		<td class="demo" rowspan="2" colspan="2">
			<a rel="nofollow" target="_blank" href="./doc/html/configuration.output-control.html" onclick="openWinDocs('doc/html/configuration.output-control.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Output control: TEXTAREA sizes</a>
			<br>'textarea' =&gt; array('rows' =&gt; x, 'cols' =&gt; y),
			<br>(cols=58 works well since maximum INPUT size=60)
		</td>
		<td class="demo" nowrap>
			<select name="cfg_textarea_rows">
				<option value="5">&nbsp;5</option>
				<option value="6">&nbsp;6</option>
				<option value="7">&nbsp;7</option>
				<option value="8">&nbsp;8</option>
				<option value="9">&nbsp;9</option>
				<option value="10">10</option>
				<option value="15">15</option>
				<option value="20">20</option>
				<option value="25">25</option>
			</select> rows
		</td>
	</tr>

	<tr class="ctr">
		<td class="demo" nowrap>
			<select name="cfg_textarea_cols">
				<option value="58">&nbsp;58</option> <!-- works well with INPUT SIZE="60" -->
				<option value="60">&nbsp;60</option>
				<option value="65">&nbsp;65</option>
				<option value="70">&nbsp;70</option>
				<option value="75">&nbsp;75</option>
				<option value="80">&nbsp;80</option> <!-- 80-90 is OK for small font -->
				<option value="85">&nbsp;85</option>
				<option value="90">&nbsp;90</option>
				<option value="95">&nbsp;95</option>
				<option value="100">100</option>
				<option value="110">110</option> <!-- 110-140 is OK for x-small font -->
				<option value="120">120</option>
				<option value="130">130</option>
				<option value="130">140</option>
			</select> cols
		</td>
	</tr>


	<tr class="ctr">
		<td class="demo" colspan="2">'trimlen|LF' =&gt; n,
			<br><a rel="nofollow" target="_blank" href="./doc/html/configuration.output-control.html" onclick="openWinDocs('doc/html/configuration.output-control.html','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">Output control: Character length limit</a>
			applied to BLOB columns
		</td>
		<td class="demo">
			<select name="cfg_textarea_trimlen">
				<option value="0">Omit trimlen</option>
				<option value="10">&nbsp;10 characters</option>
				<option value="15">&nbsp;15 characters</option>
				<option value="20">&nbsp;20 characters</option>
				<option value="25">&nbsp;25 characters</option>
				<option value="30">&nbsp;30 characters</option>
				<option value="40">&nbsp;40 characters</option>
				<option value="50" selected>&nbsp;50 characters</option>
				<option value="100">100 characters</option>
				<option value="150">150 characters</option>
				<option value="200">200 characters</option>

			</select>
		</td>
	</tr>


	<tr class="ctr">

		<td class="demo" colspan="2">

			<?php

			if(count($cfg_skip_table_array) > 0){

				$tmp = '';

				foreach($cfg_skip_table_array as $var) {

					if($var != '') { $tmp .= $var.', '; }

				}

				if(substr($tmp, 0, -2) != '') {

					echo "\n".'<span class="red">Forms will <strong>NOT</strong> be generated for these tables: '.substr($tmp, 0, -2).'</span>';

				}else{

					echo "\n".'Forms will be generated for all tables unless only 1 table is selected below. <span class="red">Take care not to over-write files that you customized by hand after they were originally generated.</span> ';

				}

			}

			?>

		</td>

		<td class="demo">
			<select name="cfg_diskwrite">

				<option value="0">Display Only</option>

				<?php if($cfg_disable_overwrite == 0) { ?>

					<option value="1">Over-Write Existing</option>

				<?php	}; ?>

				</select>
		</td>

	</tr>


	<tr class="ctr">

		<td class="demo" colspan="2">Selecting only one table is useful when you want to quickly <a href="./ignore.php?id=one_form" rel="nofollow" target="_blank" onclick="openWinDocs('ignore.php?id=one_form','Help','width=640,height=480,resizable=1,menubar=yes,scrollbars=yes');return false" onMouseOver="window.status='Help';return true" onMouseOut="window.status='';return true">create one form</a>.</td>

		<td class="demo">

			<select name="cfg_selected_table">

				<option value="">Output All Tables</option>

							<?php

							$installed_tables = array();

							for($i = 0; $i < $num_tbs; $i++) {

								$tb = mysql_tablename($tbs, $i);

								echo "\n\t\t\t\t\t".'<option value="'.$tb.'">'.$tb.'</option>';

								$installed_tables[] = $tb;

							}

							?>

			</select>

		</td>

	</tr>


	<tr class="ctr">
		<td class="demo" align="right" colspan="2">
			<img src="./imgs/arrow.gif" width="12" height="12" alt="" border="0">&nbsp;
			<span style="font-weight:bold;color:#006600;background-color:transparent">Click the Submit button ONCE, then wait 15-30 seconds &nbsp;</span>
			<img src="./imgs/arrow.gif" width="12" height="12" alt="" border="0">&nbsp;
		</td>
		<td class="demo">

			<input type="submit" name="my_submit" value="Submit">
			&nbsp;&nbsp;
			<input type="reset" name="my_reset" value="Reset">
		</td>
	</tr>

</table>

</form>

<?php

// Nag for installation of the `change_log` schema if the table is not found.

$required_tables = array('change_log');

$m = 0;

foreach($required_tables as $val){
	if(!in_array($val, $installed_tables)){
		$m++;
	}
}

if($m){
	echo "\n".'<p align="center"><a href="./sql/change_log.sql" target="_blank" style="color:#ff0000;background-color:transparent">Please install the `change_log` table schema</a></p>';
}

?>
