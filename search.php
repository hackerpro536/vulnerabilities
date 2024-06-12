<?php
require 'inc/function.php';
require 'inc/config.php';
require 'inc/model.php';
$model = new Model();
$keyword = $_GET['keyword'] ?? null;
if($keyword)
{
    $products = $model->searchProduct($keyword);
    include 'theme/product.search.tpl';  
} else {
    error404();
}
