<?php 
    require_once ARTICLE_MANAGER;
    $featured = getFeaturedArticles();
    $latestReviews = getLatestArticles('review');
    $latestInterviews = getLatestArticles('interview');
    $latestOther = getLatestArticles('other');
?>

<?php 
    if (array_key_exists('D', $_GET) && !empty($_GET['D']) && $_GET[''] == "success") {
        echo '<div class="alert alert-success" role="alert">Delete successfull!</div>';
    }
?>

<div class="carousel-inner">
	<?php foreach ($featured as $f): ?>
    <div class="item active">
	
      <img src="<?=$f['banner']?>">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>LA is always so much fun!</p>
      </div>
	  <?php endforeach;?>
    </div>
	

    <div class="item">
      <img src="chicago.jpg" alt="Chicago">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div>
    </div>

    <div class="item">
      <img src="ny.jpg" alt="New York">
      <div class="carousel-caption">
        <h3>New York</h3>
        <p>We love the Big Apple!</p>
      </div>
    </div>
  </div>
  

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
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