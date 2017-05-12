<?php
use Phalcon\Mvc\Model;

class Topics extends Model {
    public $id;
    public $title;
    public $forum_id;
    public $poster_id;
    public $created_timestamp;
    public $last_modified_timestamp;

    public function initialize() {
        $this->setSource('nova_topics');
    }
}