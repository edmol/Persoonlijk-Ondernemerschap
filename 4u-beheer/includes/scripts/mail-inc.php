<Style>
BODY, P,TD{ font-family: Arial,Verdana,Helvetica, sans-serif; font-size: 12pt }
A{font-family: Arial,Verdana,Helvetica, sans-serif;}
B {	font-family : Arial, Helvetica, sans-serif;	font-size : 14px;	font-weight : bold;}
</Style>
</script>
</head>
<body>
<?PHP
ini_set('display_errors', 1);
error_reporting(~0);
// $dirtoken = $_GET["dir"];
// $dirtoken = 'Ed120130428193944';
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
//require_once ($INC_DIR.'includes/authenticate.php');
//
// Open database
//
$show_form=false;
$connect = mysql_connect("localhost","root","spiegel2013");
if (!$connect) {die("Kan geen verbinding maken met database server :". mysql_error());}

if (!mysql_select_db("potoets")) {die("Kan geen verbinding met de database maken :" . mysql_error());}
//
// Zoek in tabel het record wat bij dit token hoort
//
$result = mysql_query("SELECT * from token_persoon WHERE token_persoon_token = '$dirtoken'");
if (!$result) {
	echo 'kan geen mails versturen - gegevens niet gevonden '.mysql_error();
	exit;
	}
$row = mysql_fetch_row($result,MYSQL_BOTH);
//
//
$zoek_respondent = 	$row["token_respondent"];
mysql_free_result($result);
//
// Nu alle records bij de respondent zoeken
//
$result = mysql_query("SELECT * from token_persoon WHERE token_respondent = '$zoek_respondent'");
if (!$result) {
	echo 'kan geen mails versturen - gegevens niet gevonden '.mysql_error();
	exit;
}
$num_rows = mysql_num_rows($result);
if ($num_rows >0)
{
	mysql_data_seek($result,0);
	$row = mysql_fetch_assoc($result);
	$tekst1= "Uitnodiging versturen naar : ";
	$vraag1="?";
	$k1_token = $row["token_persoon_token"];
	$k1_token_soort = $row["token_soort"];
	$k1_voornaam = $row["token_voornaam"];
	$k1_achternaam = $row["token_achternaam"];
	$k1_email = $row["token_email"];
}
else
{
    $tekst1='';
    $vraag1='';
	$k1_voornaam ='';
	$k1_achternaam='';
	$k1_email='';
	$k1_geslacht='';
}

if ($num_rows >1)
{
	mysql_data_seek($result,1);
	$row = mysql_fetch_assoc($result);
	$tekst2= "Uitnodiging versturen naar : ";
	$vraag2="?";
	$k2_token = $row["token_persoon_token"];
	$k2_token_soort = $row["token_soort"];
	$k2_voornaam = $row["token_voornaam"];
	$k2_achternaam = $row["token_achternaam"];
	$k2_email = $row["token_email"];
}
else
{
	$tekst2='';
    $vraag2='';
	$k2_voornaam ='';
	$k2_achternaam='';
	$k2_email='';
	$k2_geslacht='';
}

