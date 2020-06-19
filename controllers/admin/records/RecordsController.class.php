<?php

class RecordsController {
    
    public function httpGetMethod(Http $http, array $queryFields)
    {
        //On vérifie que l'utilisateur est bien identifié et est un admin
        $userSession = new UserSession();
        if($userSession->getAdmin() != 1)
        {
            //sinon on le redirige vers la page login
            $http->redirectTo('/user/login');
        }
        
        // Récupération de tous les artistes.
    	 $artistsModel = new ArtistsModel();
    	 $artists     = $artistsModel->listAll();
    	 
    	 // Récupération de tous les albums.
    	 $recordsModel = new RecordsModel();
    	 $records = $recordsModel->listAll();
    	 
    	 // Récupération de tous les genres.
    	 $genresModel = new GenresModel();
    	 $genres = $genresModel->listAll();
    	 
    	 
    	 return
        [
          'artists'    => $artists,
          'records'    => $records,
          'genres'     => $genres,
          'flashBag'   => new FlashBag()
        ];
    }
    
    public function httpPostMethod(Http $http, array $formFields)
    {
        //On vérifie que l'utilisateur est bien identifié et est un admin
        $userSession = new UserSession();
        if($userSession->getAdmin() != 1)
        {
            //sinon on le redirige vers la page login
           $http->redirectTo('/user/login');
        }
        
        //On crée une instance de RecordsModel()
        $recordsModel = new RecordsModel();
        
        //Si des checkbox du formulaire sont cochés
        if (isset($_POST['selected'])) {
            //album à supprimer
            $recordsModel->deleteRecord($_POST['selected']);
            //et les morceaux de cet album
            $recordsModel->deleteRecordTracks($_POST['selected']);
        }
        
        //Sinon l'autre formulaire de la page rentre en jeu
        else 
        {
            //album à insérer
            if($http->hasUploadedFile('photo') == true)
            {
                //Si un fichier photo a été téléchargé on l'insère dans un dossier spécifique
                $photo = $http->moveUploadedFile('photo', '/images/albums');
            }
            else
            {
                //sinon on lui attribue une image par défaut
                $photo = 'images.png';
            }
            
            //On vérifie que les champs sont bien remplis
            if( empty($formFields['artist']) == false 
                || empty($formFields['name']) == false 
                || empty($formFields['description']) == false 
                || empty($formFields['year']) == false 
                || empty($formFields['numberOfTracks']) == false
                || empty($formFields['spotifyLink']) == false
                || empty($formFields['genre']) == false )
                {
                    //On crée une instance de RecordsModel()
                    $recordsModel = new RecordsModel();
                    
                    //Les champs sont remplis on peut donc créer notre album dans la base de données
                    //grâce à la fonction create de RecordsModel
                    $recordsModel->create
                    (
                        //On récupère les champs du formulaire et la photo d'illustration
                        $formFields['name'],
                        $photo,
                        $formFields['description'],
                        $formFields['year'],
                        $formFields['numberOfTracks'],
                        $formFields['spotifyLink'],
                        $formFields['artist'],
                        $formFields['genre']
                    );
                }
        }
        
        
         // Récupération de tous les artistes.
    	 $artistsModel = new ArtistsModel();
    	 $artists     = $artistsModel->listAll();
    	 
    	 // Récupération de tous les albums.
    	 $recordsModel = new RecordsModel();
    	 $records = $recordsModel->listAll();
    	 
    	 // Récupération de tous les genres.
    	 $genresModel = new GenresModel();
    	 $genres = $genresModel->listAll();
    	 
    	 
    	 return
        [
          'artists'    => $artists,
          'records'    => $records,
          'genres'     => $genres,
          'flashBag'   => new FlashBag()
        ];
    }
}