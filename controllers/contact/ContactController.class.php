<?php

class ContactController 
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
        // on renvoi les flashbag s'il y en a
        $flashBag = new FlashBag();
        
        return [ 
    		        'flashBag' => $flashBag
    		   ];
        
    }
    
    public function httpPostMethod(Http $http, array $formFields)
    {
        //On vérifie que les champs sont biens remplis
        if( !empty($formFields['name'])
            && !empty($formFields['email']) 
            && !empty($formFields['message']))
        {
            //on crée une instance de ContactModel()
            $contactModel = new ContactModel();
            //On utilise la fonction sendMail pour envoyer le message en récupérant les champs du formulaire
            $contactModel->sendMail($formFields['name'], $formFields['email'], $formFields['message']);
            
            // Redirection vers la page d'accueil.
            $http->redirectTo('/');
            
            //on renvoi les flashbag de réussite d'envoi du formulaire
            return [ 
					 'flashBag' => new FlashBag()
				   ];
        }
        
        //Si des champs ne sont pas remplis
        else
	    {
	        // Réaffichage du formulaire avec un message d'erreur.
                $form = new ContactForm();
                $form->bind($formFields);
                $flashBag = new FlashBag();
                $flashBag->add('Champs non remplis!');
    
    			return [ '_form'	=> $form,
    					 'flashBag' => $flashBag
    				   ];
	    }
    }
    
}