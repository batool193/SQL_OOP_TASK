<?php
include 'connect.php';
 class Post {
    protected $title;
    protected $content;
    protected $author;
    protected $userid;

    public function __construct($title, $content,$author, $userid) {
      $this->title = $title;
      $this->content = $content;
      $this->$author= $author;
      $this->userid = $userid;
    }
  
    public function set_title($title)
    {
        $this->title = $title;
    }
    public function set_content($content)
    {
        $this->content = $content;
    }
    public function set_author($author)
    {
        $this->author = $author;
    }
    public function get_title()
    {
        return $this->title;
    }
    public function get_content()
    {
        return $this->content;
    }
    public function get_author()
    {
        return $this->author;
    }
    public static function show_posts() {
      $db = Database::getInstance();
        $query = "SELECT * FROM posts";
        $params = array();
        $result = $db->fetchResults($query, $params);
        return $result;
    }  
    
    public static function add_post($title, $content,$author, $userid) {
        $db = Database::getInstance();
        $query = "INSERT INTO posts (title, content,author, userid) VALUES (?,?,?,?)";
         $params = array($title, $content,$author, $userid);
         $db->executeQuery($query,$params);     
       }
  

      public static function update_post($postid, $new_title, $new_content,$new_author) {
        $db = Database::getInstance();
        $query = "UPDATE posts SET title = ?, content = ? , author = ? WHERE postid = ? ";
         $params = array($new_title, $new_content,$new_author,$postid);
         $db->executeQuery($query,$params); 
      }

      public static function delete_post($postid) {
        $db = Database::getInstance();
        $query = "DELETE from posts WHERE postid =? ";
        $params = array($postid);
        $db->executeQuery($query,$params); 
      }

      public static function get_post($postid) {
        $db = Database::getInstance();
        $query = "SELECT * FROM posts WHERE postid = ? ";
        $params = array($postid);
        $result = $db->fetchOneResult($query, $params);
        return $result;
    }
// Get a user by their ID
public static function get_user($userid) {
    $db = Database::getInstance();
    $query = "SELECT * FROM users WHERE userid = ? ";
    $params = array($userid);
    $result = $db->fetchOneResult($query, $params);
    return $result;
}

  }
  



