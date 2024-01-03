<?php

class Project
{
    private $title;
    private $description;
    private $image;
    private $like;
    private $dislike;
    private $id;

    public function __construct($title, $description, $image, $like = 0, $dislike = 0, $id = null)
    {
        $this->title = $title;
        $this->description = $description;
        $this->image = $image;
        $this->like = $like;
        $this->dislike = $dislike;
        $this->id = $id;
    }

    public function getTitle(): string
    {
        return $this->title;
    }

    public function getDescription(): string
    {
        return $this->description;
    }

    public function getImage(): string
    {
        return $this->image;
    }

    public function getLike(): int
    {
        return $this->like;
    }

    public function getDislike(): int
    {
        return $this->dislike;
    }

    public function getId(): ?int
    {
        return $this->id;
    }
}
