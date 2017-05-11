<?php
use Phalcon\Mvc\Controller;

class BaseController extends Controller
{
    public function initialize() {
        print_r($this->session->get('auth'));
        //die;
        if($this->session->has('auth')) {
            $this->view->setVar('userInformation', ['username' => $this->session->get('auth')['username']]);    
        } else {
            $this->view->setVar('userInformation', null);
        }
    }
}