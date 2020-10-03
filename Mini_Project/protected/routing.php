<?php
if (!array_key_exists('P', $_GET) || empty($_GET['P'])) {
    $_GET['P'] = 'home';
}

switch($_GET['P']) {
    case 'home':
        require_once PROTECTED_DIR.'normal\home.php';
    break;

    case 'reviews':
        require_once PROTECTED_DIR.'normal\reviews.php';
    break;

    case 'interviews':
        require_once PROTECTED_DIR.'normal\interviews.php';
    break;

    case 'other':
        require_once PROTECTED_DIR.'normal\other.php';
    break;

    case 'login':
        require_once USER_DIR.'login.php';
    break;

    case 'addArticle':
        require_once USER_DIR.'add_article.php';
    break;

}