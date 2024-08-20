<?php

include "user.php";
include "connect.php";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

$username = $_POST['username'];
$password = $_POST['password'];
$user = User::login($username, $password);

if ($user) {
  
  echo "Login successful!";
   header('Location: show_posts.php');
} else {
  echo "Invalid username or password.";
}
}
?>
