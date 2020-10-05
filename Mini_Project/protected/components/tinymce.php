<script src="https://cdn.tiny.cloud/1/t8y0vwt3xjxwrasjnjy5nc1tnj2xmqjhbdd2g3413iec2uez/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

<textarea class="form-control" id="articleContent" rows="30" name="content"><?=isset($postData) ? $postData['content'] : ""; ?></textarea>

<script type="text/javascript">
  tinymce.init({
    selector: '#articleContent',
    inline: false
  });
</script>