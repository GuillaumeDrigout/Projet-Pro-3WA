<?php

class NombreController
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
        
        //On crée une instance de RecordsModel()
    	$recordModel = new RecordsModel();
    	
    	//On récupère l'album spécifié grâce à la fonction findRecord de RecordsModel et à son Id
    	$record = $recordModel->findRecord($queryFields['id']);
    	
    	return [
    	        "record" => $record,
    	        //on renvoi un template sans le layout
    	        '_raw_template' => true
    	       ];
    	
    }
}