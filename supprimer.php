<?php
include("config/config.php");
$bdd = new PDO('mysql:host=' . $hote . ';port=' . $port . ';dbname=' . $nom_bd, $identifiant, $mot_de_passe, $options);

// suppression d'un article
$requete = 'DELETE FROM critiques WHERE id=' . $_POST["id"];
$nbsuppression = $bdd->exec($requete);

// redirection
header('Location: admin.php?action=suppression&suppr=OK');
exit();

?>