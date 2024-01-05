<?php

require 'Routing.php';

$path = trim($_SERVER['REQUEST_URI'], '/');
$path = parse_url( $path, PHP_URL_PATH);

Router::get('', 'DefaultController');
Router::get('dashboard', 'DefaultController');
Router::get('login', 'DefaultController');
Router::get('register', 'SecurityController');
Router::get('home', 'DefaultController');
//Router::get('projects', 'ProjectController');
//Router::get('FileNotFound', 'ErrorController');
//Router::get('home', 'HomeController');
//Router::post('login', 'SecurityController');
//Router::post('addProject', 'ProjectController');
//Router::post('register', 'SecurityController');

Router::run($path);