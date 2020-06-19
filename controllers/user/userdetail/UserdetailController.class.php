<?php

class UserDetailController {
    
    public function httpGetMethod(Http $http, array $queryFields)
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
        
        $userModel = new UserModel();
        
        //On récupère les informations de l'utilisateur
        $userInfo = $userModel->find($userId);
        
        return [
                    'userInfo'  => $userInfo,
                    'userId'    => $userId,
                    'flashBag'  => new FlashBag()
               ];
    }
    
}