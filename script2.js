//fonction pour imprimer
function imprimerPageMC() {
    window.print(); // Appel fonction d'impression du navigateur
}
function setupListenersMC() {
    // Recherche du bouton imprimer par son identifiant
    let boutonImprimerMC = document.getElementById('boutonImprimer');
    // Ajout d'un écouteur d'événements 'click' au bouton imprimer
    boutonImprimerMC.addEventListener('click', imprimerPageMC);
}
// Appel de la fonction setupListeners une fois que le DOM est chargé
window.addEventListener('load', setupListenersMC);