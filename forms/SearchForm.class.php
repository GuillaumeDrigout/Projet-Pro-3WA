<?php

class SearchForm extends Form 
{
    public function build() 
    {
        $this->addFormField('q');
    }
}