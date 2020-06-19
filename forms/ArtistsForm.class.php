<?php

class ArtistsForm extends Form {
    public function build() {
        $this->addFormField('name');
		$this->addFormField('bio');
    }
}