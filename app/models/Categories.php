<?php
use Phalcon\Mvc\Model;

class Categories extends Model {
    public $id;
    public $position;
    public $name;

    public function initialize() {
        $this->setSource("nova_categories");

        $this->hasMany("id", "Forums", "category_id");
    }
}