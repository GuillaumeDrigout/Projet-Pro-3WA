<?php


class UserSession
{
    public function __construct()
	{
	    if(session_status() == PHP_SESSION_NONE)
		{
            // Démarrage du module PHP de gestion des sessions.
			session_start();
		}
	}
	
	public function create($userId, $firstName, $lastName, $email, $admin)
    {
      // Construction de la session utilisateur.
        $_SESSION['user'] =
        [
            'UserId'    => $userId,
            'FirstName' => $firstName,
            'LastName'  => $lastName,
            'Email'     => $email,
            'Admin'     => $admin
        ];
    }
    
    public function isAuthenticated()
	{
	    //On vérifie qu'il y a bien la clé 'user' dans le tableau $_SESSION
	    if(array_key_exists('user', $_SESSION) == true)
		{
		    //On vérifie si une session a été lancée et donc si $_SESSION['user'] n'est pas vide
		    if (empty($_SESSION['user']) == false) {
		        //si $_SESSION['user'] n'est pas vide on renvoi true
		        return true;
		    }
		    
		    else {
		     //Sinon on renvoi false
		     return false;
		    }
		}
		//Si il n'y a pas la clé 'user' dans le tableau $_SESSION
		else {
		    //On renvoi false
		    return false;
		}
	}
	
	public function getFullName() {
	    //On vérifie si aucune session n'est ouverte avec la fonction isAuthenticated()
	    if($this->isAuthenticated() == false)
        {
            //si ce n'est pas le cas on renvoi un tableau vide
            return null;
        }
        //Sinon on renvoi les données FirstName et LastName de l'utilisateur en les concaténant
        return $_SESSION['user']['FirstName'].' '.$_SESSION['user']['LastName'];
	}
	
	public function destroy() {
	    // Destruction de l'ensemble de la session.
        $_SESSION = array();
        session_destroy();
	}
	
	public function getAdmin()
    {
        //si l'utilisateur n'est pas identifié on renvoi null
        if($this->isAuthenticated() == false) {
            return null;
        }
        //s'il est identifié on renvoi le statut du champs admin de l'utilisateur.
        return $_SESSION['user']['Admin'];
    }
    
    public function getUserId()
    {
        //si l'utilisateur n'est pas identifié on renvoi null
    	if($this->isAuthenticated() == false) {
            return null;
        }
        //s'il est identifié on renvoi l'Id de l'utilisateur
        return $_SESSION['user']['UserId'];
    }
    
}