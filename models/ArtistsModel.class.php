<?php

class ArtistsModel
{
    public function listAll()
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT * FROM Artist ORDER BY Name';
        
        // Récupération de tous les artistes
        return $database->query($sql);
    }
    
    public function listOneArtistRecords($artistId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT
                    Id,
                    Name,
                    Photo
                FROM Record
                WHERE Artist_Id = ?';
                
        // Récupération des albums de l'artiste spécifié
        return $database->query($sql, [$artistId]);
    }
    
    public function findArtistGenre($artistId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT
                Genre.Id AS GenreId,
                Genre.Name AS GenreName,
                Record.Id AS RecordId
                FROM Genre
                INNER JOIN Record
                ON Genre.Id = Record.Genre_Id
                WHERE Artist_Id = ?';
                
        // Récupération du genre de l'artiste spécifié
        return $database->queryOne($sql, [$artistId]);
    }
    
    public function find($artistId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT
                    Name,
                    Photo,
                    Bio
                FROM Artist
                WHERE Id = ?';
                
        // Récupération de l'artiste spécifié.
        return $database->queryOne($sql, [$artistId]); 
    }
    
    public function deleteArtist(array $artists) 
    {
       //créer une instance de Database()
       $database = new Database();
       
       //On crée la requête
       $sql = 'DELETE FROM Artist WHERE Id = ?';
       
       //boucler sur $artists
       foreach($artists as $artist) 
       {
            //executer une requete du type Delete
           $database->executeSql($sql,[$artist]);
       }
    }
    
    public function create($name, $photo, $bio)
    {
        //créer notre requete
        $sql = 'INSERT INTO Artist
        (
            Name,
            Photo,
            Bio
        ) VALUES (?, ?, ?)';
        
        //créer une instance de Database()
        $database = new Database();
        
        //executer notre requete
        $database->executeSql($sql,
        [
         $name,
         $photo,
         $bio
        ]);
        
        // Ajout d'un message de notification qui s'affichera à l'envoi du formulaire d'ajout d'un artiste
        $flashBag = new FlashBag();
        $flashBag->add("L'artiste a bien été ajouté à la base de données");
    }
}