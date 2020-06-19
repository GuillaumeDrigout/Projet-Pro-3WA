<?php

class ArtistsDetailController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
        
        // Validation de la query string dans l'URL.
        if(!array_key_exists('Id', $_GET) OR !ctype_digit($_GET['Id']))
        {
            $http->redirectTo('/artists');
        }
    	 
    	 // Récupération de l'album sur lequel l'utilisateur a cliqué et ses morceaux.
    	 $artistModel = new ArtistsModel();
    	 $artist = $artistModel->find($_GET['Id']);
    	 $artistRecords = $artistModel->listOneArtistRecords($_GET['Id']);
    	 $artistGenre = $artistModel->findArtistGenre($_GET['Id']);
    	 
    	 return
        [
          'artist'         => $artist,
          'artistRecords'  => $artistRecords,
          'artistGenre'    => $artistGenre
        ];
        
    }
    
}