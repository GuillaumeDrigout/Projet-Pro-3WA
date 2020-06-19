<?php 

class RecordsModel
{
    public function listAll()
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT 
                    Record.Id,
                    Record.Name, 
                    Description, 
                    Record.Photo, 
                    Year, 
                    NumberOfTracks,
                    SpotifyLink,
                    Artist_Id,
                    Genre_Id,
                    Artist.Name AS ArtistName
                    FROM Record
                INNER JOIN Artist 
                ON Record.Artist_Id = Artist.Id';
        
        // Récupération de tous les artistes
        return $database->query($sql);
    }
    
    public function find($recordId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT 
                    Record.Id AS RecordId, 
                    Record.Name AS RecordName, 
                    Description, 
                    Record.Photo AS RecordPhoto, 
                    Year, 
                    NumberOfTracks,
                    SpotifyLink,
                    Artist_Id,
                    Genre_Id,
                    Artist.Name AS ArtistName,
                    Track.Name AS TrackName,
                    SpotifySongLink
                    FROM Record
                INNER JOIN Artist 
                ON Record.Artist_Id = Artist.Id
                INNER JOIN Track
                ON Track.Record_Id = Record.Id
                WHERE Record.Id = ?';
                
       // Récupération de l'album spécifié.
        return $database->queryOne($sql, [ $recordId ]); 
    }
    
    public function findRecord($recordId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT * FROM Record WHERE Id = ?';
                
       // Récupération de l'album spécifié.
        return $database->queryOne($sql, [ $recordId ]); 
    }
    
    public function findRecordTracks($recordId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT
                    Id,
                    Name,
                    SpotifySongLink,
                    Length
                    FROM Track
                WHERE Record_Id = ?';
        
        // Récupération des morceaux de l'album spécifié
        return $database->query($sql, [$recordId]);
    }
    
    public function findGenre($recordId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT
                Genre_Id,
                Genre.Name AS GenreName,
                Genre.Id
                FROM Record
                INNER JOIN Genre
                ON Record.Genre_Id = Genre.Id
                WHERE Record.Id = ?';
        
        // Récupération du genre de l'album spécifié        
        return $database->queryOne($sql, [$recordId]);
    }
    
    public function deleteRecord(array $records) 
    {
       //créer une instance de Database()
       $database = new Database();
       
       //On crée la requête
       $sql = 'DELETE FROM Record WHERE Id = ?';
       
       //boucler sur $records
       foreach($records as $record) 
       {
            //executer une requete du type Delete
            $database->executeSql($sql,[$record]);
       }
       
       // Ajout d'un message de notification qui s'affichera à l'envoi du formulaire de retrait d'un album
        $flashBag = new FlashBag();
        $flashBag->add("Les/L'album(s) ont/a bien été(s) supprimé(s) de la base de données");
    }
    
    public function deleteRecordTracks($records)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'DELETE FROM Track WHERE Record_Id = ?';
       
        //boucler sur $records
        foreach($records as $record) 
        {
            //executer une requete du type Delete
            $database->executeSql($sql,[$record]);
        }
       
    }
    
    public function create($name, $photo, $description, $year, $numberOfTracks, $spotifyLink, $artistId, $genreId)
    {
        //créer notre requete
        $sql = 'INSERT INTO Record
        (
            Name,
            Photo,
            Description,
            Year,
            NumberOfTracks,
            SpotifyLink,
            Artist_Id,
            Genre_Id
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)';
        
        //créer une instance de Database()
        $database = new Database();
        
        //executer notre requete
        $database->executeSql($sql,
        [
         $name,
         $photo,
         $description,
         $year,
         $numberOfTracks,
         $spotifyLink,
         $artistId,
         $genreId
        ]);
        
        // Ajout d'un message de notification qui s'affichera à l'envoi du formulaire d'ajout d'un album
        $flashBag = new FlashBag();
        $flashBag->add("L'album a bien été ajouté à la base de données");
       
    }
    
    public function search($query)
    {
        //on autorise tous les caractères et les espaces dans le champs de recherche du formulaire
        $query = preg_replace("#[^0-9a-z]#i", " ", $query);
        
        //créer une instance de Database()
        $database = new Database();
        
        //créer notre requete
        $sql = "SELECT Artist.Id AS ArtistId,
                       Artist.Name AS ArtistName, 
                       Artist.Photo AS ArtistPhoto, 
                       Bio,
                       Record.Id AS RecordId,
                       Record.Name AS RecordName,
                       Record.photo AS RecordPhoto,
                       Description
                FROM Artist
                INNER JOIN Record
                ON Record.Artist_Id = Artist.Id
                WHERE Artist.Name LIKE '%$query%'
                OR Record.Name LIKE '%$query%'
                ";
                
        //si la recherche ne donne rien
        if(empty($database->query($sql, [])))
        {
            //on renvoi un message pour en informer l'utilisateur
            return "Pas de résultat pour votre recherche.";
        }
        
        //Sinon, récupération du ou des artiste(s) recherché(s).
        return $database->query($sql, []);
        
    }
    
}