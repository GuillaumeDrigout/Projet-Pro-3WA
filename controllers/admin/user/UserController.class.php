<?php


class UserController
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
    	
    	// Récupération de tous les utilisateurs.
        $userModel = new UserModel();
	    $users = $userModel->allUsers();
	    
	    return [
					'users'  =>  $users
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
        
        //On crée une instance de UserModel()
        $userModel = new UserModel();
	    
	    //Si des checkbox sont cochés dans le formulaire
	    if (isset($formFields['selected'])) {
	    	//On utilise la fonction setUserAdmin de UserModel pour rendre admin les utilisateur selectionné
	    	$userModel->setUserAdmin($formFields['selected']);   
	    }
	    
	    // on renvoi la liste des utilisateur une fois mise à jour à l'envoi du formulaire
	    $users = $userModel->allUsers();
	    
	    return [
	     'users'  =>  $users
	   ];
	}
	
}