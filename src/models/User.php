<?php

class User
{
    private $email;
    private $password;
    private $name;
    private $surname;
    private $phone;

    public function __construct(string $email, string $password, string $name, string $surname, string $avatar)
    {
        $this->email = $email;
        $this->password = $password;
        $this->name = $name;
        $this->surname = $surname;
        $this->avatar = $avatar;
    }

    public function getEmail(): string
    {
        return $this->email;
    }

    public function setEmail(string $email): void
    {
        $this->email = $email;
    }

    public function getPassword(): string
    {
        return $this->password;
    }

    public function setPassword(string $password): void
    {
        $this->password = $password;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName(string $name): void
    {
        $this->name = $name;
    }

    public function getSurname(): string
    {
        return $this->surname;
    }

    public function setSurname(string $surname): void
    {
        $this->surname = $surname;
    }
    
    public function getAvatar(): string
    {
        return $this->avatar;
    }

    public function setAvatar(string $avatar): void
    {
        $this->avatar = $avatar;
    }

    public function updateProfile(array $newData) {
        if (empty($newData)) {
            return;
        }
    
        foreach ($newData as $key => $value) {
            switch ($key) {
                case 'email':
                    $this->setEmail($value);
                    break;
                case 'password':
                    $this->setPassword($value);
                    break;
                case 'name':
                    $this->setName($value);
                    break;
                case 'surname':
                    $this->setSurname($value);
                    break;
                case 'avatar':
                    $this->setAvatar($value);
                    break;
            }
        }
    
        $this->updateDatabase();
    }

    private function updateDatabase()
    {
        try {
            $conn = new PDO(
                "pgsql:host=$yourHost;port=5432;dbname=$yourDatabase",
                $yourUsername,
                $yourPassword,
                ["sslmode"  => "prefer"]
            );

            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $sql = "UPDATE users SET email = :email, password = :password, name = :name, surname = :surname, avatar = :avatar WHERE email = :currentEmail";
            $stmt = $conn->prepare($sql);

            $stmt->bindParam(':email', $this->email);
            $stmt->bindParam(':password', $this->password);
            $stmt->bindParam(':name', $this->name);
            $stmt->bindParam(':surname', $this->surname);
            $stmt->bindParam(':avatar', $this->avatar);
            $stmt->bindParam(':currentEmail', $this->email); 

            $stmt->execute();
            
        } catch (PDOException $e) {
            die("Database update failed: " . $e->getMessage());
        }
    }
}
