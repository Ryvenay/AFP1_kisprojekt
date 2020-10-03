<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) 
{
  $postData =
  [ 'email' => $_POST['username'], 'password' => $_POST['password']];

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