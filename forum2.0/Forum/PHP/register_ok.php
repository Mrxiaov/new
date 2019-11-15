<?php
session_start();
include_once("conn.php");

    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];

    $query = "select * from user where username='$username'";
    $result = mysqli_query($conn, $query);
    if (mysqli_num_rows($result) > 0) {
        echo "<script>alert('" . $username . "已经被注册了!');
                window.location.href='../index.html';</script>";
    } else {
        $passwords = md5($password);
        $query1 = "insert into user(username,password,email)
                value('$username','$passwords','$email')";
        if (mysqli_query($conn, $query1)) {
            // 
            echo "<script>alert('用户注册成功，点击确定返回登录');
                    window.location.href='../index.html';</script>";
        } else {
            echo "<script>alert('用户注册失败！');
                    window.location.href='../index.html';</script>";
        }
    }
?>