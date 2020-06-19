<?php

class GenresController 
{
    
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
          'genres'     => $genres
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
        
        //On crée une instance de GenresModel()
        $genresModel = new GenresModel();
        
        //Si des checkbox du formulaire sont selectionné
        if (isset($_POST['selected'])) {
            //artiste a supprimer
            $genresModel->deleteGenre($_POST['selected']);
        }
        
        //Sinon l'autre formulaire de la page entre en jeu
        else
        {
            //On vérifie que le champs est bien rempli
            if(empty($formFields['name']) == false)
                {
                    
                    $genresModel = new GenresModel();
                    
                    //Si c'est le cas on crée le genre dans la base de données grâce à la fonction create de GenresModel
                    $genresModel->create
                    (
                        //On récupère le champs du formulaire
                        $formFields['name']
                    );
                }
                
        }
        
        // Récupération de tous les artistes
    	$genres = $genresModel->listAll();
        
        return
        [
          'genres'    => $genres
         ];
    }
}