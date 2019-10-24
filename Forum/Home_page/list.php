
<?php
     //session_start(); 
     include_once("../conn/conn.php");
     $page=isset($_GET['p'])?$_GET['p']:1;
     $sql="select * from f_post limit ".($page-1) * 5 .",5 ";
     $query=mysqli_query($conn,$sql);
     while($res=mysqli_fetch_array($query))
     {
      
      echo "<div class=list1>
      <div class=postid>".$res[0]."</div>

      <div class=username>发帖人:<a href=#>".$res['username']."</a></div>
      
      <div class=theme><a href=../reply/reply.php?id=$res[0]>".$res['theme']."</a></div>

      <div class=content>".$res['content']."</div>

      <div class=time>".$res['time']."</div>
      </div>";
}
      $page_sql="select count(*) from f_post";
      $res_page=mysqli_query($conn,$page_sql);
      $row=mysqli_fetch_array($res_page);
      $count=$row[0];
      $pagesize=ceil($count/5);
      if ($page<=1) {
            echo "<div class=page><a href='".$_SERVER['PHP_SELF']."?p=1'>上一页</a></div>";
      }else{
            echo "<div class=page><a href='".$_SERVER['PHP_SELF']."?p=".($page-1)."'>上一页</a></div>";
      }
      if ($page<$pagesize) {
            echo "<div class=page><a href='".$_SERVER['PHP_SELF']."?p=".($page+1)."'>下一页</a></div>";
      }else {
            echo "<div class=page><a href='".$_SERVER['PHP_SELF']."?p=".($pagesize)."'>下一页</a></div>";
      }
?>    