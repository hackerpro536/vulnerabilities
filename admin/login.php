<?php
require '../inc/function.php';
require '../inc/config.php';
require '../inc/model.php';
$error='';
$model = new Model();
if($_SERVER["REQUEST_METHOD"] == "POST") {

    // username and password sent from form 
    $username = $_POST['username'];
    $password = $_POST['password']; 

    $login = $model->loginAdmin($username, $password);
    if($login)
    {
        header("location:" . ADMIN_URL);
    } else {
        $error = "Your Login Name or Password is invalid";
    }
}

if(users('admin_id')) header("location:" . ADMIN_URL);

include 'theme/login.tpl';