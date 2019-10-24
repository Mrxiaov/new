<!DOCTYPE html>
<html>
<head>
    <title>管理员</title>
    <link rel="stylesheet" href="Backstage.css">
</head>
<body>
    <div class="box">
     <div class="list">
<?php
     session_start(); 
     include_once("../conn/conn.php");
     $sql="select * from f_post ";
     $query=mysqli_query($conn,$sql);
     while($res=mysqli_fetch_array($query))
     {
        $_SESSION['id']=$res[0];
      echo " 
      <div class=list1>
      <div class=postid>".$res[0]."</div>

      <div class=username>发帖人:<a href=#>".$res['username']."</a></div>
      
      <div class=theme><a href=#>".$res['theme']."</a></div>

      <div class=content>".$res['content']."</div>

      <div class=time>".$res['time']."</div>
      <a class=delete href=delete.php>删除 </a>
      </div>";
}
?>  
    </div>
    </div>
</body>
</html>