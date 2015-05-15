<?PHP
//
// Omgevingsvariabelen
//
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
$dirgraph = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/';
$rapdir = "/var/www/4u-change.com/web/spiegel-rapporten/";
// 
// De variabele van de directory staat in tokendir
//
// 3 stappen zijn A) Het controleren of po-rapport.tex in de directory bestaat en deze de juiste rechten geven 
//                B) Het maken van het pdf rapport en toc op basis van aanwezigheid po-rapport.tex en juiste rechten geven
//                C) Het opschonen van de directory waarbij alle pgn bestanden verwijderd worden
//
//  STAP A : Check of po-rapport.tex bestat
//
$dir = $dirgraph.$dirtoken.'/';
$file0 = $dir.'po0-rapport.tex';
$file = $dir.'po2-rapport.tex';
$file2 = $dir.'po1-rapport.tex';
$file3 =$dir.'po3-rapport.tex';
$file4 =$dir.'po4-rapport.tex';
$newname = $dirtoken.'.pdf';
$htmlfile = 'http://www.4u-change.com/wp-content/gallery/porapporten/'.$dirtoken.'/'.$newname;
chdir($dir);
if(file_exists($dir) && is_dir($dir))
{
if(file_exists($file0))
	{
		chdir($dir);
		system("rm -r *.pdf");
		//
		// Twee keer pdflatex om de toc goed in het document te krijgen
		//
		system("pdflatex po0-rapport.tex >/dev/null");
		system("pdflatex po0-rapport.tex >/dev/null");
		//
		//  Feedback spiegel is nu aangemaakt en voorzien van een TOC
		//	
		rename("po0-rapport.pdf", $newname);
		//
		// Rapport heeft nu een nieuwe onderscheidende naam zodat er een kopie gemaakt kan worden
		//
		//system("rm -r *.png");
		//system("rm -r po2-rapport.*");
		//
		// Nu vanuit $newname een html view maken zodat pdf niet gedownload hoeft te worden
		//
		//$cmdstring = "pdftohtml -c ".$newname." ".$dirtoken." >/dev/null";
		//system($cmdstring);
		//
		// kopieer de pdf nu direct naar een beschermde omgeving
		//
		copy($newname,$rapdir.$newname); 
		header("Location: $htmlfile");
		//
		// Clean up de pdf zodat deze niet gedownload kan worden.
		//		
		$boodschap = "Spiegel rapport is beschikbaar";
	} else 
	if(file_exists($file))
	{
		chdir($dir);
		system("rm -r *.pdf");
		//
		// Twee keer pdflatex om de toc goed in het document te krijgen
		//
		system("pdflatex po2-rapport.tex >/dev/null");
		system("pdflatex po2-rapport.tex >/dev/null");
		//
		//  Feedback spiegel is nu aangemaakt en voorzien van een TOC
		//	
		rename("po2-rapport.pdf", $newname);
		//
		// Rapport heeft nu een nieuwe onderscheidende naam zodat er een kopie gemaakt kan worden
		//
		//system("rm -r *.png");
		//system("rm -r po2-rapport.*");
		//
		// Nu vanuit $newname een html view maken zodat pdf niet gedownload hoeft te worden
		//
		//$cmdstring = "pdftohtml -c ".$newname." ".$dirtoken." >/dev/null";
		//system($cmdstring);
		//
		// kopieer de pdf nu direct naar een beschermde omgeving
		//
		copy($newname,$rapdir.$newname); 
		header("Location: $htmlfile");
		//
		// Clean up de pdf zodat deze niet gedownload kan worden.
		//		
		$boodschap = "Spiegel rapport is beschikbaar";
	} else 
	if(file_exists($file2))
	{
		chdir($dir);
		system("rm -r *.pdf");
		//
		// Twee keer pdflatex om de toc goed in het document te krijgen
		//
		system("pdflatex po1-rapport.tex >/dev/null");
		system("pdflatex po1-rapport.tex >/dev/null");
		//
		//  Feedback spiegel is nu aangemaakt en voorzien van een TOC
		//	
		rename("po1-rapport.pdf", $newname);
		//
		// Rapport heeft nu een nieuwe onderscheidende naam zodat er een kopie gemaakt kan worden
		//
		//system("rm -r *.png");
		//system("rm -r po1-rapport.*");
		//
		// Nu vanuit $newname een html view maken zodat pdf niet gedownload hoeft te worden
		//
		//$cmdstring = "pdftohtml -c ".$newname." ".$dirtoken." >/dev/null";
		//system($cmdstring);
		//
		// kopieer de pdf nu direct naar een beschermde omgeving
		//
		copy($newname,$rapdir.$newname); 
		header("Location: $htmlfile");
		//
		// Clean up de pdf zodat deze niet gedownload kan worden.
		//
		//system("rm -r *.pdf");
		$boodschap = "Spiegel rapport is beschikbaar";
	} else 
	if(file_exists($file3))
	{
		chdir($dir);
		system("rm -r *.pdf");
		//
		// Twee keer pdflatex om de toc goed in het document te krijgen
		//
		system("pdflatex po3-rapport.tex >/dev/null");
		system("pdflatex po3-rapport.tex >/dev/null");
		//
		//  Feedback spiegel is nu aangemaakt en voorzien van een TOC
		//	
		rename("po3-rapport.pdf", $newname);
		//
		// Rapport heeft nu een nieuwe onderscheidende naam zodat er een kopie gemaakt kan worden
		//
		//system("rm -r *.png");
		//system("rm -r po3-rapport.*");
		//
		// Nu vanuit $newname een html view maken zodat pdf niet gedownload hoeft te worden
		//
		//$cmdstring = "pdftohtml -c ".$newname." ".$dirtoken." >/dev/null";
		//system($cmdstring);
		//
		// kopieer de pdf nu direct naar een beschermde omgeving
		//
		copy($newname,$rapdir.$newname); 
		header("Location: $htmlfile");
		//
		// Clean up de pdf zodat deze niet gedownload kan worden.
		//
		// system("rm -r *.pdf");
		$boodschap = "Spiegel rapport is beschikbaar, navigeer terug om naar menu te gaan.";
	} else
	if(file_exists($file4))
	{
		chdir($dir);
		system("rm -r *.pdf");
		//
		// Twee keer pdflatex om de toc goed in het document te krijgen
		//
		system("pdflatex po4-rapport.tex >/dev/null");
		system("pdflatex po4-rapport.tex >/dev/null");
		//
		//  Feedback spiegel is nu aangemaakt en voorzien van een TOC
		//	
		rename("po4-rapport.pdf", $newname);
		//
		// Rapport heeft nu een nieuwe onderscheidende naam zodat er een kopie gemaakt kan worden
		//
		//system("rm -r *.png");
		//system("rm -r po4-rapport.*");
		//
		// Nu vanuit $newname een html view maken zodat pdf niet gedownload hoeft te worden
		//
		//$cmdstring = "pdftohtml -c ".$newname." ".$dirtoken." >/dev/null";
		//system($cmdstring);
		//
		// kopieer de pdf nu direct naar een beschermde omgeving
		//
		copy($newname,$rapdir.$newname); 
		header("Location: $htmlfile");
		//
		// Clean up de pdf zodat deze niet gedownload kan worden.
		//
		// system("rm -r *.pdf");
		$boodschap = "Spiegel rapport is beschikbaar, navigeer terug om naar menu te gaan.";
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
			//$cmdstring = "pdftohtml -c ".$newname." ".$dirtoken." >/dev/null";
			//system($cmdstring);
			//
			// OOk nu weer de pdf verwijderen uit de directory
			//
			header("Location: $htmlfile");
			// system("rm -r *.pdf");
			$boodschap = "Spiegel was reeds aangemaakt en weer oproepbaar gemaakt.";
		}
		else
		{
			$boodschap = "Spiegel is aangemaakt, maar nog niet door server verwerkt, even geduld aub";
		}
	}
} else $boodschap = "Spiegel niet aanwezig op server, vraag opnieuw aan";
?>