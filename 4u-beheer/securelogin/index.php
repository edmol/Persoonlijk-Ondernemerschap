<?php
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
require_once ($INC_DIR.'includes/authenticate.php');
?>
</br>
<h2>U heeft nu toegang tot de beveiligde 4U CHANGE survey omgeving.</h2>
<img src=http://www.4u-change.com/4u-beheer/zelfbeeld.jpeg height="100" width="100">
<br />

<a href="http://www.4u-change.com/4u-beheer/organisatie.php">1. Bedrijven.</a><br/>
<a href="http://www.4u-change.com/4u-beheer/medewerkers.php">2. Deelnemers.</a><br/>
<a href="http://www.4u-change.com/4u-beheer/facilitators.php">3. Facilitators.</a><br/>
<a href="http://www.4u-change.com/4u-beheer/aanvragen.php">4. Toetsen aanmaken.</a><br />
<a href="http://www.4u-change.com/4u-beheer/fb-toetsen.php">5. Uitnodigingen versturen. Overzicht van toetsen die niet gereed zijn.</a><br />

<img src=http://www.4u-change.com/4u-beheer/i_Movements.png height="100" width="600">
<br />
<a href="http://www.4u-change.com/4u-beheer/toets-selecteer.php">1. Wijzig antwoorden van een toets, wijzig de namen op het rapport en toekennen van een organisatie </a><br />
<a href="http://www.4u-change.com/4u-beheer/advies.php">2. Advies toevoegen - Facilitator voegt teksten toe.</a><br />
<a href="http://www.4u-change.com/4u-beheer/fb-status.php">3. Pdf rapporten en overzicht van alle individuele spiegels.</a><br />
<a href="http://www.4u-change.com/4u-beheer/toets-rerun.php">4. Nieuw rapport aanmaken (na wijzigingen). </a><br />

<!--
<a href="http://www.4u-change.com/4u-beheer/fb-pdfweb.php">5. BEKIJKEN ONLINE - PDF rapport via WEB tonen zonder te downloaden.</a><br />-->

<img src=http://www.4u-change.com/4u-beheer/t_Movements.png height="100" width="600" >
<br />
<a href="http://www.4u-change.com/4u-beheer/team-samenstellen-new.php">1. Team samenstellen, Team facilitator en Advies teksten toevoegen.</a><br />
<a href="http://www.4u-change.com/4u-beheer/team-status.php">2. Pdf rapporten en overzicht van alle team spiegels.</a><br />
<a href="http://www.4u-change.com/4u-beheer/team-rerun.php">3. Nieuw team rapport aanmaken (na wijzigingen).</a><br />
</br>


<img src=http://www.4u-change.com/4u-beheer/o_Movements.png height="100" width="600">
<br />
<a href="http://www.4u-change.com/4u-beheer/mwb-aanvraag.php">1. Aanvraag Organisatie Ontwikkel Spiegel en wijzigen facilitator en variabele teksten.</a><br />
<a href="http://www.4u-change.com/4u-beheer/mwb-status.php">2. Pdf rapporten en overzicht van alle organisatie spiegels.</a><br />
<a href="http://www.4u-change.com/4u-beheer/mwb-rerun.php">3. Nieuw rapport aanmaken (na wijzigingen).</a><br />

<!-- <h3>Dashboarding</h3>
<a href="http://www.4u-change.com/4u-beheer/dashb-feedback.html">1. Individuele Ontwikkel Spiegels - Dashboard</a><br />
<a href="http://www.4u-change.com/4u-beheer/dashb-team.html">2. TEAM Ontwikkel Spiegels - Dashboard</a><br />
-->



</br>
<?php if (isset($_SESSION['logged_in'])) { ?><a href="logout.php?signature=<?php echo $_SESSION['signature']; ?>">Logout</a><br /><?php } ?>


