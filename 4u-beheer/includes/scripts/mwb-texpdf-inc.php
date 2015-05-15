<?PHP
//
// Omgevingsvariabelen
//
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
$dirgraph = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/';
$rapdir = "/var/www/4u-change.com/web/spiegel-rapporten/";
$htmldoc = "mwb";
$dir = $dirgraph.$mwbdir.'/';
$file = $dir.'mwb.tex';
$newname = str_replace('/','-',$mwbdir).'.pdf';
$htmlfile = 'http://www.4u-change.com/wp-content/gallery/porapporten/';
$htmlfile = $htmlfile.$mwbdir.'/'.$newname;
//
//
//
//
//
chdir($dir);
system("rm -r *.pdf");
if(file_exists($dir) && is_dir($dir))
{
	if(file_exists($file))
	{
	    chdir($dir);
		system("pdflatex mwb.tex >/dev/null");
		chmod("mwb.toc",0777);
		system("pdflatex mwb.tex >/dev/null");
		chmod("mwb.pdf",0777);
		system("pdflatex mwb.tex >/dev/null");
		chmod("mwb.pdf",0777);			
		rename("mwb.pdf", $newname);
		//system("rm -r *.png");
		system("rm -r mwb.*");
		//$cmdstring = "pdftohtml -c ".$newname." ".$htmldoc." >/dev/null";
		//system($cmdstring);
		copy($newname,$rapdir.$newname); 
		header("Location: $htmlfile");	
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
			// $cmdstring = "pdftohtml -c ".$newname." ".$htmldoc." >/dev/null";
			// system($cmdstring);
			//
			// OOk nu weer de pdf verwijderen uit de directory
			//
			header("Location: $htmlfile");	
		}
		else
		{
			$boodschap = "Medewerkers Betrokkenheid Rapport is aangemaakt, maar nog niet door server verwerkt, even geduld aub";
		}
	}
} else $boodschap = "Medewerkers Betrokkenheid Rapport niet aanwezig op server, vraag opnieuw aan";
?>