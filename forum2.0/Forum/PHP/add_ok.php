<?php
     session_start(); 
     include_once("conn.php");
     $username = $_SESSION['username'];
     date_default_timezone_set('PRC');
     $time=date("Y-m-d H:i:s");
     $theme=$_POST['theme'];
     $content=$_POST['content'];
     if ($_SESSION['username']==null) {
          echo "<script>alert('游客不能发布帖子请注册登录！');window.location.href='../index.html';</script>";
     }else {
          if (($content&&$theme)!=null) {
               $sql="insert into f_post(username,theme,content,time)
               value('$username','$theme','$content','$time')";
               $query=mysqli_query($conn,$sql);     
               echo "<script>alert('发布成功');window.location.href='../index.html';</script>";
          }
     }
?>