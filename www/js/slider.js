'use strict';

/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/

var slides =
[
    { image: '/Projet Pro Guigscog/application/www/images/albums/AreYouExperienced.jpg', legend: 'Jimi Hendrix - Are You Experienced' },
    { image: '/Projet Pro Guigscog/application/www/images/albums/DarkSideOfTheMoon.jpg', legend: 'Pink Floyd - Dark Side Of The Moon' },
    { image: '/Projet Pro Guigscog/application/www/images/albums/KatyLied.jpg', legend: 'Steely Dan - Katy Lied' },
    { image: '/Projet Pro Guigscog/application/www/images/albums/Thrust.jpg', legend: 'Herbie Hancock - Thrust' },
    { image: '/Projet Pro Guigscog/application/www/images/albums/Endtroducing.jpg', legend: 'DJ Shadow - Endtroducing' },
    { image: '/Projet Pro Guigscog/application/www/images/albums/BreakfastInAmerica.jpg', legend: 'Supertramp - Breakfast In America' },
    { image: '/Projet Pro Guigscog/application/www/images/albums/NightCruiser.jpg', legend: 'Eumir Deodato - Night Cruiser'},
    { image: '/Projet Pro Guigscog/application/www/images/albums/MoonSafari.jpg', legend: 'Air - Moon Safari'},
    { image: '/Projet Pro Guigscog/application/www/images/albums/PremiersSymptomes.png', legend: 'Air - Premiers Symptômes'},
    { image: '/Projet Pro Guigscog/application/www/images/albums/WishYouWereHere.jpg', legend: 'Pink Floyd - Wish You Were Here'},
    { image: '/Projet Pro Guigscog/application/www/images/albums/OffTheWall.jpg', legend: 'Michael Jackson - Off The Wall'},
    { image: '/Projet Pro Guigscog/application/www/images/albums/G-Stoned.jpg', legend: 'Kruder & Dorfmeister - G-Stoned'},
    { image: '/Projet Pro Guigscog/application/www/images/albums/TheBillEvansAlbum.jpg', legend: 'Bill Evans - The Bill Evans Album'},
    { image: '/Projet Pro Guigscog/application/www/images/albums/Thriller.jpg', legend: 'Michael Jackson - Thriller'},
    { image: '/Projet Pro Guigscog/application/www/images/albums/KeyboardKingAtStudioOne.jpg', legend: 'Jackie Mittoo - Keyboard King At Studio One'},
    { image: '/Projet Pro Guigscog/application/www/images/albums/StrangeDays.jpg', legend: 'The Doors - Strange Days'}
];

// Objet contenant l'état du slider.
var state;

/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/

function refreshSlider() {
    var sliderImage;
    var sliderLegend;
    
    sliderImage  = document.querySelector('#slider img');
    sliderLegend = document.querySelector('#slider figcaption');
    
    sliderImage.src = slides[state.index].image;
    sliderLegend.textContent = slides[state.index].legend;
    
    // Mise à jour de la puce sélectionnée
    refreshDots(state.index);
}

function refreshDots(index)
{
    var previouslySelected;
    // Si une puce était déjà sélectionnée, on la désélectionne   
    
    previouslySelected = document.querySelector('.selected');
    
    if(previouslySelected != null){
        previouslySelected.classList.remove('selected');
    }
    
    // Et on sélectionne la nouvelle
    document.getElementById('dot-' + index).classList.add('selected');
}

function onSliderGoToPrevious() {
    // Passage à la slide précédente.
    state.index--;
    
    // Est-ce qu'on est revenu au début de la liste des slides ?
    if(state.index < 0)
    {
        // Oui, on revient à la fin (le carrousel est circulaire).
        state.index = slides.length - 1;
    }
    
    // Mise à jour de l'affichage.
    refreshSlider();

}

