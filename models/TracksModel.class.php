<?php 

class TracksModel
{
    public function listAll()
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT 
                    Track.Id AS TrackId,
                    Record.Id AS RecordId,
                    Track.Name AS TrackName,
                    Record.Name AS RecordName,
                    Artist.Name AS ArtistName,
                    Record.Photo, 
                    Year, 
                    NumberOfTracks,
                    SpotifyLink,
                    Record_Id,
                    Genre_Id,
                    Artist_Id,
                    Artist.Name AS ArtistName
                    FROM Track
                INNER JOIN Record
                ON Track.Record_Id = Record.Id
                INNER JOIN Artist
                ON Record.Artist_Id = Artist.Id';
        
        // Récupération de tous les morceaux et les albums et artistes associés aux morceaux.
        return $database->query($sql);
    }
    
    public function find($trackId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT
                    Name,
                    Record_Id,
                    Length
                FROM Track
                WHERE Id = ?';
                
       // Récupération de la chanson spécifiée.
        return $database->queryOne($sql, [ $trackId ]); 
    }
    
    public function deletetrack(array $tracks) 
    {
       //créer une instance de Database()
       $database = new Database();
       
       //On crée la requête
       $sql = 'DELETE FROM Track WHERE Id = ?';
       
       //boucler sur tracks
       foreach($tracks as $track) 
       {
            //executer une requete du type Delete
           $database->executeSql($sql,[$track]);
       }
    }
    
    public function create($recordId, $name, $spotifySongLink, $length)
    {
        //créer notre requete
        $sql = 'INSERT INTO Track
                (
                    Record_Id,
                    Name,
                    SpotifySongLink,
                    Length
                ) 
                VALUES (?, ?, ?, ?)';
        
        //créer une instance de Database()
        $database = new Database();
        
        //executer notre requete
        $database->executeSql($sql,
        [
         $recordId,
         $name, 
         $spotifySongLink,
         $length
        ]);
       
    }
}