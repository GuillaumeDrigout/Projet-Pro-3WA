<?php

class RecordsController 
{
    
    public function httpGetMethod(Http $http, array $queryFields)
    {
        
        // Récupération de tous les albums.
    	 $recordsModel = new RecordsModel();
    	 $records     = $recordsModel->listAll();
    	 
    	 // Récupération de tous les artistes.
    	 $artistsModel = new ArtistsModel();
    	 $artists     = $artistsModel->listAll();
    	 
    	 
    	 return
        [
          'records'    => $records,
          'artists'    => $artists
        ];
    }
    
}