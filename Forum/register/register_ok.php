<?php
    session_start();
    include_once("../conn/conn.php");
    if (isset($_POST['submit'])) {
        $username=$_POST['username'];
        $password=$_POST['password'];
        $name=$_POST['name'];
        $sex=$_POST['sex'];
        $birthday=$_POST['birthday'];
        $user_tel=$_POST['tel'];
        $qq=$_POST['QQ'];
        $email=$_POST['email'];
        $user_address=$_POST['address'];
        if (($username&&$password&&$sex)!=null) {
            $query="select * from f_user where username='$username'";
            $result=mysqli_query($conn,$query);
            if (mysqli_num_rows($result)>0) {
                echo "<script>alert('".$username."已经被注册了!');
                window.location.href='../register/register.html';</script>";;
            }else {
                $passwords=md5($password);
                $query="insert into f_user(username,name,password,sex,birthday,user_tel,user_address,qq,email)
                value('$username','$name','$passwords','$sex','$birthday','$user_tel','$user_address','$qq','$email')";
                if (mysqli_query($conn,$query)) {
                    echo "<script>alert('用户注册成功，点击确定返回登录');
                    window.location.href='../login/login.html';</script>";
                }else{
                    echo "<script>alert('用户注册失败！请完整填写，至少输入用户名，密码，性别');
                    window.location.href='../register/register.html';</script>";
                    }
                }
        }
        else {
            echo "<script>alert('注册信息不完整至少输入用户名，密码，性别');
                    window.location.href='../register/register.html';</script>";
                }
       
    }
        
?>