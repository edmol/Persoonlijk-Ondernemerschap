
<?php
$opts['mfg']['menu_label'] = 'phpMyEdit Forms'; // dbconn.php is not included by this file
?>

<table align="center" border="0" cellpadding="0" cellspacing="0" width="640">

	<tr>

		<td class="borderless">

			<h3>About MFG</h3>

			PHP Multi Form Generator (MFG) can <a title="Generate Forms - Multi Form Generator (MFG) is a PHP Form Generator and MySQL Table Editor using phpMyEdit" href="./generator.php">generate</a> up to 100 phpMyEdit-based scripts in less than 30 seconds. Works with most <a href="http://www.php.net">PHP</a> versions + <a href="http://www.mysql.com">MySQL</a>&trade; MyISAM tables where the first column is a unique identifier (e.g. auto_increment column).

			<br><br>

			MFG's default character set is UTF-8 which supports a wide array of non-English characters. 
			See <a title="Connection Character Sets and Collations" href="http://dev.mysql.com/doc/refman/5.0/en/charset-connection.html" target="_blank">MySQL&trade; Connection Character Sets and Collations</a> for further information (affects <a href="http://www.mysql.com">MySQL</a>&trade; versions 4-5).

			<br><br>

			Many links appearing below will open a new browser window. 

			<h3>Links to sample forms using the default stylesheet and background images:</h3>


			<table border="0" cellpadding="0" cellspacing="5">
				<tr>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_outlook.php" target="_blank" rel="nofollow">Contacts</a></td>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_employees.php" target="_blank" rel="nofollow">Employees</a></td>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_content.php" target="_blank" rel="nofollow">Content</a></td>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_orders.php" target="_blank" rel="nofollow">Orders</a></td>
				</tr>
				<tr>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_customers.php" target="_blank" rel="nofollow">Customers</a></td>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_products.php" target="_blank" rel="nofollow">Products</a></td>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_user_log.php" target="_blank" rel="nofollow">User Log</a></td>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_order_details.php" target="_blank" rel="nofollow">Order Details</a></td>
				</tr>
				<tr>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_suppliers.php" target="_blank" rel="nofollow">Suppliers</a></td>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_colors.php" target="_blank" rel="nofollow">Colors</a></td>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_sql_col_types.php" target="_blank" rel="nofollow">SQL Columns</a></td>
					<td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_streets.php" target="_blank" rel="nofollow">Streets</a></td>
					<!-- <td><a href="http://www.php-form-generator.com/phpmyedit/output/my_mfg_to_do.php" target="_blank" rel="nofollow">To Do</a></td> -->
				</tr>
			</table>

			<h3>Contact form with TABS visible in Add, Change, coPy modes</h3>

			<a href="http://www.php-form-generator.com/phpmyedit/output/_outlook_tabs.php" target="_blank" rel="nofollow">Contact form with TABS</a>

			<h3>Links to plain sample forms</h3>

			To alter the appearance of your forms, simply edit the &quot;include files&quot; used for HTML header, footer, and stylesheet: 

			<a href="http://www.php-form-generator.com/phpmyedit/output/_css_demo_form.php" target="_blank" rel="nofollow">selectable stylesheet</a>
			- <a href="http://www.php-form-generator.com/phpmyedit/output/_css_demo_form2.php" target="_blank" rel="nofollow">no stylesheet</a>

			<h3>The ./output/ directory</h3>

			<a href="./output/index.php" rel="nofollow"><?php echo $opts['mfg']['menu_label']; ?></a> (Auto-generated menu of MFG forms)

			<br><br>
	
			<hr size="1">

			<br>

			MFG Installation, requirements, &amp; notes can be found in the 

			<a href="readme.txt" target="_blank">readme.txt</a> file.

			<br><br>

			The intent of <a href="generator.php" title="PHP Multi Form Generator (MFG)">MFG</a> is to generate <a href="http://www.phpmyedit.org/" title="phpMyEdit">phpMyEdit</a>-based scripts for <strong>all</strong> <a href="http://www.mysql.com">MySQL</a>&trade; MyISAM tables found in the configured database <strong>all at one time, and write them to disk in a matter of seconds</strong>. 
			These forms are ideal in situations where &quot;admin&quot; forms are required, and are often suitable for public display. 
			A wide variety of configuration options are available.

			<br><br>

			Subsequently, if generating scripts for a newly created table, users should select Display Only, and select a single table from the list. <i class="contrast"><u>In other words, be careful not over-write existing scripts that were customized after being generated.</u></i>

			<br><br>

			This project's home page is <a href="http://www.php-form-generator.com/index.php?s=23" title="PHP Form Generator for phpMyEdit">www.php-form-generator.com</a>. The <a href="http://www.php-form-generator.com/index.php?s=61">bug note</a> page is updated when required.

			<br><br><hr size="1"><br>
			<strong>Bonus: </strong><a href="badwords.php" target="_blank">badwords.php</a>
			<br><br>
			<strong>Bonus: </strong><a href="csv_export.php" target="_blank">csv_export.php</a> (Syntax: csv_export.php?tb=table_name)

		</td>

	</tr>

