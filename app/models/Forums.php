<?php
use Phalcon\Mvc\Model;

class Forums extends Model {
    public $id;
    public $category_id;
    public $name;
    public $slug;
    public $description;
    public $position;
    public $post_count;

    public function initialize() {
        $this->setSource("nova_forums");

        $this->belongsTo("category_id", "Categories", "id");
    }
}