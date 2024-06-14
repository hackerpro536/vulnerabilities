<?php
session_start();
// Define DIRECTORY_SEPARATOR constant
define('DS', DIRECTORY_SEPARATOR);
// Define root path folder
define('ROOT_PATH', dirname(__FILE__,2) . DS);
require_once 'constants.php';
$_SESSION['debug'] = $debug;
if(users('debug') == false)
{
    error_reporting(0);
}

if($stop)
{
    include ROOT_PATH .'theme/shutdown.tpl';  
    die;
}

function ddd($var)
{
    echo "<pre>";
    var_dump($var);
    echo "</pre>";
    die;
}


function d($var)
{
    echo "<pre>";
    var_dump($var);
    echo "</pre>";
}

function logCurrentURL() {
    $currentURL = $_SERVER['REQUEST_URI'];
    $queryParameters = $_SERVER['QUERY_STRING'];
    $logFile = 'log.txt';

    // Mở tệp tin log ở chế độ ghi thêm (append)
    $fileHandle = fopen($logFile, 'a');

    // Ghi URL và query parameters vào tệp tin log
    fwrite($fileHandle, $currentURL . '?' . $queryParameters . "\n");

    // Đóng tệp tin log
    fclose($fileHandle);
}


function checkLogin()
{
    if(isset($_SESSION['admin_id']))
    {
        return true;
    }
    header("location:" . BASE_URL . 'admin/login.php');
}


function users($key)
{
    return $_SESSION[$key] ?? null;
}

function logOut()
{
    session_destroy();
    unset($_SESSION['admin_id']);
    header("location:" . BASE_URL . 'admin/login.php');
}

function error404()
{
    include ROOT_PATH. 'theme/404.tpl';  
    die;
}