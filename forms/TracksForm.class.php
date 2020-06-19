<?php

class TracksForm extends Form 
{
    public function build() 
    {
        $this->addFormField('record');
        $this->addFormField('name');
        $this->addFormField('spotifySongLink');
		$this->addFormField('length');
    }
}