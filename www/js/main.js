'use strict';
/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/


/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/

function runFormValidation()
{

    var form;
    var formValidator;
    
    //le formulaire n'est pas pris en compte s'il a l'attribut data-no-validition sur true
    form = $('form:not([data-no-validation=true])');
    // Y a t'il un formulaire à valider sur la page actuelle ?
    if(form.length > 0)
    {
        // Oui, exécution de la validation de formulaire.
        formValidator = new FormValidator(form);
        formValidator.run();
    }
}

/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/

$(function()
{
    //s'il y a un formulaire, on lance la vérification avec le FormValidator
    runFormValidation();
    
    // Effet spécial sur la boite de notifications (le flash bag).
    $('#notice').delay(3000).fadeOut('slow');
    
    
});