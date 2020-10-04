<?php
if (!array_key_exists('P', $_GET) || empty($_GET['P'])) {
    $_GET['P'] = 'home';
}

switch($_GET['P']) {
    case 'home':
        require_once NORMAL_DIR.'home.php';
    break;

    case 'reviews':
        require_once NORMAL_DIR.'reviews.php';
    break;

    case 'interviews':
        require_once NORMAL_DIR.'interviews.php';
    break;

    case 'other':
        require_once NORMAL_DIR.'other.php';
    break;

    case 'login':
        require_once USER_DIR.'login.php';
    break;

    case 'addArticle':
        require_once USER_DIR.'add_article.php';
    break;

    case 'editArticle':
        require_once USER_DIR.'edit_article.php';
    break;
	
	case 'logout':
		IsUserLoggedIn() ? UserLogout(): header('Location: index.php');
    break;

    case 'article':
        require_once NORMAL_DIR.'article.php';
    break;
    
    case '404':
        require_once NORMAL_DIR.'404.php';
    break;


}