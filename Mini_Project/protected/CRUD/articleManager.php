<?php
    function getArticleById($id) {
        $query = "SELECT * FROM articles WHERE id = :id";
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
        $query = "SELECT * FROM articles WHERE category = :category ORDER BY create_date LIMIT 4";
        $params = [ ':category' => $category ];

        require_once DATABASE_CONTROLLER;
        return getList($query, $params);
    }

    function getArticlesByCategory($category) {
        $query = "SELECT * FROM articles WHERE category = :category";
        $params = [ ':category' => $category ];

        require_once DATABASE_CONTROLLER;
        return getRecord($query, $params);
    }

    function getFeaturedArticles() {
        $query = "SELECT * FROM articels WHERE featured = true";
        require_once DATABASE_CONTROLLER;
        return getRecord($query);
    }

    function addArticle($title, $content, $banner, $author, $genre, $create_date, $category) {
        $query = "INSERT INTO articles (title, content, banner, author, genre, category) VALUES :title, :content, :banner, :author, :genre, :category";
        $params = [
            ':title' => $title,
            ':content' => $content,
            ':banner' => $banner,
            ':author' => $author,
            ':genre' => $genre,
            ':category' => $category
        ];

        require_once DATABASE_CONTROLLER;
        return executeDML($query, $params);
    }


?>