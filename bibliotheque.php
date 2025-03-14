<?php
include ("config/config.php");
$bdd = new PDO('mysql:host=' . $hote . ';port=' . $port . ';dbname=' . $nom_bd, $identifiant, $mot_de_passe, $options);


$search_query = isset($_POST['search_query']) ? $_POST['search_query'] : '';

$requete = "SELECT critiques.note, critiques.commentaire, livres.titre, livres.auteur, livres.annee_publication, livres.genre, livres.images
            FROM critiques
            JOIN livres ON critiques.id_livre = livres.id";

if (!empty($search_query)) {
    $requete .= " WHERE livres.titre LIKE :search_query OR livres.auteur LIKE :search_query OR livres.genre LIKE :search_query OR livres.annee_publication LIKE :search_query
    ";
}

$requete_preparee = $bdd->prepare($requete);
if (!empty($search_query)) {
    $search_query = "%{$search_query}%";
    $requete_preparee->bindParam(':search_query', $search_query, PDO::PARAM_STR);
}
$requete_preparee->execute();
$resultats = $requete_preparee->fetchAll(PDO::FETCH_ASSOC);
?>


<body>
<?php include ('header.php'); ?>



<div class="boutonImprimer">
<button id="boutonImprimer">imprimer</button>
</div>


<div id="title">
<h1>Bibliothèque</h1>
</div>
<?php
// Regroupement des résultats par livre
$livres = array();
foreach ($resultats as $tab) {
    $cat_livres = $tab['titre'];
    if (!isset($livres[$cat_livres])) {
        $livres[$cat_livres] = array(
            'titre' => $tab['titre'],
            'auteur' => $tab['auteur'],
            'annee_publication' => $tab['annee_publication'],
            'genre' => $tab['genre'],
            'images' => $tab['images'],
            'commentaires' => array()
        );
    }
    // commentaire au livre correspondant
    $livres[$cat_livres]['commentaires'][] = array(
        'note' => $tab['note'],
        'commentaire' => $tab['commentaire']
    );
}
?>

<div class="bibliotheque">
    <?php
    // Compteur pour limiter l'affichage à 50 livres
    $compteur = 0;
    ?>
    <?php foreach ($livres as $livre): ?>
        <?php if ($compteur < 50): ?>
            <div class="book">
                <img src="<?php echo $livre['images']; ?>" alt="Image du livre">
                <span class="titre">
                    <p>Titre :
                        <?php echo $livre['titre']; ?>
                    <p>Auteur :
                        <?php echo $livre['auteur']; ?>
                        <br>
                        Année de publication :
                        <?php echo $livre['annee_publication']; ?>
                        <br>
                        Genre :
                        <?php echo $livre['genre']; ?>
                    </p>
                    <br>
                    <p>Avis :</p>

                    <?php foreach ($livre['commentaires'] as $commentaire): ?>
                        <p>
                            <?php
                            // Convertir la note en étoiles
                            $note = $commentaire['note'];
                            $etoiles = str_repeat('★', $note) . str_repeat('☆', 5 - $note);
                            echo '<span class="etoiles">' . $etoiles . '</span>';
                            ?>
                            <br>
                            <?php echo $commentaire['commentaire']; ?>
                        </p>
                    <?php endforeach; ?>

                </span>
            </div>
            <?php $compteur++; ?>
        <?php endif; ?>
    <?php endforeach; ?>
</div>


<div id="haut">
<button id="bouton"> ⇧  </button>
</div>

<?php include ('footer.php'); ?>
</body>

