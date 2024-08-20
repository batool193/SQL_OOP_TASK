<?php
include "user.php";
include "connect.php";
// check if form has been submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // get form data
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    
    // create new User object
    // $user = new User($username,$password);
    
    // attempt to register user
    if(user::register($username,$password))
    {
        // redirect to login page on successful registration
        header('Location: login_form.php');
        exit;
    }else {
        echo "Error Registrition";
        exit;
    }
}

// display registration form

