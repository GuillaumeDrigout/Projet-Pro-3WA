<?php

class WantlistController 
{
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
        
        //On récupère tous les albums de la wantlist de l'utilisateur
        $wantlistModel = new WantlistModel();
        $wantlist = $wantlistModel->listWantsRecords($userId);
        
        return [
                    'wantlist'  => $wantlist
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
        
        //On crée une instance de wantlistmodel
        $wantlistModel = new WantlistModel();
        
        //à l'envoi du formulaire d'ajout d'un want dans la wantlist
        if(isset($_POST['want-list']))
        {
            //On vérifie que le want n'est pas déja dans la wantlist
            if(empty($wantlistModel->verifyWantsRecord($userId,$formFields['want-list'])))
            {
                //on crée le want dans la wantlist
                $wantlistModel->createWant($formFields['want-list'],$userId);
            }
        }
        
        //à l'envoi du formulaire de retrait d'un want
        if (isset($_POST['delete-want'])) {
            //want à supprimer
            $wantlistModel->deleteWant($_POST['delete-want']);
        }
        
        //on récupère la wantlist mise à jour et la renvoi
        $wantlist = $wantlistModel->listWantsRecords($userId);
        
        return [
                    'wantlist'  =>$wantlist
                ];
                
    }
    
}