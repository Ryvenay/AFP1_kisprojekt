<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="index.php?P=home">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
		<?php if(!IsUserLoggedIn()) :?>
			<li class="nav-item active">
			<a class="navbar-brand" href="index.php?P=login">Login<span class="sr-only">(current)</span></a>
			</li>
		<?php endif; ?>
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="navbar-brand" href="index.php?P=reviews">Reviews<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="navbar-brand" href="index.php?P=interviews">Interviews</a>
      </li>
      <li class="nav-item">
        <a class="navbar-brand" href="index.php?P=other">Other</a>
      </li>
      <li class="nav-item">
        <a class="navbar-brand" href="index.php?P=about_us">About us</a>
      </li>
	  <?php if(IsUserLoggedIn()) :?>
		<li class="nav-item">
			<a class="navbar-brand" href="index.php?P=addArticle">Add Article</a>
		</li>
		<li class="nav-item active">
			<a class="navbar-brand" href="index.php?P=logout">Logout<span class="sr-only">(current)</span></a>
			</li>
		<?php endif;?>
    </ul>
  </div>
</nav>