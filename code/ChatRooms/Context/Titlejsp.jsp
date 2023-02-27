<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

.header1{
background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);
			text-align: center;
			height: 100px;
			outline-offset: 15px;
			border:1px solid black;
			margin: 0px;
			padding: 5px;
		}
</style>

<title>在线人数</title>
</head>
<body>
<div class="header1" align="center">
<h1>在线聊天室</h1>
欢迎<%=(String)request.getSession().getAttribute("nameSession") %>访问，
                     当前在线人数为<%=application.getAttribute("peopleOnline")%>人
                     </div>
</body>
</html>