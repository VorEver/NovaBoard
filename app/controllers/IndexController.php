<?php
use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
    public function indexAction()
    {
        $boardData = Categories::find();
    
        $this->view->setVar('boardData', $boardData);
    }
}