<?php
require 'inc/function.php';
require 'inc/config.php';
require 'inc/model.php';
$model = new Model();
$products = $model->getAllProduct();
include 'theme/index.tpl';