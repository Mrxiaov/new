<?php 
    session_start();
    include_once("../conn/conn.php");
    $_SESSION['id']=$_GET['id'];
    $sql="select * from f_post where id=$_SESSION[id] ";//通过get方法获取主页传回的具体的帖子id 拼接sql语句
    $query=mysqli_query($conn,$sql);
    $res=mysqli_fetch_array($query);
    $_SESSION['d_post_id']=$res[0];//detele id
    echo " <div class=list1>
    <div class=postid></div>
    
    <div class=username>楼主:".$res['username']."</div>
            
    <div class=theme>".$res['theme']."</div>
      
    <div class=content>".$res['content']."</div>
      
    <div class=time>".$res['time']."</div>"
    ?>
   <?php if (isset($_SESSION['username'])&&$res['username']==$_SESSION['username']) {
       echo" <a href=delete_p.php>删除</a>";//判断当前用户是不是发帖人 是显示删除键
   }?>
    <?php echo"
    </div>";
    $sql_r="select distinct reply.Id, reply.content ,reply.username ,reply.time 
    from f_post CROSS JOIN reply where $_GET[id]=reply.postid";
    $query_r=mysqli_query($conn,$sql_r);
    while ($res_r=mysqli_fetch_array($query_r)) {
        echo "<div class=list1>
    
    <div class=username>回帖人 :".$res_r['username']."</div>
            
    <div class=content>".$res_r['content']."</div>
      
    <div class=time>".$res_r['time']."</div>"
    ?>
    <?php
    $_SESSION['d_reply_id']=$res_r['Id'];
    if (isset($_SESSION['username'])&&
    ($res['username']==$_SESSION['username']||$res_r['username']==$_SESSION['username'])) {
        echo" <a href=delete_r.php>删除</a>";
    }?>
    <?php echo"
    </div>";
    }
   
?>