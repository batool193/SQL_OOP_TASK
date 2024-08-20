<?php
require_once 'Post.php';

session_start();

$postid = $_GET['id'];

  $post = Post::get_post($postid);

  if (!$post) {
    echo "Invalid post ID.";
    exit;
  }
  
  
  if ($_SESSION['userid'] == $post['userid']) {
    Post::delete_post($postid);  
    echo "Post deleted successfully!";
    header('Location: show_posts.php');
     
  }
  else
  {
    echo "You don't have permission to delete this post.";
  exit;
  }
  
 



?>
