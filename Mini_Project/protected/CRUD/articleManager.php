<?php
    function getArticleById($id) {
        $query = "SELECT * FROM articles WHERE id = :id";
        $params = [ ':id' => $id ];

        require_once DATABASE_CONTROLLER;
        record = getRecord($query, $params);

        if (empty($record)) {
            return false;
        }
        else {
            return $record;
        }
    }


?>