<?php

class Dog {
    // Właściwości (zmienne) klasy
    public $name;
    public $age;
    public $breed;

    // Konstruktor klasy, inicjalizuje obiekt z określonymi wartościami
    public function __construct($name, $age, $breed) {
        $this->name = $name;
        $this->age = $age;
        $this->breed = $breed;
    }

    // Metoda klasy - funkcja powiązana z obiektem
    public function bark() {
        echo "Woof! Woof!\n";
    }

    // Metoda do pobierania informacji o psie
    public function getDogInfo() {
        return "Name: $this->name, &nbsp; Age: $this->age, &nbsp; Breed: $this->breed";
    }
}