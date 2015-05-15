<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
<title>
Feedback tokesn aanmaken
</title>
<Style>
BODY, P,TD{ font-family: Arial,Verdana,Helvetica, sans-serif; font-size: 12pt }
A{font-family: Arial,Verdana,Helvetica, sans-serif;}
B {	font-family : Arial, Helvetica, sans-serif;	font-size : 14px;	font-weight : bold;}
</Style>
</script>
</head>
<body>
<?PHP
//include the main validation script
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
require_once  ($INC_DIR.'includes/formvalidator.php');
$show_form=true;
if(isset($_POST['Verstuur']))
{// The form is submitted

//Setup Validations
$validator = new FormValidator();
$validator->addValidation("rvnaam","req","Graag de voornaam van de respondent invullen.");
$validator->addValidation("ranaam","req","Graag de achternaam van de respondent invullen.");
$validator->addValidation("remail","email","Het e-mail adres van de respondent is niet juist.");
$validator->addValidation("remail","req","Graag e-mail adres van de respondent invullen.");

$validator->addValidation("f1vnaam","req","Graag de voornaam van eerste feedback gever invullen.");
$validator->addValidation("f1anaam","req","Graag de achternaam van de eerste feedback gever invullen.");
$validator->addValidation("f1email","email","Het e-mail adres van de eerste feedback gever is niet juist.");
$validator->addValidation("f1email","req","Graag e-mail adres van de eerste feedback gever invullen.");

//Now, validate the form
if($validator->ValidateForm())
{
//Validation success.
//
//*********************************************************************
// JUISTE SURVEY KIEZEN LET OP TEST EN PRODUCTIE
//**********************************************************************
$test='N';
if($test=='Y')
{
$dirgraph = '/Library/Webserver/Documents/wp-content/gallery/porapporten/';
		$omgeving = 'toetsen.4u-change.com';
		} else
		{
		$dirgraph = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/';
		$omgeving ='www.4u-change.com/potoets';
		}
$survey="714972";
//*********************************************************************
//  RESPONDENT - Haal variabelen op en verwijder spaties uit voornaam
//*********************************************************************
$rvnaam = str_replace(" ","",$_POST['rvnaam']);
$ranaam = $_POST['ranaam'];
$remail = $_POST['remail'];
$rsex   = $_POST['rsex'];
//*********************************************************************
//  FEEDBACK 1 - Haal variabelen op en verwijder spaties uit voornaam
//*********************************************************************
$f1vnaam = str_replace(" ","",$_POST['f1vnaam']);
$f1anaam = $_POST['f1anaam'];
$f1email = $_POST['f1email'];
$rf1sex   = $_POST['f1sex'];
//Here we can proceed with processing the form 
//**********************************************************
// AANMAKEN TOKENS VOOR LIMESURVEY
// Nummers zorgen voor uniekheid waneer dezelfde voornamen
//**********************************************************
$rtoken = $rvnaam.'1'.date("Ymd").date("His");
$f1token = $f1vnaam.'2'.date("Ymd").date("His")
//**********************************************************
// DATABASE CONNECTIE MAKEN en DATABASE SELECTEREN
//**********************************************************
mysql_connect("www.4u-change.com","root","mvhcmdhjh82");
mysql_select_db("potoets");
		//********************************************************************
		// Voordat we de directory aanmaken zorgen we dat de token eerst zijn aangemaakt
		// voor de respondent. Resultaten van de feedback gevers komen in de 
		// respondent directory welke uniek is omdat deze opgebouwd is met het token. 
		//*********************************************************************
		$tokentabel = 'lime_tokens_'.$survey;
		$exist = "DELETE FROM $tokentabel WHERE token='$rtoken'";
		$existresult = mysql_query($exist);
		$maakdir  = $dirgraph.$rtoken.'/';
		if (file_exists($maakdir)) { 
	    echo ""; 
		   } else {
	    	mkdir($maakdir);
			}
		chmod($maakdir,0777);
		//**********************************************************************
		// MAAK TOKEN VOOR RESPONDENT AAN
		//**********************************************************************
		$order1 = "INSERT INTO $tokentabel (firstname,lastname,email,emailstatus,token,attribute_1,attribute_2,attribute_3,attribute_4,attribute_5,attribute_6,attribute_7) VALUES('$rvnaam','$ranaam','$remail','OK','$rtoken','r','$rvnaam','$f1token','$f2token','$rsex','$maakdir','1')";  
//**********************************************************************
// NU TOKEN VOOR RESPONDENT IN MYSQL DATABASE ZETTEN
//**********************************************************************
$result = mysql_query($order1);
//**********************************************************************
// ALS RESULTAAT OK DAN DIRECTORY AANMAKEN
//***********************************************************************

		//***********************************************************************
		// NU FEEDBACK TOKEN AANMAKEN
		//***********************************************************************
		$exist = "DELETE FROM $tokentabel WHERE token='$f1token'";
		$existresult = mysql_query($exist);
		$order1 = "INSERT INTO $tokentabel (firstname,lastname,email,emailstatus,token,attribute_1,attribute_2,attribute_3,attribute_4,attribute_5,attribute_6,attribute_7) VALUES('$f1vnaam','$f1anaam','$f1email','OK','$f1token','f','$rvnaam','$rtoken','$f2token','$rsex','$maakdir','1')";
		$result = mysql_query($order1);
		//
		//
		//************************************************************************************
		// 2 e-mails aanmaken voor respondent en feedback gevers.
		// stuur een e-mail naar het e-mail adres met de melding dat de toetsen klaar 
		// staan met de bijbehorende token URL, zodat de toetsen uitgevoerd kunnen worden.
		// Bij respondent melden wie de feedback gevers zijn en bij de feedback gevers melden 
		// voor wie ze survey invullen. 
		//*************************************************************************************
		//
		// *** MAIL NAAR RESPONDENT ***
		//
		$to = $remail;
		$subject = "Vertrouwen - Innovatie - Spiegelen - Uw instructies voor het maken van de toets.";
		$mes01 = "Hallo ".$rvnaam.".";
		$mes02 = "U ontvangt deze mail omdat u via de website een aanvraag voor het rapport Uw individuele ontwikkel spiegel gedaan heeft.";
		$mes03 = "Als respondent heeft u gekozen voor de volgende feedback gever :";
		$mes04 = "Feedbackgever 1 voor ".$rvnaam." : ".$f1vnaam." ".$f1anaam;
		$mes06 = "Als respondent wordt u ook verzocht om de 100 stellingen in te vullen.";
		$mes07 = "Zodra u en de feed back gevers de stellingen hebben ingevuld, zullen wij zo snel mogelijk het rapport maken en met u bespreken.";
        $mes08 = "Om te beginnen met de 100 stellingen klikt u op onderstaande link.";	
		$mes09 = "Vertrouwen - Innovatie - Spiegelen - Uw ontwikkelspiegel. http://".$omgeving."/index.php?sid=".$survey."&token=".$rtoken;
		$mes10 = "";
		$mes11 = "Met vriendelijke groeten,";
		$mes12 = "4U CHANGE - Vertrouwen - Innovatie - Spiegelen";
		$mes13 = "Voor vragen kun u een mail sturen naar helpdesk@4u-change.com";
		$message = "$mes01\n\n$mes02\n\n$mes03\n\n$mes04\n\n$mes05\n\n$mes06\n\n$mes07\n\n\n$mes08\n\n$mes09\n\n$mes10\n\n$mes11\n\n$mes12\n\n$mes13\n\n";
		$headers = "From: ed.mol@4u-change.com\r\nReply-To: ed.mol@4u-change.com";
		$mail_sent = @mail( $to, $subject, $message, $headers );
		//
		// *** MAIL NAAR FEEDBACK gever 1 ***
		//
		$to = $f1email;
		$subject = "Vertrouwen - Innovatie - Spiegelen - Uw instructies voor het geven van feedback voor ".$rvnaam." ".$ranaam."."; 
		$mes01 = "Hallo ".$f1vnaam.".";
		$mes02 = "U ontvangt deze mail omdat ".$rvnaam." ".$ranaam." een aanvraag voor de individuele ontwikkelspiegel gedaan heeft, en u heeft opgegeven als feedbackgever.";
		$mes03 = "Als feedbackgever wordt u ook verzocht om net als ".$rvnaam." ".$ranaam." 100 stellingen in te vullen.";
		$mes04 = "Zodra u en de anderen feed back gevers de stellingen hebben ingevuld, zullen wij zo snel mogelijk het rapport maken en met ".$rvnaam." ".$ranaam." bespreken.";
$mes05 = "Om te beginnen met de 100 stellingen klikt u op onderstaande link.";
		$mes06 = "Vertrouwen - Innovatie - Spiegelen. http://".$omgeving."/index.php?sid=".$survey."&token=".$f1token;
		$mes07 = "";
		$mes08 = "Met vriendelijke groeten,";
		$mes09 = "4U CHANGE - Vertrouwen - Innovatie - Spiegelen";
		$mes10 = "Voor vragen kun u een mail sturen naar helpdesk@4u-change.com";
		$message = "$mes01\n\n$mes02\n\n$mes03\n\n$mes04\n\n$mes05\n\n$mes06\n\n$mes07\n\n\n$mes08\n\n$mes09\n\n$mes10\n\n";
		$headers = "From: ed.mol@4u-change.com\r\nReply-To: ed.mol@4u-change.com";
		$mail_sent = @mail( $to, $subject, $message, $headers );
		//
		// *** MAIL NAAR FEEDBACK gever 2 ***
//
//(like sending email, saving to Database etc)
// In this example, we just display a message
echo "<h3>Feedback spiegel registratie en versturen van e-mails was succesvol !</h3>";
$show_form=false;
}
else
{
echo "<B>Validation Errors:</B>";
$error_hash = $validator->GetErrors();
foreach($error_hash as $inpname => $inp_err)
{
echo "<p>$inpname : $inp_err</p>\n";
}        
}//else
}//if(isset($_POST['Verstuur']))

