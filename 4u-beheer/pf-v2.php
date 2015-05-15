<?PHP
$dirtoken = $_GET["dir"];
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
require_once ($INC_DIR.'includes/authenticate.php');
require_once ($INC_DIR."includes/scripts/pf-v2-inc.php");
echo $boodschap;
?>