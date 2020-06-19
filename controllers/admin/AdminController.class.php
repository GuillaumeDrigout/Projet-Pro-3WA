<?php

class AdminController
{

    public function httpGetMethod(Http $http)
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
    	$artists = $artistsModel->listAll();
    	
    	
    	return [
    	        "artists" => $artists 
    	       ];
    	
    }
}