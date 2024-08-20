<?php

class User {
    private $username;
    private $password;

  
    public function __construct($username,$password) {
        
          $this->username = $username;
          $this->password = $password;

      }

   
    public static function register($username, $password) {
        $db = Database::getInstance();
$query= "INSERT INTO users (username, password) VALUES ( ?, ?)";
$params = array($username, $password);
$result = $db->executeQuery($query,$params);
if($result){
            return true;
        }else return false;
      }
  
    public static function login($username, $password) {
      $db = Database::getInstance();
        $query = "SELECT * FROM users WHERE username = '$username' AND password ='$password'";    
        $params = array();
        $result = $db->fetchOneResult($query, $params);
        if ($result) {
          session_start();
          $_SESSION['userid'] = $result['userid'];
          $_SESSION['username'] = $result['username'];
          return true;
        } else {
          return false;
        }
      }
    public static function logout() {
      session_start();
      session_destroy();
    }
  }