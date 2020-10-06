<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) 
{
  $postData =
  [ 'username' => $_POST['username'], 'password' => $_POST['password']];

  if(empty($postData['username']) || empty($postData['password']))
  {
    echo "Username or password is missing!";
  }
  else if(!UserLogin($postData['username'], $postData['password']))
  {
    echo "Wrong username or password!";
  }
  $postData['password'] = "";
}
?>
<div class="container">
<h1 class="h1edit"> Login </h1>
<hr>
<form method="post">
  <div class="form-group">
    <label for="loginUsername">Username</label>
    <input type="text" class="form-control" id="loginUsername" aria-describedby="usernameHelp" name="username" value="<?= isset($postData) ? $postData['username'] : '';?>">
  </div>
  <div class="form-group">
    <label for="loginPassword">Password</label>
    <input type="password" class="form-control" id="loginPassword" name="password" value="">
  </div>
  <div>
  <button id="genny" type="submit" class="btn btn-primary" name="login">Login</button>
  </div>
</form>
</div>