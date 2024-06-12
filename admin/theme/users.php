<?php
require '../inc/function.php';
require '../inc/config.php';
require '../inc/model.php';
checkLogin();
if(isset($_GET['logout'])) logOut();

include 'theme/users.tpl';