<?php
use Phalcon\Mvc\Model;

class Users extends Model {
    public $id;
    public $username;
    public $password;
    public $name;
    public $email;
    public $active;

    public function initialize() {
        $this->setSource('nova_users');
    }
}