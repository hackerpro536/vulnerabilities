<?php
require '../inc/function.php';
require '../inc/config.php';
require '../inc/model.php';
checkLogin();
$msg = '';
if($data = $_POST)
{
    $model = new Model();
    $id = $data['id'];
    unset($data['id']);
    $password = md5($data['password']);
    $data['password'] = $password;
    $edit = $model->editUser($data, $id);
    $msg = "Error: Can't eidt  users!";
    if($edit) {
        $msg = "Successfull: Your password has been change!";
    }
}

include 'theme/users.tpl';