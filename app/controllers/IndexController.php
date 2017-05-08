<?php
use Phalcon\Mvc\Controller;
use Model\Categories;

class IndexController extends Controller
{
    public function indexAction()
    {
        $boardData = Category::find();
        foreach($boardData as $board) {
            print_r($board->forum);
        }
    
        $this->view->setVar('boardData', $boardData);
    }
}