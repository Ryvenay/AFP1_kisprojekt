<?php 
if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['add'])) {
    $postData = [
        'title' => $_POST['title'],
        'content' => $_POST['content'],
        'banner' => $_POST['banner'],
        'author' => $_POST['author'],
        'genre' => $_POST['genre'],
        'category' => $_POST['category'],
        'featured' => $_POST['featured'],

    ];

    if (empty($postData['title']) || empty($postData['content']) || empty($postData['banner']) || empty($postData['author']) || 
        empty($postData['genre']) || empty($postData['category']) || empty($postData['featured'])) {
        
        echo '<p>Missing data</p>';
    }
    else if(!is_numeric($postData['author'])) {
        echo '<p>incorrect author</p>';
    }
    else if($postData['featured'] != 0 && $postData['featured'] != 1) {
        echo '<p>incorrect data</p>'
    }
    else {
        require_once ARTICLE_MANAGER;
        addArticle($postData['title'], $postData['content'], $postData['banner'], $postData['author'],
        $postData['genre'], $postData['category'], $postData['featured']);
    }
}
?>
<?php if (!isUserLoggedIn()): ?>
    <?php header('Location: index.php'); ?>
<?php else: ?>



<?php endif; ?>
