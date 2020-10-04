<?php 
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['edit'])) {
        if(array_key_exists('featured', $_POST) && $_POST['featured'] == "on") {
            $featured = true;
        }
        else {
            $featured = false;
        }
        $ID= $_POST['ID'];
        $postData = [
            'id' => $ID,
            'title' => $_POST['title'],
            'content' => $_POST['content'],
            'banner' => $_POST['banner'],
            'author' => $_SESSION['uid'],
            'genre' => $_POST['genre'],
            'category' => $_POST['category'],
            'featured' => $featured
        ];

        if (empty($postData['id']) || empty($postData['title']) || empty($postData['content']) || empty($postData['banner']) || empty($postData['author']) || 
            empty($postData['genre']) || empty($postData['category'])) {
            
            echo '<div class="alert alert-primary" role="alert">Missing data!</div>';
        }
        else if(!is_numeric($postData['author'])) {
            echo '<div class="alert alert-primary" role="alert">Incorrect author</div>';
        }
        else if($postData['featured'] != false && $postData['featured'] != true) {
            echo '<div class="alert alert-primary" role="alert">Incorrect featured data</div>';
        }
        else {
            require_once ARTICLE_MANAGER;
            $success = editArticle($postData['id'], $postData['title'], $postData['content'], $postData['banner'],  
                $postData['author'],  $postData['genre'],  $postData['category'],  $postData['featured']);
            if ($success) {
                echo '<div class="alert alert-success" role="alert">Success!</div>';
            }
            else
            {
                echo '<div class="alert alert-primary" role="alert">Error!</div>';
            }
        }
    }

    else if(!array_key_exists('A', $_GET) || empty($_GET['A'])) {
        header('Location: index.php');
    }
    else {
        require_once ARTICLE_MANAGER;
        $ID = $_GET['A'];
        $article = getArticleById($ID);
        if ($article == false) {
            header('Location: index.php');
        }
        $postData = [
            'id' => $ID,
            'title' => $article['title'],
            'content' => $article['content'],
            'banner' => $article['banner'],
            'author' => $_SESSION['uid'],
            'genre' => $article['genre'],
            'category' => $article['category'],
            'featured' => $article['featured']
        ];
    }
?>

<?php if (!isUserLoggedIn()): ?>
    <?php header('Location: index.php'); ?>
<?php else: ?>
<h1>Edit</h1>

<form method = "POST" enctype="multipart/form-data">
    <input type="hidden" id="articleId" name="ID" value=<?=$ID; ?>>
    <div class = "form-row justify-content-md-center">
        <div class = "form-group col-md-9">
            <label for ="articleTitle">Title:</label>
            <input type="text" class="form-control" id="articleTitle" name="title" value="<?=isset($postData) ? $postData['title'] : "";?>" required>
        </div>
    </div>
    <div class = "form-row justify-content-md-center">
        <div class = "form-group col-md-3">
            <label for ="articleBanner">Banner image:</label>
            <input type="text" class="form-control" id="articleBanner" name="banner" value="<?=isset($postData) ? $postData['banner'] : "";?>" required>
        </div>
        <div class = "form-group col-md-3">
            <label for ="articleGenre">Genre:</label>
            <input type="text" class="form-control" id="articleGenre" name="genre" value="<?=isset($postData) ? $postData['genre'] : "";?>" required>
        </div>
        <div class = "form-group col-md-3">
            <label for ="articleCategory">Category:</label>
            <select class="form-control" id="articleCategory" name = "category" value="<?=isset($postData) ? $postData['category'] : "";?>" required>
                <option>Review</option>
                <option>Interview</option>
                <option>Other</option>
            </select>
        </div>
    </div>
    <div class = "form-row justify-content-md-center">
        <div class = "form-group col-md-9">
            <label for="articleContent">Article:</label>
            <textarea class="form-control" id="articleContent" rows="30" name="content" required><?=isset($postData) ? $postData['content'] : ""; ?></textarea>
        </div>
    </div>
    <div class = "form-row justify-content-md-center">
        <div class = "form-group col-md-1">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="featured" id="articleFeatured" value="on" <?=isset($postData) ? ($postData['featured'] == true ? "checked" : "") : "";?>>
                <label class="form-check-label" for="articleFeatured">Featured</label>
            </div>
        </div>
    </div>
    <div class ="form-row justify-content-md-center">
        <div class="col-md-auto">
            <button type="submit" class="btn btn-primary" id="addButton" name="edit">Edit article</button>
        </div>
    </div>

</form>

<?php endif; ?>
