<?php 
    require_once ARTICLE_MANAGER;
    $featured = getFeaturedArticles();
    $latestReviews = getLatestArticles('review');
    $latestInterviews = getLatestArticles('interview');
    $latestOther = getLatestArticles('other');
?>

<?php 
    if (array_key_exists('D', $_GET) && !empty($_GET['D']) && $_GET['D'] == "success") {
        echo '<div class="alert alert-success" role="alert">Delete successfull!</div>';
    }
?>

<div id="carousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel" data-slide-to="0" class="active"></li>
    <li data-target="#carousel" data-slide-to="1"></li>
    <li data-target="#carousel" data-slide-to="2"></li>
  </ol>
  
  <div class="carousel-inner">
      <?php $first = true; ?>
	<?php foreach ($featured as $f): ?>
    <div class="carousel-item <?=($first==true ? "active" : "") ?>">
      <img src="<?=$f['banner']?>" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5><?=$f['title']; ?></h5>
      </div>
    </div>
    <?php $first = false; ?>
	<?php endforeach;?>
  </div>
  
  <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<hr>
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
<hr>
<div class="container">
    <h2>Latest interviews</h2>
    <div class = "row">
        <?php foreach($latestInterviews as $i) : ?>
            <div class = "col">
                <a href="index.php?P=article&A=<?=$i['id']; ?>">
                    <div class="card" style="width: 15rem;">
                        <img class="card-img-top" src="<?=$i['banner']?>" alt="Card image cap">
                        <div class="card-body">
                            <h5 class = "card-title"><?=$i['title']?></h5>
                            <p class="card-text"></p>
                            <?=$i['username']?>
                        </div>
                    </div>
                </a>
            </div>
        <?php endforeach; ?>
    </div>
    <a href="index.php?P=interviews">See more...</a>
    
</div>
<hr>
<div class="container">
    <h2>Other articles</h2>
    <div class = "row">
        <?php foreach($latestOther as $o) : ?>
            <div class = "col">
                <a href="index.php?P=article&A=<?=$o['id']; ?>">
                    <div class="card" style="width: 15rem;">
                        <img class="card-img-top" src="<?=$o['banner']?>" alt="Card image cap">
                        <div class="card-body" style="width: 15rem;">
                            <h5 class = "card-title"><?=$o['title']?></h5>
                            <p class="card-text"></p>
                            <?=$o['username']?>
                        </div>
                    </div>
                </a>
            </div>
        <?php endforeach; ?>
    </div>
    <a href="index.php?P=other">See more...</a>
    
</div>