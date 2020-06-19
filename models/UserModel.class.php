<?php

class UserModel
{
    private function hashPassword($password)
    {
      /*
         * Génération du sel, nécessite l'extension PHP OpenSSL pour fonctionner.
         *
         * openssl_random_pseudo_bytes() va renvoyer n'importe quel type de caractères.
         * Or le chiffrement en blowfish nécessite un sel avec uniquement les caractères
         * a-z, A-Z ou 0-9.
         *
         * On utilise donc bin2hex() pour convertir en une chaîne hexadécimale le résultat,
         * qu'on tronque ensuite à 22 caractères pour être sûr d'obtenir la taille
         * nécessaire pour construire le sel du chiffrement en blowfish.
         */
         $salt = '$2y$11$'.substr(bin2hex(openssl_random_pseudo_bytes(32)), 0, 22);
         
        // Voir la documentation de crypt() : http://devdocs.io/php/function.crypt
        return crypt($password, $salt); 

    }
    
    public function signUp(
        $firstName,
        $lastName,
        $email,
        $password,
        $birthDate,
        $address,
        $city,
        $country,
        $zipCode
        )
    {
       $database = new Database();
       
       // On vérifie s'il y a un utilisateur avec l'adresse e-mail spécifiée.
       $sql =  "SELECT Id FROM User WHERE Email = ?";
       
       //on exécute la requête
       $user = $database->queryOne($sql, [$email]);
       
     
       /* Est-ce qu'on a bien trouvé un utilisateur ? */
        if(empty($user) == false)
        {
            throw new DomainException
            (
                "Il existe déjà un compte utilisateur avec cette adresse e-mail"
            );
        }
            //préparer notre requete d'insertion dans la table User
            $sql = "INSERT INTO User
		    (
			FirstName,
			LastName,
			Email,
			Password,
			BirthDate,
			Address,
			City,
            Country,
			ZipCode,
			CreationTimestamp
		    ) 
		    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())";
		
		/*
         * Hachage du mot de passe, le mot de passe en clair n'est JAMAIS enregistré
         * et ne pourra JAMAIS être récupéré.
         */
        $passwordHash = $this->hashPassword($password);
		
          // Insertion de l'utilisateur dans la base de données.
        $database->executeSql($sql,
        [
            $firstName,
            $lastName,
            $email,
            $passwordHash,
            $birthDate,
            $address,
            $city,
            $country,
            $zipCode
        ]);
        
