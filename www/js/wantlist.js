'use strict';

/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/


/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/



/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/
/* Utilisation de l'api de GreenSock GSAP https://cdnjs.cloudflare.com/ajax/libs/gsap/3.1.1/gsap.min.js */

//On anime l'article ".want-illustration" de -400 sur l'axe des abscisses jusqu'à son point d'origine,
// d'une opacité de 0.5 à 1, une durée d'animation de 1.5 sec, et un écart de départ entre chacun des articles
// de 0.8 sec ( l'animation de chaque article ".want-illustration" démarrera 0.8 sec après celle qui la précède.)
gsap.fromTo('.want-illustration', {x: -400, opacity:0.5}, {x: 0, stagger: 0.8, opacity:1, duration: 1.5});

//On anime l'article ".want-preview" de 400 sur l'axe des abscisses jusqu'à son point d'origine,
// d'une opacité de 0.5 à 1, une durée d'animation de 1.5 sec, et un écart de départ entre chacun des articles
// de 0.8 sec ( l'animation de chaque article ".want-preview" démarrera 0.8 sec après celle qui la précède.)
gsap.fromTo('.want-preview', {x: 400, opacity: 0.5}, {x: 0, stagger: 0.8, opacity:1, duration: 1.5});