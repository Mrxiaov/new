<?php
    header("Content-type:text/html;charset=utf-8");
    $host="127.0.0.1";
    $ures_name="root";
    $password="root";
    $dbName="forum";
    $conn=mysqli_connect($host,$ures_name,$password,$dbName)
        or die("连接失败".mysqli_error());
?>

