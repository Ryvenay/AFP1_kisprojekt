<?php 
    require_once ARTICLE_MANAGER;
    $feartured = getFeaturedArticles();
    $latestReviews = getLatestArticles('review');
    $latestInterviews = getLatestArticles('interview');
    $latestOther = getLatestArticles('other');
?>

<?php foreach($latestReviews as $a) : ?>
				<div class="container">
					<div class="card" style="width: 60rem;">
						<img class="card-img-top" src="<?=$a['banner']?>" alt="Card image cap">
						<div class="card-body">
						<p><?=$a['title']?></p>
						<p class="card-text"><?=$a['content']?></p>
						<p><?=$a['author']?></p>
						</div>
					</div>
				</div>
<?php endforeach; ?>