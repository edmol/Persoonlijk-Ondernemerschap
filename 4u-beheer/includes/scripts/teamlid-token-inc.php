<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>
<title>
aanvraag individuele spiegel
</title>
<Style>
BODY, P,TD{ font-family: Arial,Verdana,Helvetica, sans-serif; font-size: 10pt }
A{font-family: Arial,Verdana,Helvetica, sans-serif;}
B {	font-family : Arial, Helvetica, sans-serif;	font-size : 12px;	font-weight : bold;}
</Style>
</script>
</head>
<body>
<?PHP
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
require_once  ($INC_DIR.'includes/formvalidator.php');
//include the main validation script
$show_form=true;
if(isset($_POST['Submit']))
{// The form is submitted

//Setup Validations
$validator = new FormValidator();
$validator->addValidation("rvnaam","req","Graag de voornaam van de respondent invullen.");
$validator->addValidation("ranaam","req","Graag de achternaam van de respondent invullen.");
$validator->addValidation("remail","email","Het e-mail adres van de respondent is niet juist.");
$validator->addValidation("remail","req","Graag e-mail adres van de respondent invullen.");

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
		$omgeving = 'www.4u-change.com/potoets';
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
//Here we can proceed with processing the form 
//**********************************************************
// AANMAKEN TOKENS VOOR LIMESURVEY
// Nummers zorgen voor uniekheid waneer dezelfde voornamen
//**********************************************************
$rtoken = $rvnaam.'1'.date("Ymd").date("His");
//**********************************************************
// DATABASE CONNECTIE MAKEN en DATABASE SELECTEREN
//**********************************************************
mysql_connect("www.4u-change.com","root","spiegel2013");
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
		$order1 = "INSERT INTO $tokentabel (firstname,lastname,email,emailstatus,token,attribute_1,attribute_2,attribute_3,attribute_4,attribute_5,attribute_6,attribute_7) VALUES('$rvnaam','$ranaam','$remail','OK','$rtoken','r','$rvnaam','','','$rsex','$maakdir','t')";  
//**********************************************************************
// NU TOKEN VOOR RESPONDENT IN MYSQL DATABASE ZETTEN
//**********************************************************************
$result = mysql_query($order1);
//**********************************************************************
// ALS RESULTAAT OK DAN DIRECTORY AANMAKEN
//***********************************************************************
		//
		//************************************************************************************
		// 3 e-mails aanmaken voor respondent en feedback gevers.
		// stuur een e-mail naar het e-mail adres met de melding dat de toetsen klaar 
		// staan met de bijbehorende token URL, zodat de toetsen uitgevoerd kunnen worden.
		// Bij respondent melden wie de feedback gevers zijn en bij de feedback gevers melden 
		// voor wie ze survey invullen. 
		//*************************************************************************************
		//
		// *** MAIL NAAR RESPONDENT ***
		//
		$to = $remail;
		$subject = "Vertrouwen - Innovatie - Spiegelen. Uw instructies voor het maken van de Ontwikkel Spiegel.";
		$mes01 = "Hallo ".$rvnaam.".";
		$mes02 = "Je ontvangt deze mail omdat er een aanvraag voor de invulling van de Ontwikkel Spiegel is gedaan. Dit kan zijn voor jezelf of als onderdeel van een (toekomstig) team.";
		$mes03 = "Daarom hierbij het verzoek om de 100 stellingen van deze Ontwikkel Spiegel in te vullen.";
		$mes04 = "Zodra de stellingen door eenieder zijn ingevuld, zullen wij zo snel mogelijk het rapport maken en bespreken.";
		$mes05 = "Door op onderstaande link te klikken start je met het invullen van de 100 stellingen.";	
		$mes06 = "Klik hier voor het invullen van de 100 stellingen van de Ontwikkel Spiegel - http://".$omgeving."/index.php?sid=".$survey."&token=".$rtoken;
		$mes07 = "";
		$mes08 = "Met vriendelijke groeten,";
		$mes09 = "4U CHANGE - Vertrouwen - Innovatie - Spiegelen";
		$mes10 = "Voor vragen graag een mail sturen naar helpdesk@4u-change.com";
		$message = "$mes01\n\n$mes02\n\n$mes03\n\n$mes04\n\n$mes05\n\n$mes06\n\n$mes07\n\n\n$mes08\n\n$mes09\n\n$mes10\n\n";
		$headers = "From: ed.mol@4u-change.com\r\nReply-To: ed.mol@4u-change.com";
		$mail_sent = @mail( $to, $subject, $message, $headers );
//
//(like sending email, saving to Database etc)
// In this example, we just display a message
echo "<h4>E-mail is succesvol aangemaakt en verzonden!</h4>";
echo "<h4>Check uw mail inbox ( en spam box ) voor de mail met verdere instructies.</h4>";
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
}//if(isset($_POST['Submit']))
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
      <td class='element_label'><input type='text' name='rvnaam' size='40'></td>
    </tr>
<tr>
  <td align='right' class='normal_field'>Achternaam van de respondent</td>
  <td class='element_label'><input type='text' name='ranaam' size='40'></td>
</tr>
<tr>
  <td align='right' class='normal_field'>Email adres van de respondent</td>
  <td class='element_label'><input type='text' name='remail' size='40'></td>
</tr>
<tr>
 <td align='right' class='normal_field'>Geslacht respondent(m/v)</td>
 <td class='element_label'><input type='radio' name='rsex' value="m">Man<br><input type='radio' name='rsex' value="v">Vrouw</td>
</tr>
<tr>
<tr>
</tr>
<tr>
<td colspan='2' align='center'>
<input type='submit' name='Submit' value='Submit'>
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
