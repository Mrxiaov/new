<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>主页</title>
    <link href="Home_page.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--导航栏-->
    <div id="navigator">
        <div id="navigator-contaner">
          <ul class="nav-left">
            <li class="active"> <a href="">首页</a></li>
            <li class="active"> <a href=""></a></li>
            <li class="active"> <a href="">2</a></li>
            <li class="active"> <a href="">3</a></li>
          </ul>

          <div id="nav_search">
            <input type="search" value="搜索" id="search">
            <input type="submit" value="搜索" id="sub">
          </div>

          <div class="user" >当前用户:
            <a href="#" 
            ><?php session_start();
            if (isset($_SESSION['username'])) {
              $username=$_SESSION['username'];
              echo $username ."&nbsp";
              echo "<a href=../login/login_out.php>注销</a>";
            }else{echo "未登录";}
            ?></a>
          </div>

          <div class="login">
                  <li class="login"><a href="../login/login.html">登录</a></li>
                  <li class="register"><a href="../register/register.html">注册</a></li>
          </div>

        </div>
      </div>
</div>


<!--主体显示部分-->
      <div class="box">
          <div class="list"><?php  include_once("list.php");?></div>
      </div>

<!--侧边功能栏部分-->
      <div class="add">
        <a href="../add_forum/add.html"><img src="../image/add.png" alt="" title="发帖"></a>
        <a href="../Home_page/Home_page.php"><img src="../image/reload.png" alt="" title="刷新"></a>
        <a href="#"><img src="../image/top.png" alt="" title="TOP"></a>
      </div>
</body>
</html>