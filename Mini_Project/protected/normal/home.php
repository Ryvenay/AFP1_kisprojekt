<?php 
    require_once ARTICLE_MANAGER;
    $feartured = getFeaturedArticles();
    $latestReviews = getLatestArticles('review');
    $latestInterviews = getLatestArticles('interview');
    $latestOther = getLatestArticles('other');
?>
<div class="container">
    <h2>Latest reviews</h2>
    <div class = "row">
        <?php foreach($latestReviews as $a) : ?>
            <div class = "col">
                <a href="index.php?P=article&A=<?=$a['id']; ?>">
                    <div class="card" style="width: 15rem;">
                        <img class="card-img-top" src="<?=$a['banner']?>" alt="Card image cap">
                        <div class="card-body">
                            <h5 class = "card-title"><?=$a['title']?></h5>
                            <p class="card-text"></p>
                            <p><?=$a['username']?></p>
                        </div>
                    </div>
                </a>
            </div>
        <?php endforeach; ?>
    </div>
    <a href="index.php?P=reviews">See more...</a>
    
</div>