</table>

<br>

<hr size="1">

<br>

<table align="center" border="0" cellpadding="5" cellspacing="0">

	<tr valign="top">

		<td>

			phpMyEdit project links

			<ul>
				<li><a href="http://platon.sk/projects/proj_doc_page.php?project_id=5">phpMyEdit documentation</a></li>
				<li><a href="http://platon.sk/forum/projects/?c=5">phpMyEdit forum</a></li>
				<li><a href="http://www.phpmyedit.org/" title="phpMyEdit home">phpMyEdit home</a></li>
				<li><a href="http://www.phpmyedit.org/article.php?screenshots">phpMyEdit screenshots</a></li>
				<li><a href="http://www.phpmyedit.org/article.php?testimonials">phpMyEdit testimonials</a></li>
				<li><a href="http://www.phpmyedit.org/article.php?features">phpMyEdit features</a></li>
				<li><a href="http://www.phpmyedit.org/article.php?support">phpMyEdit support</a></li>
				<li><a href="http://www.phpmyedit.org/article.php?customers">phpMyEdit customers</a></li>
				<li><a href="http://www.phpmyedit.org/article.php?references">phpMyEdit references</a></li>
				<li><a href="http://www.phpmyedit.org/article.php?developers">phpMyEdit developers</a></li>
				<li><a href="http://www.phpmyedit.org/article.php?commercial">phpMyEdit commercial</a></li>
				<li><a href="http://platon.sk/projects/main_page.php?project_id=5">phpMyEdit development files</a></li>
				<li><a href="http://platon.sk/cvs/cvs.php/phpMyEdit/">Platon CVS Repository</a></li>
				<li><a href="http://nepto.org/">phpMyEdit maintainer</a></li>
			</ul>

		</td>

		<td>

			phpMyEdit examples on other websites

			<ul>
				<li><a href="http://www.efitfinancial.com/health-club-directory.php" target="_blank">Health Club Directory</a></li>
				<li><a href="http://www.hockinson.com/index.php?s=140" target="_blank">phpMyEdit example 1</a></li>
				<li><a href="http://www.hockinson.com/index.php?s=149" target="_blank">phpMyEdit example 2</a></li>
				<li><a href="http://www.hockinson.com/index.php?s=138" target="_blank">phpMyEdit example 3</a></li>
				<li><a href="http://www.ucl.ac.uk/library/archaeology-sites/" target="_blank">Archaeology Database</a></li>
			</ul>

			Related links:

			<ul>
				<li><a href="http://www.hockinson.com/index.php?s=27">phpMyEdit info</a></li>
				<li><a href="http://www.php.net">PHP</a></li>
				<li><a href="http://www.mysql.com">MySQL</a>&trade;</li>
				<li><a href="http://www.phpmyadmin.net/home_page/index.php">phpMyAdmin</a></li>
				<li><a href="http://www.php-form-generator.com/php-form-generator.php?s=23">php-form-generator.com</a></li>
				<li><a href="./doc/html/" rel="nofollow">phpMyEdit documentation</a> (local copy)</li>
			</ul>

		</td>

	</tr>

</table>


