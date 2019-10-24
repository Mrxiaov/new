<?php 
include_once("../conn/conn.php");
session_start();
$_SESSION['username']=null;
$_SESSION['password']=null;
header("location: ../Home_page/Home_page.php");
?>
