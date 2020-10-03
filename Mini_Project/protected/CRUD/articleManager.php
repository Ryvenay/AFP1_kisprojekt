<?php
    function getArticleById($id) {
        $query = "SELECT articles.id, articles.title, articles.content, articles.banner, 
            users.username, articles.category, articles.genre, articles.create_date, articles.featured FROM articles INNER JOIN users ON articles.author = users.id WHERE articles.id = :id";
        $params = [ ':id' => $id ];

        require_once DATABASE_CONTROLLER;
        $record = getRecord($query, $params);

        if (empty($record)) {
            return false;
        }
        else {
            return $record;
        }
    }

    function getLatestArticles($category) {
        $query = "SELECT articles.id, articles.title, articles.content, articles.banner, 
        users.username, articles.category, articles.genre, articles.create_date, articles.featured 
        FROM articles INNER JOIN users ON articles.author = users.id WHERE category = :category ORDER BY create_date LIMIT 4";
        $params = [ ':category' => $category ];

        require_once DATABASE_CONTROLLER;
        return getList($query, $params);
    }

    function getArticlesByCategory($category) {
        $query = "SELECT articles.id, articles.title, articles.content, articles.banner, 
        users.username, articles.category, articles.genre, articles.create_date, articles.featured 
        FROM articles INNER JOIN users ON articles.author = users.id WHERE category = :category";
        $params = [ ':category' => $category ];

        require_once DATABASE_CONTROLLER;
        return getRecord($query, $params);
    }

    function getFeaturedArticles() {
        $query = "SELECT articles.id, articles.title, articles.content, articles.banner, 
        users.username, articles.category, articles.genre, articles.create_date, articles.featured 
        FROM articles INNER JOIN users ON articles.author = users.id WHERE featured = 1";
        require_once DATABASE_CONTROLLER;
        return getRecord($query);
    }

    function addArticle($title, $content, $banner, $author, $genre, $category, $featured) {
        $query = "INSERT INTO articles (title, content, banner, author, genre, category, featured) VALUES (:title, :content, :banner, :author, :genre, :category, :featured)";
        $params = [
            ':title' => $title,
            ':content' => $content,
            ':banner' => $banner,
            ':author' => $author,
            ':genre' => $genre,
            ':category' => $category,
            ':featured' => $featured
        ];

        require_once DATABASE_CONTROLLER;
        return executeDML($query, $params);
    }

    function editArticle($id, $title, $content, $banner, $author, $genre, $create_date, $category, $featured) {
        $query = "UPDATE articles SET title = :title, content = :content, banner = :banner, author = :author, genre = :genre, category = :category, featured = :featured WHERE id = :id";
        $params = [
            ':id' => $id,
            ':title' => $title,
            ':content' => $content,
            ':banner' => $banner,
            ':author' => $author,
            ':genre' => $genre,
            ':category' => $category,
            ':featured' => $featured
        ];

        require_once DATABASE_CONTROLLER;
        return executeDML($query, $params);
    }

?>