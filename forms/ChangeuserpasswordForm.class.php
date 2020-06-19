<?php

class ChangeuserpasswordForm extends Form {
    
    public function build() 
    {
        $this->addFormField('oldPassword');
        $this->addFormField('newPassword');
        $this->addFormField('newPassword2');
    }
}