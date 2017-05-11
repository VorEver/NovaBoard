<?php
/**
 * NovaBoard
 * PHP Bulletin Board Software Written By Jody LeCompte
 * License: MIT
 * --
 * URL: http://jodylecompte.com
 * Github: https://github.com/jodylecompte/jodylecompte.com
 *
 */

ini_set('display_errors', 1);
error_reporting(E_ALL);

use Phalcon\Loader;
use Phalcon\Mvc\Application;
use Phalcon\Di\FactoryDefault;
use Phalcon\Mvc\Url as UrlProvider;
use Phalcon\Db\Adapter\Pdo\Mysql as DbAdapter;
use Phalcon\Mvc\View;
use Phalcon\Mvc\View\Engine\Volt;


$debug = new \Phalcon\Debug();
$debug->listen(); 

// try {
    // Initialize the loader and set default directories
    $loader = new Loader();
    $loader->registerDirs(
        [
            "../app/controllers/",
            "../app/models/",
        ]
    );
    $loader->register();

    //Initialize the DI and import system configuration
    $di = new FactoryDefault();
    $conf = require('../app/config/config.php');

    $di->setShared('conf', function() use ($conf) {
        return $conf;
    });

    // Connect to the database 
    $di->set('db', function () {
        $conf = $this->get('conf');
        return new DbAdapter(array(
            'host'     => $conf->dbHost,
            'username' => $conf->dbUser,
            'password' => $conf->dbPass,
            'dbname'   => $conf->dbName
        ));
    });

    // Load view system and Volt engine
    $di->set(
        "voltService",
        function ($view, $di) {
            $volt = new Volt($view, $di);

            $volt->setOptions(
                [
                    "compiledExtension" => ".compiled",
                    'stat' => true,
                    'compileAlways' => true
                ]
            );

            return $volt;
        }
    );

    $di->set(
        "view",
        function () {
            $view = new View();

            $view->setViewsDir("../app/views/");
            $view->registerEngines(
                [
                    ".volt" => "voltService",
                ]
            );

            return $view;
        }
    );

    // Setup the URI helpers and base URL
    $di->set(
        "url",
        function () {
            $conf = $this->get('conf');
            $url = new UrlProvider();

            $url->setBaseUri($conf->rootURL);

            return $url;
        }
    );

    // Initialise user sessions
    $di->setShared('session', function() {
        $session = new \Phalcon\Session\Adapter\Files();
        $session->start();
        return $session;
    });

    // Its show time
    $application = new Application($di);
    $response = $application->handle();
    $response->send();
// } catch (\Exception $e) {
//     echo "Exception: ", $e->getMessage();
// }