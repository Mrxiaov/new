<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<?php 
    session_start(); 
    include_once ("../conn/conn.php");
    $username = $_POST['username']; 
    $password = $_POST['password']; 
    $ver_code=$_POST['ver_code']; //验证验证码 
    $passwords=md5($_POST['password']);
    if (strtolower($ver_code)==$_SESSION['authcode']){
        if (isset($username)&&$password!=null) {
            $sql="select * from f_user where username='$username'";
            $select=mysqli_query($conn,$sql);
            $res=mysqli_fetch_array($select);
            if (!$select) {
                echo("Error: %s\n". mysqli_error($conn));
                exit();
            }
            if($passwords==$res['password']){  //验证密码是否正确
                $_SESSION['username']=$_POST['username']; 
                //
                if($res['admin']==1){//验证当前登录用户是不是管理员，是管理跳转后台
                    echo "<script>alert('管理员登录成功');window.location.href='../Backstage/Backstage.php';</script>";
                }else{//不是管理 ，是用户则跳转到论坛主页
                    echo "<script>alert('登录成功');window.location.href='../Home_page/Home_page.php';</script>";
                }
            }else{//密码不对则跳回登录页面
                echo "<script>alert('用户名或密码不正确!');window.location.href='../login/login.html';</script>";
            }
        }
        }else{ 
           echo "<script>alert('验证码错误!');window.location.href='../login/login.html';</script>";
        } 
?>