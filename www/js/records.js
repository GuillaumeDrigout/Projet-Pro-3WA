'use strict';
/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/

var position_top_raccourci;

/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/



/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/

$(function() {
    // On recupere la position du bloc par rapport au haut du site
    position_top_raccourci = $("#albums-list-just-name").offset().top;
    
    //Au scroll dans la fenetre on déclenche la fonction
    $(window).scroll(function () {
    
        //si on a defile de plus que la taille du offset().top du haut vers le bas
        if ($(this).scrollTop() > position_top_raccourci) 
        {
            //on ajoute la classe "fixer-albums-list-just-name" a <aside id="albums-list-just-name">
            $('#albums-list-just-name').addClass("fixer-albums-list-just-name"); 
        } 
        else 
        {
            //sinon on retire la classe "fixer-albums-list-just-name" a <aside id="albums-list-just-name">
            $('#albums-list-just-name').removeClass("fixer-albums-list-just-name");
        }
        
        // si on a défilé jusqu'au bas de la fenetre du navigateur, on ajoute une classe qui fixe l'aside afin qu'il ne déborde pas sur le bas de la fenetre
        if($(window).scrollTop() == ($(document).height() - $(window).height()))
        {
            // on enlève la class précédente
            $('#albums-list-just-name').removeClass("fixer-albums-list-just-name");
            
            //on ajoute la class "fixer-albums-list-just-name-from-bottom" 
            $('#albums-list-just-name').addClass("fixer-albums-list-just-name-from-bottom");
        }
        else
        {
            //et on retire la class pour que l'aside reprenne la class fixer-albums-list-just-name lorsque l'on n'est plus en bas de la fenetre
            $('#albums-list-just-name').removeClass("fixer-albums-list-just-name-from-bottom");
        }
    });
});
