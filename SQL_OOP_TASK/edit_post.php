<?php
require_once 'Post.php';

session_start();

$postid = $_GET['id'];


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $new_title = $_POST['title'];
  $new_content = $_POST['content'];
  $new_author = $_POST['author'];
  $post = Post::get_post($postid);
  
      if (!$post) {
        echo "Invalid post ID.";
        exit;
      }
    if($_SESSION['userid'] == $post['userid']) {
      Post::update_post($postid, $new_title, $new_content,$new_author);
    
      echo "Post updated successfully!";
      
     header('Location: show_posts.php');
       
      }
      else{
        echo "You don't have permission to edit this post.";
        exit;
      }
    
 
} else {
  $post = Post::get_post($postid);
  echo "<form method='post' action='#' enctype='multipart/form-data'>";
  echo "<label class='w3-tag w3-teal'>Title:</label><br>";
  echo "<input type='text' name='title' value='".$post['title']."'><br><br>";
  echo "<label class='w3-tag w3-teal'>Content:</label><br>";
  echo "<input type='text' name='content' value='".$post['content']."'><br><br>";
  echo "<label class='w3-tag w3-teal'>Author:</label><br>";
  echo "<input type='text' name='author' value='".$post['author']."'><br><br>";

  echo "<input class='w3-btn w3-teal' type='submit' value='Update'>";

  echo "</form>";
}
?>