        // Ajout d'un message de notification qui s'affichera sur la page Login
        $flashBag = new FlashBag();
        $flashBag->add('Votre compte utilisateur a bien été créé. Vous pouvez maintenant vous identifier.');
    }
    
    private function verifyPassword($password, $hashedPassword)
	{
	    // Voir la documentation de crypt() : http://devdocs.io/php/function.crypt
	    return crypt($password, $hashedPassword) == $hashedPassword;
	}
	
	public function findWithEmailPassword($email, $password)
    {
        $database = new Database();
        
        $sql="SELECT Id, Email, Admin, LastName, FirstName, Password  FROM User WHERE Email =?";
        
        // Récupération de l'utilisateur ayant l'email spécifié en argument.
        $user = $database->queryOne($sql,[$email]);
        
        // Est-ce qu'on a bien trouvé un utilisateur ?
        if(empty($user) == true)
        {
            throw new DomainException
            (
                "Il n'y a pas de compte utilisateur associé à cette adresse email"
            );
        }
        
        // Est-ce que le mot de passe spécifié est correct par rapport à celui stocké ?
        if($this->verifyPassword($password, $user['Password']) == false)
    	{
    	   throw new DomainException
			(
				"Le mot de passe spécifié est incorrect"
			); 
    	}
        
        //mise à jour dh champ LastLoginTimestamp pour le user $user["Id"]
        $sql="UPDATE User SET LastLoginTimestamp = NOW() WHERE id =?";
        $database->executeSql($sql, [$user["Id"]]);
        
        //reformuler le tableau user
        return array_slice($user, 0, 5);
    }
    
    public function allUsers() 
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête
        $sql = "SELECT Id, LastName, FirstName, Admin FROM User ORDER BY LastName";
        
        //executer notre requete et renvoyer le résultat
        return $database->query($sql);
    }
    
    public function setUserAdmin(array $users) 
    {
        //créer une instance de Database()
        $database = new Database();
        
        //On crée la requête, on met par défaut l'utilisateur sur null dans la colonne admin
        $sql = "UPDATE User SET Admin = NULL";
        
        //executer notre requete
        $database->executeSql($sql,[]);
        
        //si un utilisateur a sa checkbox cochée, on met la colonne admin de cet utilisateur sur 1, afin d'en faire un admin
        $sql = "UPDATE User SET Admin=1 WHERE Id=?";
        
        //On boucle sur le tableau users
        foreach($users as $user) {
            //On exécute notre requête pour chaque utilisateur selectionné
            $database->executeSql($sql,[$user]);
        }
    }
    
    public function find($userId)
    {
        //créer une instance de Database()
    	$database = new Database();

    	// Récupération de l'utilisateur spécifié, exécution de la requête et renvoi du résultat
    	return $database->queryOne
    	(
    		"SELECT
    			Id,
    			LastName,
				FirstName,
				Address,
				City,
				ZipCode,
				Country,
				Email,
				BirthDate,
				CreationTimestamp,
				Password
			FROM User
			WHERE Id = ?",
    		[ $userId ]
    	);
    }
    
    public function changeUserInfo($firstname, $lastname, $email, $address, $city, $zipCode, $country, $birthDate, $userId)
    {
        //créer une instance de Database()
        $database = new Database();
        
        //requête de mis à jour des informations de l'utilisateur
        $sql = "UPDATE 
                    User
                SET
                    FirstName = ?,
                    LastName = ?,
                    Email = ?,
                    Address = ?,
                    City = ?,
                    ZipCode = ?,
                    Country= ?,
                    BirthDate = ?
                WHERE 
                    Id= ?";
        
        //exécution de notre requête
        $database->executeSql($sql, [
                                        $firstname,
                                        $lastname,
                                        $email,
                                        $address,
                                        $city,
                                        $zipCode,
                                        $country,
                                        $birthDate,
                                        $userId
                                    ]);
        
        // Ajout d'un message de notification qui s'affichera à l'envoi du formulaire de mis à jour des infos de l'utilisateur
        $flashBag = new FlashBag();
        $flashBag->add("Informations personelles bien mises à jour!");
    }
    
    public function changeUserPassword($oldPassword, $newPassword, $userId)
    {
        //on crée une instance de userModel()
        $userModel = new UserModel();
        
        //on récupère l'id de l'utilisateur
        $userInfo = $userModel->find($userId);
        
        //si le mot de passe rentré dans le champs 'oldPassword' du formulaire est le bon
        if($userModel->verifyPassword($oldPassword, $userInfo['Password']))
        {
            //on met à jour le mot de passe
            $database = new Database();
            
            $sql = "UPDATE 
                        User
                    SET
                        Password = ?
                    WHERE 
                        Id= ?";
                        
            /*
             * Hachage du mot de passe, le mot de passe en clair n'est JAMAIS enregistré
             * et ne pourra JAMAIS être récupéré.
             */
            $passwordHash = $this->hashPassword($newPassword);
            
            //exécution de la requête
            $database->executeSql($sql, [$passwordHash, $userId]);
            
            // Ajout d'un message de notification qui s'affichera à l'envoi du formulaire de changement de mot de passe
            $flashBag = new FlashBag();
            $flashBag->add("Mot de passe bien mis à jour!");
        }
        
        // si l'ancien mot de passe rentré n'est pas le bon
        else
        {
            // Ajout d'un message de notification qui s'affichera à l'envoi du formulaire de changement de mot de passe
            $flashBag = new FlashBag();
            $flashBag->add("L'ancien mot de passe entré n'est pas le bon, veuillez réessayer!");
        }
    }
}