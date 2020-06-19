<?php

class ArtistsController {
    
    public function httpGetMethod(Http $http, array $queryFields)
    {
        //On vérifie que l'utilisateur est bien connecté et est un admin
        $userSession = new UserSession();
        if($userSession->getAdmin() != 1)
        {
            //Si ce n'est pas le cas il est redirigé vers la page login
            $http->redirectTo('/user/login');
        }
        
        // Récupération de tous les artistes.
    	 $artistsModel = new ArtistsModel();
    	 $artists     = $artistsModel->listAll();
    	 
    	 return
        [
          'artists'    => $artists,
          'flashBag'   => new FlashBag()
         ];
    }
    
    public function httpPostMethod(Http $http, array $formFields)
    {
        //On vérifie que l'utilisateur est bien connecté et est un admin
        $userSession = new UserSession();
        if($userSession->getAdmin() != 1)
        {
            //Si ce n'est pas le cas il est redirigé vers la page login
            $http->redirectTo('/user/login');
        }
        
        //On crée une instance de ArtistsModel
        $artistsModel = new ArtistsModel();
        
        //si des checkbox du formulaire sont cochés
        if (isset($_POST['selected'])) {
            //artiste a supprimer
            $artistsModel->deleteArtist($_POST['selected']);
        }
        
        //dans le cas échéant l'autre formulaire rentre en action
        else {
                //artiste à insérer
                if($http->hasUploadedFile('photo') == true)
                {
                    //on déplace le fichier selectionné dans un dossier
                    $photo = $http->moveUploadedFile('photo', '/images/artists');
                }
                else
                {
                    //si aucune image n'est téléchargée on en définie une par défaut
                    $photo = 'images.png';
                }
                
                //On vérifie que les champs sont bien remplis
                if(empty($formFields['name']) == false && empty($formFields['bio']) == false) {
                    //On crée une instance de ArtistsModel
                    $artistsModel = new ArtistsModel();
                    
                    //Une fois que les champs sont remplis on crée un artiste grâce à la fonction create de artistsModel
                    $artistsModel->create
                    (
                        //on récupère les champs du formulaire et l'image
                        $formFields['name'],
                        $photo,
                        $formFields['bio']
                    );
            }
        }
        
        
        // Récupération de tous les artistes et des flashBag
    	
    	$artists     = $artistsModel->listAll();
        
        return
        [
          'artists'    => $artists,
          'flashBag'   => new FlashBag()
         ];
    }
}