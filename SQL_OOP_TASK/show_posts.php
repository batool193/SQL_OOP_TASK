<center><a href="logout.php"><button>logout</button></a></center>
<br>
<center><a href="add_post_form.php"><button>add post</button></a></center>
<br>
<?php
include 'Post.php';
session_start();
if (!isset($_SESSION['userid'])) {
  header('Location: login_form.php');
}
$posts = Post::show_posts();

foreach ($posts as $post) {
  $user = Post::get_user($post['userid']);
  echo "<h3>" . $post['title'] . "</h3>";
  echo "<p>" . $post['content'] . "</p>";
  echo "<p>" . $post['author'] . "</p>";

  echo "<p>Posted by: " . $user['username'] . "</p>";
  ?>
    <a class="w3-button w3-teal" href="show_one_post.php?id=<?php echo $post['postid'];?>"><button class="w3-btn w3-teal">Show</button></a>
    <a  class="w3-button w3-teal" href="edit_post.php?id=<?php echo $post['postid'];?>"><button class="w3-btn w3-teal">Edit</button></a>
<a class="w3-button w3-teal" href="delete_post.php?id=<?php echo $post['postid']; ?>"><button class="w3-btn w3-teal">delete</button></a>
<?php  }
  ?>
  <?php



