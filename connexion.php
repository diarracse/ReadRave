<?php

include("config/config.php");
$bdd = new PDO('mysql:host=' . $hote . ';port=' . $port . ';dbname=' . $nom_bd, $identifiant, $mot_de_passe, $options);
?>


    <?php include('header.php'); ?>

<div class="connexion" id="card">
    <h2>Se connecter</h2>
    <form action="connexion.php" method="POST">
        <label for="nom">Nom :</label><br>
        <input type="text" id="nom" name="nom"><br>
        <label for="email">Email :</label><br>
        <input type="email" id="email" name="email"><br>
        <label for="mot_de_passe">Mot de passe :</label><br>
        <input type="password" id="mot_de_passe" name="mot_de_passe"><br><br>
        <input type="submit" value="Se connecter">
    </form>

    <?php
    session_start();

    if (isset($_POST['nom']) && isset($_POST['email']) && isset($_POST['mot_de_passe'])) {
        $nom = $_POST['nom'];
        $email = $_POST['email'];
        $motdepasse = $_POST['mot_de_passe'];

        // Requête de vérification de l'utilisateur dans la base de données
        $requete = $bdd->prepare("SELECT * FROM utilisateurs WHERE nom=? AND email=? AND mot_de_passe=?");
        $requete->execute([$nom, $email, $motdepasse]);
        $utilisateur = $requete->fetch();

        if ($utilisateur) {
            $_SESSION['utilisateur'] = $nom;
            header('Location: profil.php');
        }
    }
    ?>
</div>
    <?php include('footer.php'); ?>
