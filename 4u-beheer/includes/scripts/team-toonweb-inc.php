<?PHP
//
// Omgevingsvariabelen
//
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
$dirgraph = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/';
$rapdir = "/var/www/4u-change.com/web/spiegel-rapporten/";
//
// Functie voor chmod directory 
//
// 
// Op basis van de meegkregen directory bepalen we nu eerst het soort rapport 
//
$startpos = strlen($teamtoken)-16;
$soort = substr($teamtoken,$startpos,2);
$rapporttex = "team-spiegel-".$soort.'.tex';
$rapportpdf = "team-spiegel-".$soort.'.pdf';
$rapporttoc = "team-spiegel-".$soort.'.toc';
$htmldoc = "team-spiegel";
//
// Op basis van organisatienaam en datum+tijd nieuwe naam bepalen voor de pdf
//
$startpos = 0;
$lengte = strlen($teamtoken)-21;
$orgnaam = substr($teamtoken,0,$lengte);
//
// Nu de datum uit de directorie halen
// 
$startpos = strlen($orgnaam)+8;
$datum = substr($teamtoken,$startpos,12);
//
//
$dir = $dirgraph.$teamtoken;
$file = $dir.$rapporttex;
$newname = $orgnaam.'-'.'T'.$soort.'-'.$datum.'.pdf';
$file = $dir.$htmldoc.'.html';
//
// redirect URL
//
$htmldir = 'http://www.4u-change.com/wp-content/gallery/porapporten/'.$teamtoken.'/'.$htmldoc.'.html';
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
			$boodschap = "Team rapport is reeds aangemaakt en weer oproepbaar gemaakt.";
		}
		else
		{
			$boodschap = "Team Ontwikkeling Rapport graag eerst aanmaken aub.";
		}
	}
} else $boodschap = "Team Ontwikkelings Rapport niet aanwezig op server, vraag opnieuw aan";
?>