<?php

class ChangeUserdetailController {
    
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
                    'userId'     => $userId
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
        
        //l'utilisateur est connecté, on récupère son Id
        $userId = $userSession->getUserId();
        
        //On vérifie que les champs sont bien remplis
        if(    !empty($formFields['firstname'])
            || !empty($formFields['lastname'])
            || !empty($formFields['email'])
            || !empty($formFields['address'])
            || !empty($formFields['city'])
            || !empty($formFields['zipCode'])
            || !empty($formFields['country'])
            || !empty($formFields['birthDate'])
            )
        {
            $userModel = new UserModel();
            
            //On met à jour les informations de l'utilisateur via le formulaire
            $userModel->changeUserInfo(
                                        $formFields['firstname'],
                                        $formFields['lastname'],
                                        $formFields['email'],
                                        $formFields['address'],
                                        $formFields['city'],
                                        $formFields['zipCode'],
                                        $formFields['country'],
                                        $formFields['birthDate'],
                                        $userId
                                      );
            
            //on récupère les infos de l'utilisateur mises à jour                          
            $userInfo = $userModel->find($userId);
        
            $http->redirectTo('/user/userDetail');
            
            return [
                        'userInfo'  => $userInfo,
                        'flashBag'   => new FlashBag()
                   ];
        }
        
        //Si tous les champs ne sont pas remplis
        else
        {
            // Réaffichage du formulaire avec un message d'erreur.
            $form = new ChangeuserdetailForm();
            $form->bind($formFields);
            
            $flashBag = new FlashBag();
            $flashBag->add("Veuillez remplir tous les champs!");

			return [ '_form'	=> $form,
					 'flashBag' => new FlashBag()
				   ];
        }
        
        
        
    }
    
}