<?php
include("config/config.php");
$bdd = new PDO('mysql:host=' . $hote . ';port=' . $port . ';dbname=' . $nom_bd, $identifiant, $mot_de_passe, $options);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérez les données soumises du formulaire de modification
    $id_livre = $_POST['id_livre'];
    $nouveau_titre = $_POST['nouveau_titre'];
    $nouveau_genre = $_POST['nouveau_genre'];
    $nouvel_auteur = $_POST['nouvel_auteur'];
    $nouvelle_annee = $_POST['nouvelle_annee'];

    $requete_update = $bdd->prepare("UPDATE livres SET titre = ?, genre = ?, auteur = ?, annee_publication = ? WHERE id = ?");
    $requete_update->execute([$nouveau_titre, $nouveau_genre, $nouvel_auteur, $nouvelle_annee, $id_livre]);

    header("Location: admin.php?action=modification&modif=OK");
    exit(); 
}

$id_livre = $_GET['id_livre'];

$requete_details_livre = $bdd->prepare("SELECT * FROM livres WHERE id = ?");
$requete_details_livre->execute([$id_livre]);
$details_livre = $requete_details_livre->fetch(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier un livre</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <?php include('header.php'); ?>

    <h1>Modifier un livre</h1>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
        <input type="hidden" name="id_livre" value="<?php echo $id_livre; ?>">
     
        <label for="nouveau_titre">Nouveau titre :</label>
        <input type="text" name="nouveau_titre" value="<?php echo $details_livre['titre']; ?>"><br>

        <label for="nouveau_genre">Nouveau genre :</label>
        <input type="text" name="nouveau_genre" value="<?php echo $details_livre['genre']; ?>"><br>

        <label for="nouvel_auteur">Nouvel auteur :</label>
        <input type="text" name="nouvel_auteur" value="<?php echo $details_livre['auteur']; ?>"><br>

        <label for="nouvelle_annee">Nouvelle année de publication :</label>
        <input type="text" name="nouvelle_annee" value="<?php echo $details_livre['annee_publication']; ?>"><br>

        <input type="submit" value="Modifier le livre">
    </form>

    <?php include('footer.php'); ?>
</body>

</html>