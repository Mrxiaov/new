
<?php
 header('content-type:application/json;charset=utf8');
     //session_start(); 
     include_once("conn.php");
     $page=isset($_GET['p'])?$_GET['p']:1;//获取当前页
     $sql="select * from f_post limit ".($page-1) * 10 .",10 ";
     $query=mysqli_query($conn,$sql);
     $resluts = array();
     while($res=mysqli_fetch_array($query))
    {
     $resluts[] = $res;
        
    }
    
    if ($resluts) {
        # code...
        echo json_encode($resluts);
        
    }else {
        echo mysql_error();
    }
      
?>    