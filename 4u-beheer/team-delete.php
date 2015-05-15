<?PHP
$recdel = $_GET["del"];
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
require_once ($INC_DIR.'includes/authenticate.php');
require_once ($INC_DIR."includes/scripts/team-delete-inc.php");
echo $boodschap;
?>