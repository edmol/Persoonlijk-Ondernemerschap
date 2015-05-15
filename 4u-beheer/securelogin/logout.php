<?php
session_start();
$INC_DIR = $_SERVER["DOCUMENT_ROOT"]."/4u-beheer/";
require($INC_DIR.'includes/config.php');

function sanitize($data) {
    $data = trim($data);
    $data = htmlspecialchars($data);
    return $data;
}

$signature = sanitize($_GET['signature']);
if ($signature === $_SESSION['signature']) {
//authenticated user request
    $_SESSION['logged_in'] = False;
    session_destroy();
    session_unset();
    echo 'U bent succesvol uitgelogd van de 4U-CHANGE survey omgeving.<br /><br />';
    ?>
    ======================<br />
    Tot de volgende keer !<br />
    ======================<br />
    <a href="index.php">Inloggen</a><br />
    <?php
} else {
//unauthorized logout
    header(sprintf("Location: %s", $forbidden_url));
    exit;
}
?>
