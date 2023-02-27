<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginFail.jsp' starting page</title>
    
    
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

  </head>
  
  <body background="image/bg.jpg">
    <br>
      <br>
           <h1>用户名和密码不匹配，请重新登陆!</h1>
           <a href="Login.jsp">重新登陆</a>
  </body>
</html>