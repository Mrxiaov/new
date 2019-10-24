function login() { 
    var username = document.getElementById('username'); 
    var password = document.getElementById('password'); 
    var ver_code = document.getElementById('ver_code'); 
    if (username.value == "") { 
        alert("用户名不能为空，请重新输入。"); 
        password.value = ""; 
        username.focus(); 
        username.select(); 
    } else if (password.value == "") { 
        alert("密码不能为空，请重新输入。"); 
        password.focus(); 
        password.select(); 
    } else if (ver_code.value == "") { 
        alert("验证码不能为空，请重新输入。"); 
        ver_code.focus(); 
        ver_code.select(); 
    } 
    return false; 
}
