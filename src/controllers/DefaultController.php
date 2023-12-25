<?php
require_once 'AppController.php';
require_once __DIR__.'/../models/Dog.php';

class DefaultController extends AppController{
    function login(){
        //include __DIR__'src/views/login.html';
        $this->render("login");

    }
    function dashboard(){
        //include __DIR__'src/views/dashboard.html';

        $title = "Dogs";
        $dogs = [
            new Dog("Buddy", 3, "Labrador"),
            new Dog("Bruddy", 2, "Chihuahua"),
            new Dog("Duddy", 4, "Jack Russell terrier"),
            new Dog("Huddy", 5, "Alaskan malamute"),
            new Dog("Ruddy", 3, "Husky")
        ];
        $this->render("dashboard", ["title" =>$title, "dogs" =>$dogs]);
    }
}