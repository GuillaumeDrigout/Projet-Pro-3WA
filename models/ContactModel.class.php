<?php

class ContactModel
{
    public function sendMail($name, $senderMail, $message)
    {
        //en tête du mail
        $header="MIME-Version: 1.0\r\n";
		$header.='From:"Guigscog"<contact@guigscog.com>'."\n";
		$header.='Content-Type:text/html; charset="uft-8"'."\n";
		$header.='Content-Transfer-Encoding: 8bit';
		
		//le message html auquel on viendra concaténer le nom de l'utilisateur son message et son mail
		$globalMessage='
		<html>
			<body>
				<div>
					<img style="width:200px;" src="http://guillaumedrigout.sites.3wa.io/Projet%20Pro%20Guigscog/application/www/images/guigs-logo.png"/>
					<br/>
					<div>Nom de l\'expéditeur : '.$name.'</div>
					<div>Mail de l\'expéditeur : '.$senderMail.'</div>
					<div>Message : '.$message.'</div>
				</div>
			</body>
		</html>
		';
		
		//on utilise la fonction mail pour envoyer le message sur le mail de l'admin du site
		mail("g.drigout@gmail.com", "CONTACT - Guigscog", $globalMessage, $header);

        // Ajout d'un message de notification de succès de l'envoi du mail.
        $flashBag = new FlashBag();
        $flashBag->add('Votre message a bien été envoyé.');
    }
}