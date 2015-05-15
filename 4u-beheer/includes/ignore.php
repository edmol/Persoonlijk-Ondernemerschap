<?php $id = array_key_exists('id', $_GET) ? strip_tags(stripslashes(trim($_GET['id']))) : ''; ?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html401/loose.dtd">

<html>

<head>




<!-- This popup delivers simple help messages for the form generator menu. -->


<!-- Ignore this popup (see ./output/help/popup.php if interested in configuring a Help system) -->






<meta http-equiv="content-language" content="en-us">

<meta http-equiv="content-style-type" content="text/css">

<meta http-equiv="content-type" content="text/html; charset=utf-8">

<meta name="robots" content="none">

<link href="./output/style/generic.css" rel="stylesheet" type="text/css">

<title>Help</title>

</head>

<body>

<?php 

switch($id)

{

	Case 'css':

		echo '<p>The affected (right-justify) column types are:<br>INT, REAL, DATE, DATETIME, TIME, TIMESTAMP, &amp; YEAR.</p>';

		echo '<p>To alter the affected column types, search in generator.inc.php (using your text editor) for &quot;CSS to right-justify certain column types&quot;. You will find a switch() statement where you can easily comment out individual field types if necessary.</p>';

		echo '<p>One might alternatively use \'colattrs\' to right align certain fields.<br><br>In this case, make sure the stylesheet does not have a style specification that would over-ride \'colattrs\'.</p>';

		break;


	Case 'installation':

		echo '<pre>';

		require('./readme.txt');

		echo '</pre>';

		break;


	Case 'one_form':

		echo '<p>For example, after adding a new column to a table, or changing the attributes of an existing column, you may need to copy a only small section of code from this output to an existing form.<br><br>This feature is also useful when debugging any changes made to the MFG application itself, by letting you preview the output for one table.</p>';

		break;


	Case 'prefix':

		echo '<p>&quot;my_&quot; is the recommended prefix for files written to disk.<br><br>The selected prefix will be pre-pended to the table name.<br><br>Manually configure the same prefix in ./output/index.php in order to auto-generate menus for the Use Form link.<br><br>Selecting &quot;my_&quot; for a table named &quot;contacts&quot; will generate &quot;my_contacts.php&quot;.</p>';

		break;


	Case 'tabs':

		echo 'Note: \'tab\' option is auto-generated (active) for column 0 (required).<br><br>\'tab\' option is inserted commented out for the remaining columns.<br><br>Tabbed field groups appear in Add, Change, coPy, View, and Delete modes.<br><br>Define the label on the \'tab\': 1st field (required), 5th field, 10th field, etc.<br><br>The value for \'tab\' can be changed. You could, for example change: <br>\'tab\' => \'ID\' to \'tab\' => \'Whatever\'<br><br><strong>Note:</strong> To suppress the display of fields below the first \'tab\' group while in List mode,<br>change the display options of the remaining fields (beginning with tab group two).<br><br>Remove the L (and possibly F) from \'options\' => \'ACPVDFL\' in subsequent arrays.';

		break;


	Case 'trig':

		echo '<pre>';

		require('./inc/triggers.popup.txt');

		echo '</pre>';

		break;


	Case 'tweak':

		echo '<pre>';

		require('./inc/tweak.popup.txt');

		echo '</pre>';

		break;



	default:

		echo '<p>Invalid help topic</p>';

		break;

};


?>

</body>
</html>
