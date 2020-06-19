<?php

class ChangeuserdetailForm extends Form {
    
    public function build() 
    {
        $this->addFormField('firstname');
        $this->addFormField('lastname');
        $this->addFormField('email');
		$this->addFormField('address');
		$this->addFormField('city');
		$this->addFormField('zipCode');
		$this->addFormField('country');
		$this->addFormField('birthDate');
    }
}