if ($num_rows >2)
{
	mysql_data_seek($result,2);
	$row = mysql_fetch_assoc($result);
	$tekst3= "Uitnodiging versturen naar : ";
	$vraag3="?";
	$k3_token = $row["token_persoon_token"];
	$k3_token_soort = $row["token_soort"];
	$k3_voornaam = $row["token_voornaam"];
	$k3_achternaam = $row["token_achternaam"];
	$k3_email = $row["token_email"];
}
else
{
	$tekst3='';
    $vraag3='';
	$k3_voornaam ='';
	$k3_achternaam='';
	$k3_email='';
	$k3_geslacht='';
}
if ($num_rows >3)
{
	mysql_data_seek($result,3);
	$row = mysql_fetch_assoc($result);
	$tekst4= "Uitnodiging versturen naar : ";
	$vraag4="?";
	$k4_token = $row["token_persoon_token"];
	$k4_token_soort = $row["token_soort"];
	$k4_voornaam = $row["token_voornaam"];
	$k4_achternaam = $row["token_achternaam"];
	$k4_email = $row["token_email"];
}
else
{
	$tekst4='';
    $vraag4='';
	$k4_voornaam ='';
	$k4_achternaam='';
	$k4_email='';
	$k4_geslacht='';
}
if ($num_rows >4)
{
	mysql_data_seek($result,4);
	$row = mysql_fetch_assoc($result);
	$tekst5= "Uitnodiging versturen naar : ";
	$vraag5="?";
	$k5_token = $row["token_persoon_token"];
	$k5_token_soort = $row["token_soort"];
	$k5_voornaam = $row["token_voornaam"];
	$k5_achternaam = $row["token_achternaam"];
	$k5_email = $row["token_email"];
}
else
{
	$tekst5='';
    $vraag5='';
	$k5_voornaam ='';
	$k5_achternaam='';
	$k5_email='';
	$k5_geslacht='';
	$k5_stuur='n';
}
//
// Routine om formulier uit te lezen en e-mail te versturen
//
$show_form=true;
if(isset($_POST['Verstuur']))
{
    //
    // Defaults - voorkom spam 
    $help = "mijnsoftcontrols@4u-change.com";
    $org_mail = "4U-CHANGE";
    $org_mail = "ed.mol@4u-change.com";
	//
	// Variabelen uit her formulier halen
	//
	
	$k1_stuur = $_POST['k1_stuur'];
	$k2_stuur = $_POST['k2_stuur'];
	$k3_stuur = $_POST['k3_stuur'];
	$k4_stuur = $_POST['k4_stuur'];
	$k5_stuur = $_POST['k5_stuur'];
	
	$k1_voornaam = $_POST['k1_voornaam'];
	$k2_voornaam = $_POST['k2_voornaam'];
	$k3_voornaam = $_POST['k3_voornaam'];
	$k4_voornaam = $_POST['k4_voornaam'];
	$k5_voornaam = $_POST['k5_voornaam'];
	
	$k1_achternaam = $_POST['k1_achternaam'];
	$k2_achternaam = $_POST['k2_achternaam'];
	$k3_achternaam = $_POST['k3_achternaam'];
	$k4_achternaam = $_POST['k4_achternaam'];
	$k5_achternaam = $_POST['k5_achternaam'];
	
	$k1_email = $_POST['k1_email'];
	$k2_email = $_POST['k2_email'];
	$k3_email = $_POST['k3_email'];
	$k4_email = $_POST['k4_email'];
	$k5_email = $_POST['k5_email'];
	
	$help = $_POST['help'];
	$org_mail = $_POST['org_mail'];
	$naam_mail = $_POST['naam_mail'];
//
//*********************************************************************
// JUISTE SURVEY KIEZEN LET OP TEST EN PRODUCTIE
//**********************************************************************
	$dirgraph = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/';
	$omgeving ='www.4u-change.com/potoets';
	$survey="714972";
	$subject = "Uw instructies voor de I-CHANGE stellingenlijst";
	$l01 = "Bijgaand ontvangt u uw instructies voor het maken van de I-CHANGE stellingenlijst.";
	$l02 = "Deze stellingenlijst bestaat uit 100 stellingen. De stellingen gaan over uzelf of slaan op een ander.";
	$l03 = "U beantwoord de stellingen door te kiezen uit 5 mogelijkheden, m(eestal), a(ltijd), n(ooit), s(oms), i(ncidenteel)";
	$l04 = "Als respondent heeft u gekozen voor 0, 1 of meerdere feedbackgevers.";
	$l05 = "Het invullen van de stellingen gebeurt via het internet. U heeft hiervoor een internet verbinding nodig.";
	$l06 = "Zodra de respondent en de feedbackgevers de stellingen hebben ingevuld zal het I-CHANGE rapport samengesteld worden.";
	$l07 = "Het rapport wordt volgens afspraak met betrokkenen besproken.";
	$l08 = "Het onderstaande internet adres geeft toegang tot de stellingenlijst door erop te klikken of het adres over te nemen in de adresbalk van uw internetbrowser.";
	$l09 = "Uw toegang tot de stellingenlijst: ";
	$l10 = "Heeft u toch nog vragen, stuur dan een mail naar :".$help;
	$l11 = "Met vriendelijke groeten,";
	$l12 = $naam_mail;
	$l13 = $org_mail;
	$headers = "From : ".$help."\r\nReply-To: ".$help; 
	    //
	    // eerste kandidaat 
	    //
	    if ($k1_stuur=='j' && $num_rows>0)
	    {
			$to = $k1_email;
			$k1_9 = $l09."http://".$omgeving."/index.php/survey/index/sid/".$survey."/token/".$k1_token."/lang/nl";
			$message ="$l01\n$l02\n$l03\n\n$l04\n\n$l05\n$l06\n$l07\n\n$l08\n$k1_9\n\n$l10\n\n\n$l11\n\n$l12\n$l13\n\n";
			$mail_sent = @mail( $to, $subject, $message, $headers );
		}
		if ($k2_stuur=='j' && $num_rows>1)
	    {
			$to = $k2_email;
			$k2_9 = $l09."http://".$omgeving."/index.php/survey/index/sid/".$survey."/token/".$k2_token."/lang/nl";
			$message ="$l01\n$l02\n$l03\n\n$l04\n\n$l05\n$l06\n$l07\n\n$l08\n$k2_9\n\n$l10\n\n\n$l11\n\n$l12\n$l13\n\n";
			$mail_sent = @mail( $to, $subject, $message, $headers );
		}
		if ($k3_stuur=='j' && $num_rows>2)
	    {
			$to = $k3_email;
			$k3_9 = $l09."http://".$omgeving."/index.php/survey/index/sid/".$survey."/token/".$k3_token."/lang/nl";
			$message ="$l01\n$l02\n$l03\n\n$l04\n\n$l05\n$l06\n$l07\n\n$l08\n$k3_9\n\n$l10\n\n\n$l11\n\n$l12\n$l13\n\n";
			$mail_sent = @mail( $to, $subject, $message, $headers );
		}
		if ($k4_stuur=='j' && $num_rows>3)
	    {
			$to = $k4_email;
			$k4_9 = $l09."http://".$omgeving."/index.php/survey/index/sid/".$survey."/token/".$k4_token."/lang/nl";
			$message ="$l01\n$l02\n$l03\n\n$l04\n\n$l05\n$l06\n$l07\n\n$l08\n$k4_9\n\n$l10\n\n\n$l11\n\n$l12\n$l13\n\n";
			$mail_sent = @mail( $to, $subject, $message, $headers );
		}
		if ($k5_stuur=='j' && $num_rows>4)
	    {
			$to = $k5_email;
			$k5_9 = $l09."http://".$omgeving."/index.php/survey/index/sid/".$survey."/token/".$k5_token."/lang/nl";
			$message ="$l01\n$l02\n$l03\n\n$l04\n\n$l05\n$l06\n$l07\n\n$l08\n$k5_9\n\n$l10\n\n\n$l11\n\n$l12\n$l13\n\n";
			$mail_sent = @mail( $to, $subject, $message, $headers );
		}
		//
		//(like sending email, saving to Database etc)
		// In this example, we just display a message
		echo "<h3>Feedback spiegel registratie en versturen van e-mails was succesvol !</h3>";
		$update_datum = date("d-m-Y")." ".date("H:i");
		//
		// update token records als  sent == N dan op $update_datum zetten
		// update token records als  remindercount = remindercount + 1
		// als reminder count != 0 dan remindersent = $update_datum
		if ($k1_stuur=='j')
		{
		 $result = mysql_query("UPDATE lime_tokens_714972 SET remindersent='$update_datum' WHERE token='$k1_token'");
		 $result = mysql_query("UPDATE lime_tokens_714972 SET sent='$update_datum' WHERE token='$k1_token'");
		}
		if ($k2_stuur=='j')
		{
		 $result = mysql_query("UPDATE lime_tokens_714972 SET remindersent='$update_datum' WHERE token='$k2_token'");
		 $result = mysql_query("UPDATE lime_tokens_714972 SET sent='$update_datum' WHERE token='$k2_token'");
		}
		if ($k3_stuur=='j')
		{
		 $result = mysql_query("UPDATE lime_tokens_714972 SET remindersent='$update_datum' WHERE token='$k3_token'");
		 $result = mysql_query("UPDATE lime_tokens_714972 SET sent='$update_datum' WHERE token='$k3_token'");
		}
		if ($k4_stuur=='j')
		{
		 $result = mysql_query("UPDATE lime_tokens_714972 SET remindersent='$update_datum' WHERE token='$k4_token'");
		 $result = mysql_query("UPDATE lime_tokens_714972 SET sent='$update_datum' WHERE token='$k4_token'");
		}
		if ($k5_stuur=='j')
		{
		 $result = mysql_query("UPDATE lime_tokens_714972 SET remindersent='$update_datum' WHERE token='$k5_token'");
		 $result = mysql_query("UPDATE lime_tokens_714972 SET sent='$update_datum' WHERE token='$k5_token'");
		}
		//
		header("Location: http://www.4u-change.com/4u-beheer/fb-toetsen.php/");
		exit;
		
}//if(isset($_POST['Verstuur']))
if(true == $show_form)
{
?>
	<form name='test' method='POST' action='' accept-charset='UTF-8'>
	<table cellspacing='0' cellpadding='10' border='1' bordercolor='#333333'>
	<tr>
	<td>
	<table cellspacing='2' cellpadding='2' border='0'>
	<tr>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k1_voornaam' value="<?php echo $k1_voornaam; ?>" size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k1_achternaam' value="<?php echo $k1_achternaam; ?>"size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k1_email' value="<?php echo $k1_email; ?>" size='40'> </td>
		<td align='right' class='normal_field'>Uitnodigen?</td>
		<td class='element_label'>
			<input type='radio' name='k1_stuur' value="j">Ja
			<input type='radio' name='k1_stuur' value="n" checked>Nee<br>
		</td>
	</tr>


	<tr>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k2_voornaam' value="<?php echo $k2_voornaam; ?>" size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k2_achternaam' value="<?php echo $k2_achternaam; ?>"size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k2_email' value="<?php echo $k2_email; ?>" size='40'> </td>
		<td align='right' class='normal_field'>Uitnodigen?</td>
		<td class='element_label'>
			<input type='radio' name='k2_stuur' value="j">Ja
			<input type='radio' name='k2_stuur' value="n" checked>Nee<br>
		</td>
	</tr>

	<tr>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k3_voornaam' value="<?php echo $k3_voornaam; ?>" size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k3_achternaam' value="<?php echo $k3_achternaam; ?>"size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k3_email' value="<?php echo $k3_email; ?>" size='40'> </td>
		<td align='right' class='normal_field'>Uitnodigen?</td>
		<td class='element_label'>
			<input type='radio' name='k3_stuur' value="j">Ja
			<input type='radio' name='k3_stuur' value="n" checked>Nee<br>
		</td>
	</tr>

	<tr>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k4_voornaam' value="<?php echo $k4_voornaam; ?>" size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k4_achternaam' value="<?php echo $k4_achternaam; ?>"size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k4_email' value="<?php echo $k4_email; ?>" size='40'> </td>
		<td align='right' class='normal_field'>Uitnodigen?</td>
		<td class='element_label'>
			<input type='radio' name='k4_stuur' value="j">Ja
			<input type='radio' name='k4_stuur' value="n" checked>Nee<br>
		</td>
	</tr>

	<tr>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k5_voornaam' value="<?php echo $k5_voornaam; ?>" size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k5_achternaam' value="<?php echo $k5_achternaam; ?>"size='40'> </td>
		<td align='right' class='normal_field'></td>
		<td class='element_label'> <input type='text' name='k5_email' value="<?php echo $k5_email; ?>" size='40'> </td>
		<td align='right' class='normal_field'>Uitnodigen?</td>
		<td class='element_label'>
			<input type='radio' name='k5_stuur' value="j">Ja
			<input type='radio' name='k5_stuur' value="n" checked>Nee<br>
		</td>
	</tr>
	
	<tr>
		<td align='right' class='normal_field'>Helpdesk e-mail adres</td>
		<td class='element_label'> <input type='text' name='help' value="ed.mol@4u-change.com" size='40'> </td>
		<td align='right' class='normal_field'>Organisatie</td>
		<td class='element_label'> <input type='text' name='org_mail' value="4U CHANGE B.V." size='40'> </td>
		<td align='right' class='normal_field'>Naam</td>
		<td class='element_label'> <input type='text' name='naam_mail' value="ed.mol@4u-change.com" size='40'> </td>
	</tr>
	
	<tr>
	<td colspan='2' align='center'>
	<input type='submit' name='Verstuur' value='Verstuur'>
	</td>
	</tr>
	</table>
	</td>
	</tr>
	</table>
	</form>
<?PHP
}//true == $show_form
?>
</body>
<html>
