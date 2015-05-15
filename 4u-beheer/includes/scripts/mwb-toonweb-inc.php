<?PHP
//
// Omgevingsvariabelen
//
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
$dirgraph = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/';
$rapdir = "/var/www/4u-change.com/web/spiegel-rapporten/";
$htmldoc = "mwb";
$dir = $dirgraph.$mwbdir.'/';
$newname = str_replace('/','-',$mwbdir).'.pdf';

$file = $dir.$htmldoc.'.html';
//
// redirect URL
//
$htmldir = 'http://www.4u-change.com/wp-content/gallery/porapporten/'.$mwbdir.'/'.$htmldoc.'.html';
//
//
//
//
chdir($dir);
if(file_exists($dir) && is_dir($dir))
{
	if(file_exists($file))
	{
	    chdir($dir);
		//
		// Redirect hier
		//
		header ("Location: $htmldir");
	} else 
	{
	// Het kan zijn dat we al een cleanup hebben gedaan en dat de PDF wel bestaat
	// dus controleren we eerst of de pdf bestaat in de backup directory
	//
		if(file_exists($rapdir.$newname))
		{
		    //
			// Haal de pdf tijdelijk terug op opnieuw oproepbaar te maken
			//
			copy($rapdir.$newname,$dir.$newname);
			$cmdstring = "pdftohtml -c ".$newname." ".$htmldoc." >/dev/null";
			system($cmdstring);
			//
			// OOk nu weer de pdf verwijderen uit de directory
			//
			system("rm -r *.pdf");
			//
			// redirect nu ook naar de html pagina
			//
			header ("Location: $htmldir");
			$boodschap = "Medewerker Betrokkenheid Rapportage is reeds aangemaakt en weer oproepbaar gemaakt.";
		}
		else
		{
			$boodschap = "Medewerker Betrokkenheid Rapportage eerst aanmaken aub.";
		}
	}
} else $boodschap = "Medewerkers Betrokkenheid Rapport aanvraag niet aanwezig op server, vraag opnieuw aan";
?>