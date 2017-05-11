<?php
use Phalcon\Mvc\Controller;

class SessionController extends BaseController {
    private function _registerSession($user) {
        $this->session->set('auth', [
            "id"   => $user->id,
            "name" => $user->name,
            "username" => $user->username
        ]);
    }

    public function startAction() {
        if(!$this->request->isPost()) {
            die('TODO: Error handling');
        }

        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');
        
        $user = Users::FindFirst([
            "(email = :username: OR username = :username:) AND password = :password: AND active = 'Y'",
            "bind" => [
                "username"    => $username,
                "password" => md5($password),
            ]
        ]);
         if ($user !== false) {
                $this->_registerSession($user);

                $this->flash->success(
                    "Welcome " . $user->name
                );

                // Forward to the 'invoices' controller if the user is valid
                return $this->response->redirect('');
            }

            $this->flash->error(
                "Wrong email/password"
            );

        // Forward to the login form again
        return $this->dispatcher->forward(
            [
                "controller" => "session",
                "action"     => "index",
            ]
        );
    }
}