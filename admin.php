<?php
include("config/config.php");
$bdd = new PDO('mysql:host=' . $hote . ';port=' . $port . ';dbname=' . $nom_bd, $identifiant, $mot_de_passe, $options);

// on doit lister l'ensemble des critiques
$requete = 'SELECT id,note, commentaire FROM `critiques`';
$resultats = $bdd->query($requete);
$tabcritiques = $resultats->fetchAll(PDO::FETCH_ASSOC);
$resultats->closeCursor();

$requetelivres = 'SELECT id, titre, genre, auteur, annee_publication FROM `livres`';
$resultatslivres = $bdd->query($requetelivres);
$listelivres = $resultatslivres->fetchAll(PDO::FETCH_ASSOC);
$resultatslivres->closeCursor();

?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administration</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <?php include('header.php'); ?>

    <h2>Suppression d'une critique</h2>
    <form action="supprimer.php" method="POST">
        <select name="id" size=10>
            <?php
            foreach ($tabcritiques as $tab):
                ?>
                <option value="<?php echo $tab["id"]; ?>">
                    <?php echo $tab["commentaire"]; ?> (note de :
                    <?php echo $tab["note"]; ?>)
                </option>
                <?php
            endforeach;
            ?>

        </select><br /><br />

        <input type="submit" value="Supprimer l'article" />
    </form>

    <br>


    <h2>Modification</h2>
    <!-- Affichez la liste des livres avec un bouton modifier à côté -->
    <table>
        <tr>
            <th>Titre</th>
            <th>Genre</th>
            <th>Auteur</th>
            <th>Année de publication</th>
            <th>Modifier</th>
        </tr>
        <?php foreach ($listelivres as $livre): ?>
            <tr>
                <td>
                    <?php echo $livre['titre']; ?>
                </td>
                <td>
                    <?php echo $livre['genre']; ?>
                </td>
                <td>
                    <?php echo $livre['auteur']; ?>
                </td>
                <td>
                    <?php echo $livre['annee_publication']; ?>
                </td>
                <td>
                    <form action="modification.php" method="GET">
                        <input type="hidden" name="id_livre" value="<?php echo $livre['id']; ?>">
                        <input type="submit" value="Modifier">
                    </form>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>

    <?php include('footer.php'); ?>
</body>

</html>