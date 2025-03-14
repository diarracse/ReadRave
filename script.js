// fonction pour remonter en haut de la page
// définit une fonction nommée scrollToMC qui fait défiler la fenêtre vers le haut.
function scrollToMC() {
    window.scrollTo({
        top: 0,
        left: 0,
        behavior: "smooth" //permet un défilment de manière fluide.
    });
}



// fonction carrousel
let indexMC = 0;
// pour stocker le timer du défilement automatique
let IdTImer;


// definition du tableau d'images du carrousel
let tableauImageMC = [
    "images/img22.jpg",
    "images/img23.jpg",
    "images/img24.jpg",
    "images/img25.jpg",
    "images/img26.jpg",
    "images/img27.jpg",
    "images/img28.jpg",
    "images/img29.jpg",
    "images/img30.jpg",
    "images/img31.jpg",
    "images/img32.jpg",
]

//cette fonction change l'image affichée dans le carrousel à intervalles réguliers
function defilementTempsMC() {
    // elle met à jour la source de l'image dans l'élément ayant l'ID 'carrousel' avec l'image correspondant à l'indice actuel
    let carrouselMC = document.getElementById('carrousel');
    carrouselMC.src = tableauImageMC[indexMC];
    // incrementation de l'index
    indexMC = indexMC + 1;
    //  elle incrémente ensuite l'indice, et si l'indice dépasse la longueur du tableau, il est réinitialisé à zéro
    if (indexMC >= tableauImageMC.length) {
        indexMC = 0;
    }
}



function boucleTempsMC() {
    clearInterval(IdTImer); // arreter le défilement précédent afin d'eviter un doublon
    IdTImer = setInterval(defilementTempsMC, 3000); // demarre un nouveau défilement
}

function defilementPrecedentMC() {
    clearInterval(IdTImer); // arreter le défilement automatique
    // décrémentation de l'index pour aller à l'image précédente
    indexMC = indexMC - 1;
    // si index est inférieur à 0, on réinitialise à l'index de la dernière image
    if (indexMC < 0) {
        indexMC = tableauImageMC.length - 1;
    }
    // afficher l'image correspondante
    document.getElementById('carrousel').src = tableauImageMC[indexMC];
    boucleTempsMC(); // redemarrer le défilement automatique
}

function defilementSuivantMC() {
    clearInterval(IdTImer); // arreter le défilement automatique
    // incrémentation de l'index pour aller à l'image suivante
    indexMC = indexMC + 1;
    // si index dépasse la longueur, on réinitialise à 0 pour boucler
    if (indexMC >= tableauImageMC.length) {
        indexMC = 0;
    }
    // afficher l'image correspondante
    document.getElementById('carrousel').src = tableauImageMC[indexMC];
    boucleTempsMC(); // redeperer le défilement automatique
}


function setupListenersMC() {

    // Recherche du bouton remonter en haut par son identifiant
    let boutonMC = document.getElementById('bouton');
    // Ajout d'un écouteur d'événements 'click' au bouton remonter en haut
    boutonMC.addEventListener('click', scrollToMC);

    // Recherche du bouton precedent par son identifiant
    let precedentMC = document.getElementById('precedent')
    // Ajout d'un écouteur d'événements 'click' au bouton precedent
    precedentMC.addEventListener('click', defilementPrecedentMC);

    // Recherche du bouton suivant par son identifiant
    let suivantMC = document.getElementById('suivant');
    // Ajout d'un écouteur d'événements 'click' au bouton suivant
    suivantMC.addEventListener('click', defilementSuivantMC);
}
// Appel de la fonction setupListeners une fois que le DOM est chargé
window.addEventListener('load', setupListenersMC);
// appel de toutes les fonctions en meme temps apres le 1er chargement
window.addEventListener('load', function () {
    defilementTempsMC(); // afficher immédiatement la première image des qu'on atterit sur la page index
    boucleTempsMC();
    setupListenersMC();
});

