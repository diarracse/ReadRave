<?php
include ("config/config.php");
$bdd = new PDO('mysql:host=' . $hote . ';port=' . $port . ';dbname=' . $nom_bd, $identifiant, $mot_de_passe, $options);

$auteur = 'Karine Giebel';
$requete = 'SELECT titre, images FROM `livres` WHERE auteur = ?';
$resultats = $bdd->prepare($requete);
$resultats->execute([$auteur]);
$tablivres = $resultats->fetchAll(PDO::FETCH_ASSOC);

$requete2 = 'SELECT * FROM `demande_ajout_livre`';
$resultat = $bdd->query($requete2);
$tabdemandelivres = $resultat->fetchAll(PDO::FETCH_ASSOC);
$resultat->closeCursor();
?>


<?php include ('header.php'); ?>

<div class="background-image"></div>
<script src="carrousel.js"></script>



<div class="selection">

    <h4>Sélection</h4>
    <h2>NOTRE SELECTION</h2>

    <div class="imgBoutons">
        <div class="imgCarrousel">
            <img id="carrousel" src="" alt="Couverture de  Livres">
        </div>
        <div class="carrouselBoutons">
            <button id="precedent"><i class="fas fa-chevron-left"></i></button>
            <button id="suivant"><i class="fas fa-chevron-right"></i></button>
        </div>
    </div>


    <h2 id="h2">NOUS N'AVONS <br> JAMAIS TROP <br> DE LIVRES</h2>
    <a href="bibliotheque.php" id="a"><button id="submit">Découvrez la bibliothèque <div class="arrow"> › </div>
        </button></a>
    <br>
</div>



<div class="disponibles">
    <h3>Livres bientôt disponibles</h3>

    <?php foreach ($tabdemandelivres as $tabdemande): ?>
        <div class="demande_livres">
            <ul>
                <li>
                    <?php echo $tabdemande["titre"]; ?> -
                    <?php echo $tabdemande["auteur"]; ?>
                </li>
            </ul>
        </div>
    <?php endforeach; ?>
</div>


<?php include ('footer.php'); ?>