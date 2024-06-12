<?php
require '../inc/function.php';
require '../inc/config.php';
require '../inc/model.php';
checkLogin();
$model = new Model();
$products = $model->getAllProduct();
$action ='product';
if(isset($_GET['edit'])) {
    $action = 'product.edit';
    $item = $model->getItem($_GET['edit'], 'product');
}

if(isset($_GET['save'])) {
    $target_dir = dirname(__FILE__, 2) ."/uploads/";
    $base_name = basename($_FILES["images"]["name"]);
    $target_file = $target_dir . $base_name;
    $data = $_POST;
    
    if (move_uploaded_file($_FILES["images"]["tmp_name"], $target_file)) {
        $filename = "uploads/". $base_name;
        $data['images'] = $filename;
    } else {
        echo "Sorry, there  was an error uploading your file.";

    }
    $id = $data['id'];
    unset($data['id']);
    $sql = "UPDATE product SET ";

    foreach ($data as $key => $value) {
        $sql.="{$key} = '{$value}',";
    }
    $sql = trim($sql, ',');
    $sql .= " WHERE id=$id";
    $edit = $model->rawQuery($sql);
    if($edit)
    {
        header("location:" . ADMIN_URL . 'product.php');
    }
    
}
include "theme/{$action}.tpl";