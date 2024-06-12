<?php
require 'inc/function.php';
require 'inc/config.php';
require 'inc/model.php';
$model = new Model();
$products = $model->getAllProduct(5);
$id = $_GET['id'] ?? null;
if($id)
{
    $product = $model->getDetailProduct($id);
    include 'theme/produc.detail.tpl';  
} else {
    error404();
}
