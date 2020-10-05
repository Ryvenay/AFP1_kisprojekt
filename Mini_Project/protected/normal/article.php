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

    if (array_key_exists('M', $_GET) && !empty($_GET['M'])) {                   //Modification parameter
        if(isUserLoggedIn()) {
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
    }
?>
<hr>
<?php if ($article == false): ?> 
    <?=$_GET['A']; ?>
    <div class="alert alert-primary" role="alert">Article not found!</div>
<?php else: ?>
<div class="container">
<div class="row">
<div id="articletitle" class="col-md-6">
    <h1 class="articlehead" ><?=$article['title']; ?></h1>
	<?php if(IsUserLoggedIn()):?>
		<div class="trformat">
		 <a href="index.php?P=article&A=<?=$article['id'] ?>&M=modify">Edit</a>
		 <a href="index.php?P=article&A=<?=$article['id'] ?>&M=delete">Delete</a>
		</div>
	<?php endif;?>
</div>
	<div class="col-md-6">
		 <img class="bannersize"src="<?=$article['banner']?>"></img>
	</div>
</div>
	
	<hr>
    <!--Here is the article-->
	<p><?php echo($article['content'])?></p>
	<p class="credits"><?php echo($article['create_date'])?></p>
	<p class="credits"><?php echo($article['username'])?></p>
</div>
<?php endif; ?>
