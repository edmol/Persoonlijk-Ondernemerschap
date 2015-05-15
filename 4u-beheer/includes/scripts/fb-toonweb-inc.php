<?PHP
//
// Omgevingsvariabelen
//
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
$dirgraph = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/';
$rapdir = "/var/www/4u-change.com/web/spiegel-rapporten/";
$dir = $dirgraph.$dirtoken.'/';
//
// HTML index file in de directory die we willen oproepen
//
$htmldir = 'http://www.4u-change.com/wp-content/gallery/porapporten/'.$dirtoken.'/'.$dirtoken.'.html';
$file = $dir.$dirtoken.'html';
$newname = $dirtoken.'.pdf';
chdir($dir);
if(file_exists($dir) && is_dir($dir))
{
	if(file_exists($file))
	{
		// 
		// Redirect nu naar de html pagina
		header ("Location: $htmldir");
		//
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
			$cmdstring = "pdftohtml -c ".$newname." ".$dirtoken." >/dev/null";
			system($cmdstring);
			//
			// OOk nu weer de pdf verwijderen uit de directory
			//
			system("rm -r *.pdf");
			//
			// redirect nu ook naar de html pagina
			//
			header ("Location: $htmldir");
		}
		else
		{
			$boodschap = "Spiegel eerst aanmaken, probeer later nog eens";
		}
	}
} else $boodschap = "Spiegel niet aanwezig op server, vraag opnieuw aan";
?>