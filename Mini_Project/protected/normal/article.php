<?php 
    if (!array_key_exists('A', $_GET) || empty($_GET['A'])) { //A is the ID of the article
        $_GET['P'] = 'home';
    }
    else if(!is_numeric($_GET['A'])) {
        $_GET['P'] = '404';
    }
    else {
        require_once ARTICLE_MANAGER;
        $article = getArticleById($_GET['A']);
    }

?>

<?php if ($article == false): ?> 
    <?=$_GET['A']; ?>
    <div class="alert alert-primary" role="alert">Article not found!</div>
<?php else: ?>
    <h1><?=$article['title']; ?></h1>
    <!--Here is the article-->

<?php endif; ?>