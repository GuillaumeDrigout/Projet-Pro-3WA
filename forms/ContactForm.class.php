<?php

class ContactForm extends Form {
    
    public function build() 
    {
        $this->addFormField('name');
        $this->addFormField('email');
		$this->addFormField('message');
    }
}