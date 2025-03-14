<?php
include ("config/config.php");
$bdd = new PDO('mysql:host=' . $hote . ';port=' . $port . ';dbname=' . $nom_bd, $identifiant, $mot_de_passe, $options);
$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

session_start();
if (!isset($_SESSION['utilisateur'])) {
    header("Location: connexion.php");
    exit;
}

$utilisateur = $_SESSION['utilisateur'];
?>

<?php include ('header.php'); ?>

<div class="container2">
<button onclick="changeModeDark()">☽</button>
</div>

<script>
    function changeModeDark() {
        let element = document.body;
        element.classList.toggle("dark-theme");
    }
</script>

<div class="profil">
    <h1>Bienvenue,
        <?php echo $_SESSION['utilisateur']; ?>!
    </h1>

    <h1> VOULEZ VOUS PROPOSER UN LIVRE ?</h1>
    <br>

    <h2>Demande d'Ajout de Livre</h2>
    <form method="POST" action="traitement_demande_ajout.php">
        <label for="titre">Titre:</label>
        <input type="text" id="titre" name="titre" required><br>

        <label for="auteur">Auteur:</label>
        <input type="text" id="auteur" name="auteur" required><br>

        <button type="submit">Soumettre la demande</button>
    </form>
    <br>


    <?php if (isset($_SESSION['utilisateur'])): ?>
        <form method="post" action="deconnexion.php">
            <button type="submit">Déconnexion</button>
        </form>
    </div>
<?php endif; ?>

<?php include ('footer.php'); ?>
<style>

</style>