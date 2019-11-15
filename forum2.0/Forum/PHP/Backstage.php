
<?php
header('content-type:application/json;charset=utf8');
session_start();
include_once("../PHP/conn.php");
$sql = "select * from f_post ";
$query = mysqli_query($conn, $sql);
$resluts = [];
while ($res = mysqli_fetch_array($query)) {
    $_SESSION['id'] = $res[0];
    $resluts[] = $res;
}
if ($resluts) {
    echo json_encode($resluts);
} else {
    echo mysql_error();
}

?>  
