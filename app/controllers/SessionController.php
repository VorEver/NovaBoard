<?php

use Phalcon\Mvc\Controller;
use Model\Categories;

class SessionController extends Controller {
    private function _registerSession($user) {
        $this->session->set('auth', [
            "id"   => $user->id,
            "name" => $user->name 
        ]);
    
    
    }

    public function startAction() {
        if(!$this->request->isPost()) {
            die('TODO: Error handling');
        }

        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');
        
        $user = User::FindFirst
    }
}