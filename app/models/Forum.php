<?php
use Phalcon\Mvc\Model;

class Forum extends Model {
    public $id;
    public $category_id;
    public $name;
    public $description;
    public $position;
    public $post_count;

    public function initialize() {
        $this->setSource("nova_forum");

        $this->belongsTo("category_id", "Category", "id");
    }
}