<?php

class TracksController 
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
    	 
    	 // Récupération de tous les morceaux.
    	 $tracksModel = new TracksModel();
    	 $tracks = $tracksModel->listAll();
    	 
    	 // Récupération de tous les genres.
    	 $genresModel = new GenresModel();
    	 $genres = $genresModel->listAll();
    	 
    	 
    	 return
        [
          'artists'    => $artists,
          'records'    => $records,
          'tracks'     => $tracks,
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
        
        // On crée une instance de TracksModel()
        $tracksModel = new TracksModel();
        
        //Si des checkbox du formulaire sont cochés
        if (isset($_POST['selected'])) 
        {
            //album à supprimer
            $tracksModel->deleteTrack($_POST['selected']);
        }
        //Sinon l'autre formulaire de la page entre en jeu
        else
        {
            //On vérifie que les champs sont bien remplis
            if  (      empty($formFields['record']) == false 
                    && empty($formFields['name1']) == false
                    && empty($formFields['spotifySongLink1']) == false
                    && empty($formFields['length1']) == false
                )
            {
                
                $tracksModel = new TracksModel();
                //On récupère le champs de l'album choisi dans la liste déroulante
                $record = $formFields['record'];
                
                //on boucle sur le nombre de morceau de l'album selectionné pour afficher le bon nombre d'inputs dans le formulaire
                for($i = 1 ; $i <= $formFields['NumberOfTracks'] ; $i++)
                {
                   //On crée dans les morceaux dans la base de données grâce a la fonction create de TracksModel
                   $tracksModel->create
                    (
                        $record,
                        //pour chaque champs on concatène $i pour récupérer tous les inputs des morceau en fonction de l'album
                        //choisi et donc du nombre de chanson selon l'album
                        $formFields['name'.$i],
                        $formFields['spotifySongLink'.$i],
                        $formFields['length'.$i]
                    );
                    //on stock un message de réussite de l'enregistrement des morceau dans la BDD
                    $message = '<p id="success" class="success" >Morceaux bien enregistrés</p>';
                }
            }
            
            //Si tous les champs n'ont pas été bien remplis on stock un message d'erreur qu'on renverra par la suite
            else {
                $message = "<p id=\"danger\" class=\"danger\" >Les morceaux n'ont pas étés enregistrés, veuillez réssayer";
            }
        }
        
          // Récupération de tous les artistes.
    	 $artistsModel = new ArtistsModel();
    	 $artists     = $artistsModel->listAll();
    	 
    	 // Récupération de tous les albums.
    	 $recordsModel = new RecordsModel();
    	 $records = $recordsModel->listAll();
    	 
    	 // Récupération de tous les morceaux.
    	 $tracksModel = new TracksModel();
    	 $tracks = $tracksModel->listAll();
    	 
    	 // Récupération de tous les genres.
    	 $genresModel = new GenresModel();
    	 $genres = $genresModel->listAll();
    	 
    	 
    	 return
        [
          'artists'    => $artists,
          'records'    => $records,
          'tracks'     => $tracks,
          'genres'     => $genres,
          'message'    => $message
        ];
    }
}