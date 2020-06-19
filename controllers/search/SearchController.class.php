<?php

class SearchController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
        // Récupération de tous les artistes.
        $artistsModel = new ArtistsModel();
        $artists     = $artistsModel->listAll();
        
        // Récupération de tous les albums.
        $recordsModel = new RecordsModel();
        $records = $recordsModel->listAll();
        
        //en get comme le formulaire n'est pas rempli, 
        //on renvoi un tableau vide pour éviter un message d'erreur lors de l'affichage de la vue
        $search = [];
        
        return
        [
          'artists'    => $artists,
          'records'    => $records,
          'search'     =>$search
        ];
    }
    
    public function httpPostMethod(Http $http, array $formFields)
    {
        //On crée une instance de la classe Records
        $recordsModel = new RecordsModel();
        
        //Si le formulaire de recherche a été rempli
        if(isset($formFields['q']))
        {
            //on utilise la fonction search de recordsModel en recupérant le champs du formulaire de recherche
            $search = $recordsModel->search($formFields['q']);
        }
        
        return [
                'search' => $search
                ];
    }
    
}