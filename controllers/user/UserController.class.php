<?php


class UserController
{
    public function httpGetMethod()
	{
		//On renvoi un formulaire vide
	    return [ '_form' => new UserForm() ];
	}
	
	private function verifUserForm($formFields) 
	{
		//parcourir le tableau $formFields, et si on rencontre un champ vide
		//on retournera false
		if (in_array('', $formFields))
		{
			return false;
		}
		else
		{
			return true;
		}
	}
	
	public function httpPostMethod(Http $http, array $formFields)
	{
		//on vérifie que les champs sont bien remplis
		if ($this->verifUserForm($formFields)) 
		{
		    try
			{
			// Inscription de l'utilisateur.
	        $userModel = new UserModel();
	        
	        $userModel->signUp
				(
				 $formFields['firstName'],
				 $formFields['lastName'],
				 $formFields['email'],
				 $formFields['password'],   
				 $formFields['birthYear'].'-'.$formFields['birthMonth'].'-'.$formFields['birthDay'],
				 $formFields['address'],
				 $formFields['city'],
				 $formFields['country'],
				 $formFields['zipCode']
		        );
		        
		        // Redirection vers la page d'accueil.
	            $http->redirectTo('/user/login');
			}
			
			catch(DomainException $exception)
			{
	            // Réaffichage du formulaire avec un message d'erreur.
	            $form = new UserForm();
	            $form->bind($formFields);
	            
	            $form->setErrorMessage($exception->getMessage());
	            
	            return [ '_form' => $form ];
			}
		}
		
		//Si tous les champs ne sont pas remplis
		else 
		{
	    	// Réaffichage du formulaire avec un message d'erreur.
            $form = new UserForm();
            $form->bind($formFields);
            
            $form->setErrorMessage("Certains champs sont vides !");
            
            return [ '_form' => $form ];
	    }
	}
    
}