function onSliderGoToNext() {
    // Passage à la slide suivante.
    state.index++;
    
    // Est-ce qu'on est arrivé à la fin de la liste des slides ?
    if (state.index == slides.length) {
        state.index = 0;
    }
    
    // Mise à jour de l'affichage.
    refreshSlider();
}

function onSliderToggle() {
    var icon;
    
    // Modification de l'icône du bouton pour démarrer ou arrêter le carrousel.
    icon = document.querySelector('#slider-toggle i');
    
    icon.classList.toggle('fa-play');
    icon.classList.toggle('fa-pause');
    
   // Est-ce que le carousel est démarré ?
    if(state.timer == null)
    { 
        // Non, démarrage du carousel, toutes les deux secondes.
        state.timer = setInterval(onSliderGoToNext, 4000);
        
        this.title = 'Arrêter le carrousel';
    }
    else {
        // Oui, arrêt du carousel.
        clearInterval(state.timer);
        // Réinitialisation de la propriété pour le prochain clic sur le bouton.
        state.timer = null;
        
        this.title = 'Démarrer le carrousel';
    }
}

function onSliderKeyUp(event) {
   
   switch(event.code) {
       
       case 'Space':
           // On démarre ou on arrête le carrousel.
            onSliderToggle();
           break;
           
        case 'ArrowLeft':
            // On passe à la slide précédente.
        onSliderGoToPrevious();
            break;
            
            
        case 'ArrowRight':
            // On passe à la slide suivante.
        onSliderGoToNext();
            break;
   }
}

function addDot(element, index) {
    var dotList;
    var link;
    var dot;
    
   //Sélection de l'élément <ul> qui contiendra la liste des puces
   dotList = document.getElementById('dots');
   
   // Construction de l'élément <a> qui représentera la puce
   link = document.createElement('a');
   link.setAttribute('href', '#');
   
   /**
     * Installation du gestionnaire d'événement au clic sur la puce
     * Cette installation aurait aussi pu se faire dans le code principal,
     * mais seulement après la construction des puces, ou bien en utilisant ce qu'on
     * appelle la "délégation d'événement"
     */
     link.addEventListener('click', function(e){
         
         // Annulation du comportement par défaut du lien
         e.preventDefault();
         
         // Changement de l'image affichée
         state.index = index;
         
         // Rafraichissement du slider
        refreshSlider();
     });
     
     // Création de l'élément <li> qui contiendra le lien de la puce
     dot = document.createElement('li');
     dot.classList.add('dot');
    
    // Ajout d'un identifiant à la puce afin de pouvoir la sélectionner par la suite
    dot.id = 'dot-' + index;
    
    // Insertion de la puce dans le code HTML
    dot.appendChild(link);
    dotList.appendChild(dot);
}
/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/
/*
 * Installation d'un gestionnaire d'évènement déclenché quand l'arbre DOM sera
 * totalement construit par le navigateur.
 *
 * Le gestionnaire d'évènement est une fonction anonyme que l'on donne en deuxième
 * argument directement à document.addEventListener().
 */

document.addEventListener('DOMContentLoaded', function()
{
    // Initialisation du carrousel.
    state       = {}; //new Object();
    state.index = 0;                   // On commence à la première slide
    state.timer = null;                // Le carrousel est arrêté au démarrage
    
    /*toolbarToggle = document.getElementById('toolbar-toggle');
    toolbarToggle.addEventListener('click', onToolbarToggle);*/
    
    //On lance la lecture du slideshow au chargement de la page
    window.onload = () => onSliderToggle();
    
    // Installation des gestionnaires d'évènement.
    installEventHandler('#slider-previous','click', onSliderGoToPrevious); 
    installEventHandler('#slider-next','click', onSliderGoToNext);
    installEventHandler('#slider-toggle','click', onSliderToggle); 
    
    document.addEventListener('keyup', onSliderKeyUp);
    
    // Construction des puces
    slides.forEach(addDot);
    
    refreshSlider();
});