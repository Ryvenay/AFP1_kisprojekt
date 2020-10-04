<?php 
    require_once ARTICLE_MANAGER;
    $articles = getArticlesByCategory('Review');
?>

<h1>Reviews</h1>
<div class = "container">
    <?php foreach($articles as $a) : ?>
        <a href="index.php?P=article&A=<?=$a['id']; ?>">
            <div class="row">
                <div class="col-md-4">
                    <img src="<?=$a['banner']?>" alt="Card image cap">
                </div>
                <div class="col-md-8">
                    <ol>
                        <h5><?=$a['title']?></h5>
                        <p><?php echo strip_tags(substr($a['content'], 0, 150));?></p>
                    </ol>
                </div>
            </div>
            <br>
            </div>
        </a>
    <?php endforeach; ?>
</div>
