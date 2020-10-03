<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) 
{
  $postData =
  [ 'email' => $_POST['username'], 'password' => $_POST['password']];

  if(empty($postData['username']) || empty($postData['password']))
  {
    echo "Hiányzó adatok!";
  }
  else if(!UserLogin($postData['username'], $postData['password']))
  {
    echo "Hibás email cím vagy jelszó!";
  }
  $postData['password'] = "";
}
?>