<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ReadRave</title>
    <link rel="stylesheet" href="styles.css">
    <script src="script.js"></script>
    <script src="script2.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

</head>

<body>
    <header>
        <div class="header">
            <div class="logo">
                <a href="index.php"><img src="images/ReadRavelogo.png" alt="Logo"></a>
            </div>
            <nav>
                <ul>
                    <li><a href="index.php">Accueil</a></li>
                    <li><a href="bibliotheque.php">Bibliothèque</a></li>
                    <li><a href="profil.php">Profil</a></li>
                </ul>
            </nav>
            <div class="search">
                <form action="bibliotheque.php" method="POST">
                    <input type="text" name="search_query" placeholder="Rechercher un livre...">
                    <button type="submit">Rechercher</button>
                </form>
            </div>
        </div>
    </header>
    
</body>

</html>
