<?php

class ChangeUserpasswordController {
    
    public function httpGetMethod(Http $http, array $queryFields)
    {
        //On vérifie qu'un utilisateur est bien connecté à sa session
        $userSession = new UserSession();
        if($userSession->isAuthenticated() == false)
        {
            // On ne peut avoir accès à cette page sans être connecté on redirige donc vers la page login
            $http->redirectTo('/user/login');
        }
        
        //on récupère l'id de l'utilisateur connecté
        $userId = $userSession->getUserId();
        
        $userModel = new UserModel();
        
        //On récupère les informations de l'utilisateur
        $userInfo = $userModel->find($userId);
        
        return [
                    'userInfo'  => $userInfo,
                    'userId'     => $userId,
                    'flashBag'  => new FlashBag()
               ];
    }
    
    public function httpPostMethod(Http $http, array $formFields)
    {
        //On vérifie qu'un utilisateur est bien connecté à sa session
        $userSession = new UserSession();
        if($userSession->isAuthenticated() == false)
        {
            // On ne peut avoir une wantlist sans être connecté on redirige donc vers la page login
            $http->redirectTo('/user/login');
        }
        
        //on récupère l'id de l'utilisateur connecté
        $userId = $userSession->getUserId();
        
        //On récupère les infos de l'utilisateur connecté
        $userModel = new UserModel();
        
        $userInfo = $userModel->find($userId);
        
        //On vérifie que les champs sont bien remplis
        if(    !empty($formFields['oldPassword'])
            || !empty($formFields['newPassword'])
            || !empty($formFields['newPassword2'])
            )
        {
            //Si les deux champs nouveau mot de passe ne sont pas identiques
            if($formFields['newPassword'] != $formFields['newPassword2'])
            {
                // Réaffichage du formulaire avec un message d'erreur.
                $form = new ChangeuserpasswordForm();
                $form->bind($formFields);
                
                $flashBag = new FlashBag();
                $flashBag->add("Les deux Champs 'Nouveau mot de passe' ne sont pas identiques!");
    
    			return [ '_form'	=> $form,
    					 'flashBag' => new FlashBag()
    				   ];
            }
            //Si le nouveau mot de passe n'est pas d'une longueur minimale de 8 caractères
            elseif(strlen($formFields['newPassword']) < 8 || strlen($formFields['newPassword2']) < 8)
            {
                // Réaffichage du formulaire avec un message d'erreur.
                $form = new ChangeuserpasswordForm();
                $form->bind($formFields);
                
                $flashBag = new FlashBag();
                $flashBag->add("Le mot de passe doit avoir une longueur d'au moins 8 caractères");
                
                return [ '_form'	=> $form,
    					 'flashBag' => new FlashBag()
    				   ];
            }
            
            //Si les deux champs nouveau mot de passe sont identiques et qu'ils sont longs d'au moins 8 caractères
            else
            {
                //On lance la fonction changeUserPassword de UserModel et si c'est un succès on renvoi le 
                // flashbag que la fonction contient, et on renvoi les nouvelles infos utilisateur
                if($userModel->changeUserPassword($formFields['oldPassword'], $formFields['newPassword'], $userId))
                {
                    $http->redirectTo('/user/userDetail');
                    
                    return [
                                'userInfo'   => $userInfo,
                                'flashBag'   => new FlashBag()
                           ];
                }
                
                //si c'est un échec on renvoi le flashbag d'erreur de la fonction
                else
                {
                    $http->redirectTo('/user/userDetail');
                    
                    return [
                                'flashBag'   => $flashBag
                           ];
                }
            }
        }
        
        //Si les champs ne sont pas tous remplis
        else 
        {
            // Réaffichage du formulaire avec un message d'erreur.
            $form = new ChangeuserpasswordForm();
            $form->bind($formFields);
            
            $flashBag = new FlashBag();
            $flashBag->add("Veuillez remplir tous les champs!");

			return [ '_form'	=> $form,
					 'flashBag' => new FlashBag()
				   ];
        }
    }
    
}