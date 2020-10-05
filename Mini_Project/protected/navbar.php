<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<div id="navbarformat" class="col aligne-self-start">
		<a class="navbar-brand" href="index.php?P=home">Home</a>
        <a class="navbar-brand" href="index.php?P=reviews">Reviews<span class="sr-only">(current)</span></a>
        <a class="navbar-brand" href="index.php?P=interviews">Interviews</a>
        <a class="navbar-brand" href="index.php?P=other">Other</a>
        <a class="navbar-brand" href="index.php?P=about_us">About us</a>
	</div>
	<div class="col aligne-self-end text-right">	
			<?php if(!IsUserLoggedIn()) :?>
				<a class="navbar-brand" href="index.php?P=login">Login<span class="sr-only">(current)</span></a>
			<?php endif; ?>
			<?php if(IsUserLoggedIn()) :?>		
				<a class="navbar-brand" href="index.php?P=addArticle">Add Article</a>
				<a class="navbar-brand" href="index.php?P=logout">Logout<span class="sr-only">(current)</span></a>
			<?php endif;?>
	</div>
</nav>