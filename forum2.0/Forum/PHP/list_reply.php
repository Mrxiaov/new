<?php 
    header('content-type:application/json;charset=utf8');
    session_start();
    include_once("conn.php");
    $_SESSION['id']=$_GET['id'];
    $resluts = array();
    $sql="select * from f_post where id=$_GET[id] ";//通过get方法获取主页传回的具体的帖子id 拼接sql语句
    $query=mysqli_query($conn,$sql);
    while ($res=mysqli_fetch_array($query)) {
       $resluts[] = $res;
    }
    
    echo $res;
    $sql_r="select distinct reply.Id, reply.content_reply ,reply.username_reply ,reply.time_reply
    from f_post CROSS JOIN reply where reply.postid =$_GET[id]";
    $query_r=mysqli_query($conn,$sql_r);
    
    while ($res_r=mysqli_fetch_array($query_r)) {
        array_push($resluts,$res_r) ;
    }
  
    if ($resluts) {

        echo json_encode($resluts);
        
    }else {
        echo mysql_error();
    } 
?>