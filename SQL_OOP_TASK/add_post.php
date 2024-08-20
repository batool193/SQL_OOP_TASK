<?php
require_once 'Post.php';

session_start();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
$title = $_POST['title'];
$content = $_POST['content'];
$author = $_POST['author'];
$userid = $_SESSION['userid'];
  Post::add_post($title, $content,$author, $userid);

echo "Post added successfully!";
}else
echo "fill all info to add post.";
header('Location: show_posts.php');
exit;
?>
