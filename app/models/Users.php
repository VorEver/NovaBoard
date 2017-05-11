<?php
use Phalcon\Mvc\Model;

class Users extends Model {
    public $id;
    public $username;
    public $password;
    public $email;

    public function initialize() {
        $this->setSource('nova_user');
    }
}