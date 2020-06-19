<?php

class RecordsForm extends Form {
    
    public function build() {
        $this->addFormField('artist');
        $this->addFormField('name');
		$this->addFormField('description');
		$this->addFormField('year');
		$this->addFormField('numberOfTracks');
		$this->addFormField('spotifyLink');
		$this->addFormField('genre');
    }
}