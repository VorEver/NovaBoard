<?php
use Phalcon\Mvc\Model;

class Posts extends Model {
    public $id;
    public $message;
    public $poster_id;
    public $topic_id;
    public $created_timestamp;
    public $last_modified_timestamp;

    public function initialize() {
        $this->setSource('nova_posts');
    }
}