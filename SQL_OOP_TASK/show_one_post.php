<center><a href="logout.php"><button>logout</button></a></center>
<br>
<br>
<?php
include 'Post.php';
session_start();

$postid = $_GET['id'];
if (!isset($_SESSION['userid'])) {
  header('Location: login_form.php');
}
$post = Post::get_post($postid);

  $user = Post::get_user($post['userid']);
  echo "<h3 class='w3-tag w3-teal'>Title :   " . $post['title'] . "</h3>";
  echo "<p class='w3-tag w3-teal'> Content :   " . $post['content'] . "</p>";
  echo "<p class='w3-tag w3-teal'>Author :   " . $post['author'] . "</p>";
  echo "<p class='w3-tag w3-teal'>Craeted At :   " . $post['created_at'] . "</p>";
  echo "<p class='w3-tag w3-teal'>Updated At :   " . $post['updated_at'] . "</p>";


  echo "<p class='w3-tag w3-teal'>Posted by: " . $user['username'] . "</p>";
  ?>



