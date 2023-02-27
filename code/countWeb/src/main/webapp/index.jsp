<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/login.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/font-awesome.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css"/>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
  <title>登录页面</title>
</head>
<body>
<div class="container" style="height: 500px" onsubmit="return login()">
  <form action="#" method="post" >
    <ul>
      <li><h2><font color=red><font size=6>图书管理系统</font></font></h2></li>
      <li><i class="fa fa-user-o" aria-hidden="true"></i><label for="username"></label><input
              type="text" required
              placeholder="用户名"
              name="username"
              id="username"/></li>
      <li><i class="fa fa-unlock-alt" aria-hidden="true"></i><label for="password"></label><input
              type="password"
              required
              placeholder="密码"
              name="password"
              id="password"/>
      </li>
      <li><input type="submit" value="登录"/></li>
      <li><input type="submit" value="注册"/></li>
    </ul>
  </form>
  <div class="copyright">&copy; 用户登录</div>
  

  <script type="text/javascript" >

      function login(){
         let username = document.getElementById('username').value
         let password = document.getElementById('password').value
         if (username === 'admin' && password === '123'){
           location.href = '${pageContext.request.contextPath}/main.jsp'
         } else {
           alert('账号或密码错误')
         }
         return false
      }



  </script>


</div>
</body>
</html>