if(true == $show_form)
{
?>
<form name='test' method='POST' action='' accept-charset='UTF-8'>
<table cellspacing='0' cellpadding='10' border='0' bordercolor='#000000'>
<tr>
</tr>
<tr>
<td>
<table cellspacing='2' cellpadding='2' border='0'>
<tr>
<td align='right' class='normal_field'>Voornaam van de respondent</td>
<td class='element_label'>
<input type='text' name='rvnaam' size='40'>
</td>
</tr>
<tr>
<td align='right' class='normal_field'>Achternaam van de respondent</td>
<td class='element_label'>
<input type='text' name='ranaam' size='40'>
</td>
</tr>
<tr>
<td align='right' class='normal_field'>Email adres van de respondent</td>
<td class='element_label'>
<input type='text' name='remail' size='40'>
</td>
</tr>
<tr>
<td align='right' class='normal_field'>Geslacht respondent(m/v)</td>
<td class='element_label'>
<input type='radio' name='rsex' value="m">Man<br>
<input type='radio' name='rsex' value="v">Vrouw
</td>
</tr>
<tr>
<td align='right' class='normal_field'>Voornaam van eerste feedback gever</td>
<td class='element_label'>
<input type='text' name='f1vnaam' size='40'>
</td>
</tr>
<tr>
<td align='right' class='normal_field'>Achternaam van de eerste feedback gever</td>
<td class='element_label'>
<input type='text' name='f1anaam' size='40'>
</td>
</tr>
<tr>
<td align='right' class='normal_field'>Email adres van de eerste feedback gever</td>
<td class='element_label'>
<input type='text' name='f1email' size='40'>
</td>
</tr>
<tr>
<tr>
<tr>
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
