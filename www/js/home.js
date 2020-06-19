'use strict';

/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/

var album1;
var album2;
var album3;
var albumDescription1;
var albumDescription2;
var albumDescription3;

/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/

function onMouseOverAlbum1 () 
{
    albumDescription1.classList.remove('hide');
}

function onMouseOverAlbum2()
{
    albumDescription2.classList.remove('hide');
}

function onMouseOverAlbum3()
{
    albumDescription3.classList.remove('hide');
}

function onMouseOutAlbum1()
{
    albumDescription1.classList.add('hide');
}

function onMouseOutAlbum2()
{
    albumDescription2.classList.add('hide');
}

function onMouseOutAlbum3()
{
    albumDescription3.classList.add('hide');
}

/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/



document.addEventListener('DOMContentLoaded', function(){
    
    album1 = document.getElementById('img1');
    albumDescription1 = document.getElementById('p1');
    album2 = document.getElementById('img2');
    albumDescription2 = document.getElementById('p2');
    album3 = document.getElementById('img3');
    albumDescription3 = document.getElementById('p3');
        
    album1.addEventListener("mouseover", onMouseOverAlbum1);
    album1.addEventListener("mouseout", onMouseOutAlbum1);
    album2.addEventListener("mouseover", onMouseOverAlbum2);
    album2.addEventListener("mouseout", onMouseOutAlbum2);
    album3.addEventListener("mouseover", onMouseOverAlbum3);
    album3.addEventListener("mouseout", onMouseOutAlbum3);

});