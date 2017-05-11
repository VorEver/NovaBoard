<?php


class IndexController extends BaseController
{
    public function indexAction() {
        parent::initialize();
        $boardData = Categories::find();
        
        $this->view->setVar('boardData', $boardData);
    }
}