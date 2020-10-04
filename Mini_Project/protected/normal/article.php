<?php 
    if (!array_key_exists('A', $_GET) || empty($_GET['A'])) {                       //A is the ID of the article
        header('Location: index.php');
    }
    else if(!is_numeric($_GET['A'])) {
        header('Location: index.php?P=404');
    }
    else {
        require_once ARTICLE_MANAGER;
        $article = getArticleById($_GET['A']);
    }

    if (array_key_exists('M', $_GET) && !empty($_GET['M'])) {                         //Modification parameter
        if($_GET['M'] == "modify") {
            header('Location: index.php?P=editArticle&A='.$article['id']);
        }
        else if ($_GET['M'] == "delete") {
            require_once ARTICLE_MANAGER;
            if (!deleteArticle($article['id'])) {
                echo '<div class="alert alert-primary" role="alert">Error!</div>';
            }
            else {
                header('Location: index.php?P=home&D=success');
            }
        }

    }
?>

<?php if ($article == false): ?> 
    <?=$_GET['A']; ?>
    <div class="alert alert-primary" role="alert">Article not found!</div>
<?php else: ?>
    <h1><?=$article['title']; ?></h1>
    <!--Here is the article-->

<?php endif; ?>