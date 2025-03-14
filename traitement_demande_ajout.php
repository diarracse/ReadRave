<?php
include("config/config.php");
$bdd = new PDO('mysql:host=' . $hote . ';port=' . $port . ';dbname=' . $nom_bd, $identifiant, $mot_de_passe, $options);
// Vérifier si le formulaire a été envoyé
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données du formulaire
    $titre = $_POST["titre"];
    $auteur = $_POST["auteur"];

    try {
        $requete = $bdd->prepare("INSERT INTO demande_ajout_livre (titre, auteur) VALUES (?, ?)");
        $requete->execute([$titre, $auteur]);
        echo "Demande d'ajout de livre soumise avec succès!";
    } catch (PDOException $e) {

        echo "Erreur lors de la soumission de la demande: " . $e->getMessage();
    }
}

?>
