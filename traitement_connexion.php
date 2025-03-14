<?php
session_start();
include("config/config.php");

// vérifier le fomrulaire
if (isset($_POST['nom']) && isset($_POST['email']) && isset($_POST['mot_de_passe'])) {
    $nom = $_POST['nom'];
    $email = $_POST['email'];
    $motdepasse = $_POST['mot_de_passe'];

    // connexion à la bdd
    $bdd = new PDO('mysql:host=' . $hote . ';port=' . $port . ';dbname=' . $nom_bd, $identifiant, $mot_de_passe, $options);

    // vérification des informations de l'utilisateur
    $requete = $bdd->prepare("SELECT * FROM utilisateurs WHERE email = ?");
    $requete->execute([$email]);
    $utilisateur = $requete->fetch();

    // Vérifier si l'utilisateur est dans la bdd et si le mot de passe est correct
    if ($utilisateur && password_verify($motdepasse, $utilisateur['mot_de_passe'])) {
        // Si les informations d'identification sont correctes, enregistrez l'utilisateur dans la session
        $_SESSION['utilisateur'] = $utilisateur;
    } 
} 
?>