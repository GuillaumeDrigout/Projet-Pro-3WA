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
    position_top_raccourci = $("#artists-list-just-name").offset().top;
    
    //Au scroll dans la fenetre on déclenche la fonction
    $(window).scroll(function () {
    
        //si on a defile de plus que la taille du offset().top du haut vers le bas
        if ($(this).scrollTop() > position_top_raccourci) 
        {
            //on ajoute la classe "fixer-artists-list-just-name" a <aside id="artists-list-just-name">
            $('#artists-list-just-name').addClass("fixer-artists-list-just-name"); 
        } 
        
        else 
        {
            //sinon on retire la classe "fixer-artists-list-just-name" a <aside id="artists-list-just-name">
            $('#artists-list-just-name').removeClass("fixer-artists-list-just-name");
        }
    });
});