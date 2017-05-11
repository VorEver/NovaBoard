<?php
use Model\Categories;

class LogoutController extends BaseController {
    public function indexAction() {
        $this->session->destroy();
        return $this->response->redirect('logout/done');
    }
    public function doneAction() {

    }
}