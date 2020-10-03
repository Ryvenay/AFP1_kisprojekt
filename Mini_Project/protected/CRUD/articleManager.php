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
        $record = getRecord($query, $params);

        if (empty($record)) {
            return false;
        }
        else {
            return $record;
        }
    }

    function getArticlesByCategory($category) {
        $query = "SELECT * FROM articles WHERE category = :category";
        $params = [ ':category' => $category ];

        require_once DATABASE_CONTROLLER;
        $record = getRecord($query, $params);

        if (empty($record)) {
            return false;
        }
        else {
            return $record;
        }
    }


?>