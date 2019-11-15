<?php
    session_start();
    include_once('conn.php');
    $username= $_SESSION['username'];
    if ($_SESSION['username']==null) {
         echo " '<script>alert('游客不能发布帖子请注册登录！');window.location.href='../reply.html?id=$_SESSION[id]';</script>";
          return false;
     }
    

    $content=$_POST['content'];
    $postid=$_SESSION['id'];
    date_default_timezone_set('PRC');
    $time=date("Y-m-d H:i:s");
    if ($content!=null) {
     $sql_r="insert into reply(username_reply,content_reply,time_reply,postid)
     value('$username','$content','$time','$postid')";
     $query=mysqli_query($conn,$sql_r);
     if ($query) {
 
          echo "<script>alert('发布成功');window.location.href='../reply.html?id=$_SESSION[id]';</script>";
     }
     else {
          echo "<script>alert('发布失败请重新稍后重试！');window.location.href='../reply/reply.php?id=$_SESSION[id]';</script>";
     }
    }else {
     echo "<script>alert('发布内容不能为空');window.location.href='../reply/reply.php?id=$_SESSION[id]';</script>";
    }
    
?>