<?php 

class WantlistModel
{
    public function listAll()
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT 
                    *
                    FROM WantList';
        
        // Récupération de toutes les wantlist
        return $database->query($sql);
    }
    
    public function listWantsRecords($userId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT
                    WantList.Id AS WantId,
                    Record_Id,
                    Record.Name AS RecordName,
                    Record.Photo AS RecordPhoto,
                    Artist.Name AS ArtistName,
                    SpotifyLink
                FROM WantList
                INNER JOIN Record
                ON Record.Id = WantList.Record_Id
                INNER JOIN Artist
                ON Record.Artist_Id = Artist.Id
                WHERE User_Id = ?';
                    
        // Récupération de tous les albums de la wantlist et leurs informations
        return $database->query($sql, [$userId]);
    }
    
    public function createWant($recordId, $userId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête et ajoute le want dans la wantlist
        $sql = 'INSERT INTO WantList
                    (
                        Record_Id,
                        User_Id
                    )
                VALUES (?, ?)';
                
        //executer notre requete
        $database->executeSql($sql,[$recordId, $userId]);
    }
    
    public function deleteWant($want)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //on crée la requête
        $sql = 'DELETE FROM WantList WHERE Id = ?';
       
        //executer une requete du type Delete
        $database->executeSql($sql,[$want]);
    }
    
    public function verifyWantsRecord($userId, $recordId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = 'SELECT * FROM `WantList` WHERE `User_Id`=? AND `Record_Id`=?';
        
        //On renvoi le résultat de l'exécution de la requête, 
        //afin de vérifier si un album est déja dans la wantlist d'un utilisateur spécifié
        return $database->query($sql, [$userId,$recordId]);
        
    }
    
}