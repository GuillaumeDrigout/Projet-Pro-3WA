<?php

class GenresModel
{
    public function listAll()
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT * FROM Genre';
        
        // Récupération de tous les genres
        return $database->query($sql);
    }
    
    public function find($genreId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT
                    Name
                FROM Genre
                WHERE Id = ?';
                
        // Récupération de l'artiste spécifié.
        return $database->queryOne($sql, [ $genreId ]); 
    }
    
    public function deleteGenre(array $genres) 
    {
       //créer une instance de Database()
       $database = new Database();
       
       //On crée la requête
       $sql = 'DELETE FROM Genre WHERE Id = ?';
       
       //boucler sur $artists
       foreach($genres as $genre) 
       {
            //executer une requete du type Delete
           $database->executeSql($sql,[$genre]);
       }
    }
    
    public function create($name)
    {
        //créer notre requete
        $sql = 'INSERT INTO Genre
        (
            Name
        ) VALUES (?)';
        
        //créer une instance de Database()
        $database = new Database();
        
        //executer notre requete
        $database->executeSql($sql,
        [
         $name
        ]);
    }
}