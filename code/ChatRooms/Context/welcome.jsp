<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <style type="text/css">
    body {
	background-image: linear-gradient(to top, #dfe9f3 0%, white 100%);
}
    </style>
    <title>网上聊天室</title>
    
    

  </head>
   <frameset rows="150,*" cols="*" frameborder="no" border="0" framespacing="0">
         <frame src="Titlejsp.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame"/>      
      <frameset cols="213,*" frameborder="no" border="0" framespacing="0">
        <frame src="Fri.jsp" name="leftFrame" scrolling="auto" noresize="noresize" id="leftFrame"/>
        <frame src="cotainer.jsp" name="mainFrame" scrolling="No" id="mainFrame"/>
      </frameset>
   </frameset> 
  <body>
    
  </body>
</html>