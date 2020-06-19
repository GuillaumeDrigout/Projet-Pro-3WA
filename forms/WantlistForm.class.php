<?php

class WantlistForm extends Form
{
   public function build()
    {
        $this->addFormField('want-list');
        $this->addFormField('delete-want');
    }
}