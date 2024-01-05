<?php
/*
require_once 'AppController.php';
require_once __DIR__ .'/../models/User.php';
require_once __DIR__.'/../repository/UserRepository.php';

class SecurityController extends AppController {

    private $userRepository;

    public function __construct()
    {
        parent::__construct();
        $this->userRepository = new UserRepository();
    }

    public function login()
    {
        if (!$this->isPost()) {
            return $this->render('login');
        }

        $email = $_POST['email'];
        $password = md5($_POST['password']);

        $user = $this->userRepository->getUser($email);

        if (!$user) {
            return $this->render('login', ['messages' => ['User not found!']]);
        }

        if ($user->getEmail() !== $email) {
            return $this->render('login', ['messages' => ['User with this email not exist!']]);
        }

        if (!password_verify($password, $user->getPassword())) {
            return $this->render('login', ['messages' => ['Wrong password!']]);
        }

        $url = "http://$_SERVER[HTTP_HOST]";
        header("Location: {$url}/projects");
    }

    public function register()
    {
        if (!$this->isPost()) {
            return $this->render('register');
        }

        $name = $_POST['name'];
        $surname = $_POST['surname'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $confirmedPassword = $_POST['confirmedPassword'];
        
        if ($password !== $confirmedPassword) {
            return $this->render('register', ['messages' => ['Please provide proper password']]);
        }

        $hashedPassword = password_hash($password, PASSWORD_BCRYPT); 
        $user = new User($email, $hashedPassword, $name, $surname, ''); 

        try {
            $this->userRepository->addUser($user);
            return $this->render('login', ['messages' => ['You\'ve been successfully registered!']]);
        } catch (Exception $e) {
            return $this->render('register', ['messages' => ['Registration failed: ' . $e->getMessage()]]);
        }
    }
}*/


require_once 'AppController.php';
require_once __DIR__ .'/../models/User.php';
require_once __DIR__.'/../repository/UserRepository.php';

class SecurityController extends AppController {

    private $userRepository;

    public function __construct()
    {
        parent::__construct();
        $this->userRepository = new UserRepository();
    }

    public function login()
    {
        if (!$this->isPost()) {
            return $this->render('login');
        }

        $email = $_POST['email'];
        $password = $_POST['password'];

        $user = $this->userRepository->getUser($email);

        if (!$user) {
            return $this->render('login', ['messages' => ['User not found!']]);
        }

        if (!password_verify($password, $user->getPassword())) {
            return $this->render('login', ['messages' => ['Wrong password!']]);
        }

        $_SESSION['user'] = ['email' => $user->getEmail(), 'name' => $user->getName()];
        $url = "http://$_SERVER[HTTP_HOST]";
        header("Location: {$url}/projects");
    }

    public function register()
    {
        if (!$this->isPost()) {
            return $this->render('register');
        }

        $name = $_POST['name'];
        $surname = $_POST['surname'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $confirmedPassword = $_POST['confirmedPassword'];
        
        if ($password !== $confirmedPassword) {
            return $this->render('register', ['messages' => ['Please provide proper password']]);
        }

        $hashedPassword = password_hash($password, PASSWORD_BCRYPT); 
        $user = new User($email, $hashedPassword, $name, $surname, '', false, 0);

        try {
            $this->userRepository->addUser($user);
            return $this->render('login', ['messages' => ['You\'ve been successfully registered!']]);
        } catch (Exception $e) {
            return $this->render('register', ['messages' => ['Registration failed: ' . $e->getMessage()]]);
        }
    }
}
