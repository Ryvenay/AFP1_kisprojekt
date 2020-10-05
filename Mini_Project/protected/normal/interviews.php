<?php 
    require_once ARTICLE_MANAGER;
    $articles = getArticlesByCategory('Interview');

?>

<h1 class="h1edit">Interviews</h1>
<hr>
<div class = "container">
    <?php foreach($articles as $a) : ?>
        <a href="index.php?P=article&A=<?=$a['id']; ?>">
            <div class="row">
                <div class="col-md-4">
                    <img class="rewimages" src="<?=$a['banner']?>" alt="Card image cap">
                </div>
                <div class="col-md-8">
                    <ol>
                        <h5><?=$a['title']?></h5>
                        <p><?php echo strip_tags(substr($a['content'], 0, 150));?></p>
                    </ol>
                </div>
            </div>
            <br>
        </a>
    <?php endforeach; ?>
</div>