<?php
use Phalcon\Mvc\Model;

class Category extends Model {
    public $id;
    public $position;
    public $name;

    public function initialize() {
        $this->setSource("nova_category");

        $this->hasMany("id", "Forum", "category_id");
    }
}