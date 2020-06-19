<?php

class RecordsDetailController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
        
        // Validation de la query string dans l'URL.
        if(!array_key_exists('Id', $_GET) OR !ctype_digit($_GET['Id']))
        {
            $http->redirectTo('/records');
        }
    	 
    	 // Récupération de l'album sur lequel l'utilisateur a cliqué et ses morceaux.
    	 $recordsModel = new RecordsModel();
    	 $records = $recordsModel->find($_GET['Id']);
    	 $recordTracks = $recordsModel->findRecordTracks($_GET['Id']);
    	 $recordGenre = $recordsModel->findGenre($_GET['Id']);
    	 
    	 return
        [
          'records'         => $records,
          'recordTracks'    => $recordTracks,
          'recordGenre'     => $recordGenre
        ];
        
    }
    
}