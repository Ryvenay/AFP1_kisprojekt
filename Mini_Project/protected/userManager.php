<?php
function IsUserLoggedIn()
{
	return $_SESSION != null && array_key_exists('uid', $_SESSION) && is_numeric($_SESSION['uid']);
}

function UserLogout()
{
	session_unset();
	session_destroy();
	header('Location: index.php');
}

function UserLogin($username, $password)
{
	$query = "SELECT id, username FROM users WHERE username = :username AND password = :password";
	$params =
	[ ':username' => $username,
	  ':password' => sha1($password]);
	require_once DATABASE_CONTROLLER;
	$record = getRecord($query, $params);
	if(!empty($record))
	{
		$_SESSION['uid'] = $record['id'];
		$_SESSION['username'] = $record['username'];
		header('Location: index.php'); 
	}
	return false;
	
}

?>