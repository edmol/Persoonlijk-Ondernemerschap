<?PHP
//
// Omgevingsvariabelen
//
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
$dirgraph = '/var/www/4u-change.com/web/wp-content/gallery/porapporten/';
//
// Functie voor chmod directory 
//
// 
// Op basis van de meegkregen directory bepalen we nu eerst het soort rapport 
//
mysql_connect("localhost","root","spiegel2013");
mysql_select_db("historie");
//
//
$sql = "select * from mwbstatus where mwb_id='$recdel'";
//echo $sql;
//
$query = mysql_query($sql);
//
$row = mysql_fetch_array($query);
//
echo "<p>",$row['mwb_id'],": ",$row['mwb_dir']; 
//
$dir = $dirgraph.$row['mwb_dir'].'/';
//
// echo $dir;
//
$cmdstring = "rm -rf ".$dir;
system($cmdstring);
//
$sql = "delete from mwbstatus where mwb_id='$recdel'";
//echo $sql;
$query = mysql_query($sql);
$boodschap = "rapport verwijderd";
?>