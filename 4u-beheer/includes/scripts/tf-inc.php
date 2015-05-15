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
$rapporttex = "team-".$soort."-tf".'.tex';
$rapportpdf = "tf-".$soort.'.pdf';
$rapporttoc = "tf-".$soort.'.toc';
$htmldoc = "tf";
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
$newname = $orgnaam.'-'.'T'.$soort.'-'.$datum.'-01-.pdf';
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
		if($rapporttex=="team-01-tf.tex")
		{
			system("pdflatex team-01-tf.tex >/dev/null");
			system("pdflatex team-01-tf.tex >/dev/null");
			rename("team-01-tf.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-02-tf.tex")
		{
			system("pdflatex team-02-tf.tex >/dev/null");
			system("pdflatex team-02-tf.tex >/dev/null");
			rename("team-02-tf.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-03-tf.tex")
		{
			system("pdflatex team-03-tf.tex >/dev/null");
			system("pdflatex team-03-tf.tex >/dev/null");
			rename("team-03-tf.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-04-tf.tex")
		{
			system("pdflatex team-04-tf.tex >/dev/null");
			system("pdflatex team-04-tf.tex >/dev/null");
			rename("team-04-tf.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-05-tf.tex")
		{
			system("pdflatex team-05-tf.tex >/dev/null");
			system("pdflatex team-05-tf.tex >/dev/null");
			rename("team-05-tf.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-06-tf.tex")
		{
			system("pdflatex team-06-tf.tex >/dev/null");
			system("pdflatex team-06-tf.tex >/dev/null");
			rename("team-06-tf.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-07-tf.tex")
		{
			system("pdflatex team-07-tf.tex >/dev/null");
			system("pdflatex team-07-tf.tex >/dev/null");
			rename("team-07-tf.pdf", $newname);
			copy($newname,$rapdir.$newname); 
			header("Location: $htmlfile");
		}
		if($rapporttex=="team-08-tf.tex")
		{
			system("pdflatex team-08-tf.tex >/dev/null");
			system("pdflatex team-08-tf.tex >/dev/null");
			rename("team-08-tf.pdf", $newname);
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