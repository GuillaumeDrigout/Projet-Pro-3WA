<?php


class LoginController
{
    public function httpGetMethod()
	{
	    //On renvoi le formulaire vide et les flashbag s'il y en a 
	    return [ '_form'	=> new LoginForm(),
	    		 'flashBag' => new FlashBag()
	    ];
	}
	
	public function httpPostMethod(Http $http, array $formFields)
	{
	    //On vérifie si les champs du formulaire sont bien remplis
	    if (!empty($formFields['email']) && !empty($formFields['password'])) {
    	    try
    		{
    		 //identification
    		 $userModel = new UserModel();
    		 $user = $userModel->findWithEmailPassword
            (
                //On récupère les champs
                $formFields['email'],
                $formFields['password']
            );
            
            // Construction de la session utilisateur.
            $userSession = new UserSession();
            
            $userSession->create
            (
                $user['Id'],
                $user['FirstName'],
                $user['LastName'],
                $user['Email'],
                $user['Admin']
            );
            
            // Redirection vers la page d'accueil.
            $http->redirectTo('/');
    		}
    		
    		//si l'identification n'a pas fonctionnée
    		catch(DomainException $exception)
    		{
                // Réaffichage du formulaire avec un message d'erreur.
                $form = new LoginForm();
                $form->bind($formFields);
                $form->setErrorMessage($exception->getMessage());
    
    			return [ '_form'	=> $form,
    					 'flashBag' => new FlashBag()
    				   ];
    		}
	    }
	    
	    //Si des champs n'ont pas été remplis
	    else
	    {
	        // Réaffichage du formulaire avec un message d'erreur.
                $form = new LoginForm();
                $form->bind($formFields);
                $form->setErrorMessage("Champs non remplis !");
    
    			return [ '_form'	=> $form,
    					 'flashBag' => new FlashBag()
    				   ];
	    }
	}
}