<?PHP
//
// Omgevingsvariabelen
//
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
$dirgraph = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/';
$rapdir = "/var/www/4u-change.com/web/spiegel-rapporten/";
$html = "http://www.4u-change.com/wp-content/gallery/porapporten/".$teamtoken;
//
// Functie voor chmod directory 
//
// 
// Op basis van de meegkregen directory bepalen we nu eerst het soort rapport 
//
$startpos = strlen($teamtoken)-16;
$soort = substr($teamtoken,$startpos,2);
$rapporttex = "team-".$soort."-to".'.tex';
$rapportpdf = "to-".$soort.'.pdf';
$rapporttoc = "to-".$soort.'.toc';
$htmldoc = "to";
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
$newname = $orgnaam.'-'.'T'.$soort.'-'.$datum.'-02-.pdf';
$htmlfile = 'http://www.4u-change.com/wp-content/gallery/porapporten/';
$htmlfile = $htmlfile.$teamtoken.$newname;
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
		if($rapporttex=="team-01-to.tex")
		{
			system("pdflatex team-01-to.tex >/dev/null");
			system("pdflatex team-01-to.tex >/dev/null");
			rename("team-01-to.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-02-to.tex")
		{
			system("pdflatex team-02-to.tex >/dev/null");
			system("pdflatex team-02-to.tex >/dev/null");
			rename("team-02-to.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-03-to.tex")
		{
			system("pdflatex team-03-to.tex >/dev/null");
			system("pdflatex team-03-to.tex >/dev/null");
			rename("team-03-to.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-04-to.tex")
		{
			system("pdflatex team-04-to.tex >/dev/null");
			system("pdflatex team-04-to.tex >/dev/null");
			rename("team-04-to.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-05-to.tex")
		{
			system("pdflatex team-05-to.tex >/dev/null");
			system("pdflatex team-05-to.tex >/dev/null");
			rename("team-05-to.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-06-to.tex")
		{
			system("pdflatex team-06-to.tex >/dev/null");
			system("pdflatex team-06-to.tex >/dev/null");
			rename("team-06-to.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-07-to.tex")
		{
			system("pdflatex team-07-to.tex >/dev/null");
			system("pdflatex team-07-to.tex >/dev/null");
			rename("team-07-to.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-08-to.tex")
		{
			system("pdflatex team-08-to.tex >/dev/null");
			system("pdflatex team-08-to.tex >/dev/null");
			rename("team-08-to.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
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
			//$cmdstring = "pdftohtml -c ".$newname." ".$htmldoc." >/dev/null";
			//system($cmdstring);
			//
			// OOk nu weer de pdf verwijderen uit de directory
			//
			header("Location: $htmlfile");
			// system("rm -r *.pdf");
			$boodschap = "Team ontwikkel rapport is reeds aangemaakt en weer oproepbaar gemaakt.";
		}
		else
		{
			$boodschap = "Team Ontwikkeling Rapport is aangemaakt, maar nog niet door server verwerkt, even geduld aub";
		}
	}
} else $boodschap = "Team Ontwikkelings Rapport niet aanwezig op server, vraag opnieuw aan";
?>