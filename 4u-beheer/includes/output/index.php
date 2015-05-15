<?php

/**
 * Generate links to scripts in the current directory, 
 * where the filename begins with $cfg_target_prefix
 */

$cfg_target_prefix = 'my_'; 

// $launch_window = ' target="_blank"'; // note the leading spece

$launch_window = '';

$generate_html = 0; // Set 1 to enable the display of HTML link code

// End configuration

$html_buffer = '';

$display_buffer = '';

require_once('./inc/dbconn.php'); // Required (also) to resolve the image path used in the page header.

require_once('./inc/header2.php');

?>

	<table align="center" border="0" cellpadding="0" cellspacing="0">

		<tr valign="top">

			<td class="borderless">

<strong><?php echo $opts['mfg']['menu_label']; ?></strong>

<?php

// Subject to certain restrictions, list files found in this folder.

// Below, you may want to substitute the following
// if(substr($file, -4) == '.php'){
// in place of
// if((substr($file, 0, strlen($cfg_target_prefix)) == $cfg_target_prefix) && substr($file, -4) == '.php') {

if($dir = @opendir('.')){

	$my_files = array();

	while(false !== ($file = readdir($dir))) {

		if((substr($file, 0, strlen($cfg_target_prefix)) == $cfg_target_prefix) && substr($file, -4) == '.php') {

			$my_files[] = $file;

		}				

	}

	closedir($dir);

}else{

	$display_buffer .= '<p>Cannot open directory</p>'."\n";

}

if(count($my_files) > 0){

	// natcasesort($my_files);

	sort($my_files);

	foreach($my_files as $my_file){

		if($my_file != basename($_SERVER["PHP_SELF"])){

			if(substr($my_file,0,4) != 'my__' && stristr($my_file, '.php')){

				$title = str_replace('.php', '', $my_file);

				$title = ucwords(strtolower(strtolower(str_replace('_', ' ', $title))));

				$display_buffer .= "\n".'<ul><li><a href="'.$my_file.'" title="'.$my_file.' - phpMyEdit based PHP form generator MySQL table editor"'.$launch_window.'>'.$my_file.'</a></li></ul>'."\n";

				if($generate_html > 0){
					$html_buffer .= '<ul><li><a href="'.$my_file.'"'.$launch_window.'>'.$title.'</a></li></ul>'."\n\n";
				}

			}

		}

	};


}else{

	$display_buffer .= '<p>No filenames match <span style="color:#ff0000;background-color:transparent">'.$cfg_target_prefix.'*.php</span>.</p>'."\n";

}

	echo $display_buffer;

?>

				<p>Stylesheet Examples:</p>

				<ul><li><a href="_css_demo_form.php" rel="nofollow">selectable stylesheet</a></li></ul>

				<ul><li><a href="_css_demo_form2.php" rel="nofollow">no stylesheet</a></li></ul>

				<ul><li><a href="_outlook_tabs.php" rel="nofollow">tabs example</a></li></ul>

				Other Links:

				<ul><li><a href="../generator.php" rel="nofollow">Generate Forms</a></li></ul>

				<ul><li><a href="../" rel="nofollow">MFG Main Menu</a></li></ul>

				<ul><li><a href="../readme.txt" rel="nofollow" target="_blank">../readme.txt</a></li></ul>

				<ul><li><a href="../doc/html/" rel="nofollow" target="_blank">Local Documentation</a></li></ul>

			</td>

		</tr>

<?php if($generate_html > 0 && $html_buffer != ''){ ?>

		<tr>

			<td>

				<hr size="1">

				<strong>HTML code for possible use as a User Menu</strong>
				Instead of using this script to auto-generate a 
				current list of all forms beginning 
				with &quot;<?php echo $cfg_target_prefix; ?>&quot;, 
				<br>developers might instead copy/paste the 
				following HTML to create a static menu for end users.

				<pre><?php echo htmlspecialchars($html_buffer); ?></pre>

			</td>

		</tr>

<?php	}; ?>

	</table>

<?php

require_once('./inc/footer2.php');

?>

