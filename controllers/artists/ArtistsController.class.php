<?php

class ArtistsController 
{
    
    public function httpGetMethod(Http $http, array $queryFields)
    {
        
        // Récupération de tous les artistes.
    	 $artistsModel = new ArtistsModel();
    	 $artists     = $artistsModel->listAll();
    	 
    	 
    	 return
        [
          'artists'    => $artists
        ];
    }
    
}