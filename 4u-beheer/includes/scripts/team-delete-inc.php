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
mysql_select_db("potoets");
//
//
$sql = "select * from statusspiegels01_historie where teamID='$recdel'";
// echo $sql;
//
$query = mysql_query($sql);
//
$row = mysql_fetch_array($query);
//
// echo "<p>",$row['teamID'],": ",$row['folder']; 
//
$dir = $dirgraph.$row['folder'];
//
// echo $dir;
//
//$cmdstring = "rm -rf ".$dir;
//system($cmdstring);
//
$sql = "delete from statusspiegels01_historie where teamID='$recdel'";
// echo $sql;
$query = mysql_query($sql);
header('Location:http://www.4u-change.com/4u-beheer/team-status.php');
?>