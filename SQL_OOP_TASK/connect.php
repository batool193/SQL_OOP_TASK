<?php
class Database {
  private static $instance;
  private $connection;

  private function __construct() {
      // Set database connection credentials
      $host = 'localhost';
      $username = 'root';
      $password = '';
      $database = 'blog_db';

      // Create a new database connection
      $this->connection = new mysqli($host, $username, $password, $database);

      // Check if connection was successful
      if ($this->connection->connect_error) {
          die('Database connection failed: ' . $this->connection->connect_error);
      }
   
}
    
public static function getInstance() {
  if (!isset(self::$instance)) {
      self::$instance = new Database();
  }

  return self::$instance;
}

public function getConnection() {
  return $this->connection;
}


public function executeQuery($query, $params = []) {
  $stmt = $this->connection->prepare($query);
  $types="";
     if ($params) {
     for($i=0;$i<count($params);$i++)
     {
      $currType = gettype($params[$i]);
     if($currType=="integer")
         $types= $types.'i';
        elseif($currType=="string")
        $types= $types.'s';
     }
     $stmt->bind_param($types, ...$params);
  }

  $stmt->execute();
  return $stmt;
}
public function fetchOneResult($query, $params = []) {
  $stmt = $this->executeQuery($query, $params);
  return $stmt->get_result()->fetch_assoc();
}

public function fetchResults($query, $params = []) {
  $stmt = $this->executeQuery($query, $params);
  return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
}

}
?>