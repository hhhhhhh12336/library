<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
  <meta http-equiv="fefresh" content="1"/>
  <style>
.div3{
	background-image: linear-gradient(-225deg, #7DE2FC 0%, #B9B6E5 100%);
	border:solid 1px black;
	width:100%;
	height:100%;
	line-height:150%


   
}
</style>
  </head>
  <body>
  <div class="div3">
  
    <%
    request.setCharacterEncoding("utf-8");
    if(request.getParameter("nameSession")!=null)
    {session.setAttribute("nameSession",request.getParameter("nameSession").toString());}
    String sessionID=session.getId();
    StringBuffer users=new StringBuffer();
       if(application.getAttribute("count")!=null)
        {
        	users=users.append(application.getAttribute("users").toString());
        	if(users.indexOf(sessionID)==-1){
        	session.setAttribute("isNew","true");
            int  userCount= Integer.parseInt(application.getAttribute("count").toString());
             userCount++;
             application.setAttribute("count",new Integer(userCount));
				users=users.append("<br>"+sessionID);
				application.setAttribute("users",users.toString());
        	}
        }
        else
        {
        	users=users.append("<br>"+sessionID);
       		application.setAttribute("users", users.toString());
        	application.setAttribute("count", "1");
            
        }
        //获取默认颜色
       String select="black";
       if(request.getParameter("Color")!=null)
		select=request.getParameter("Color").toString();
		request.setAttribute("select",select);
		//确定用户次序
		int userId=1;
		String[]userss=users.toString().split("<br>");
		for(int i=0;i<userss.length;i++){
			if(userss[i].equals(sessionID)){
				userId=i;
				break;
			}
		}
       %>
      
            欢迎<%=(String)request.getSession().getAttribute("nameSession") %>来到聊天室！
        <jsp:include page="view.jsp" />
        <form action="cotainer.jsp" method="post">
        <input type="text" name="message" placeholder="输入聊天内容" style="width:250px">
        <input type="hidden" name="send" value="true">
        <input type="submit" value="发送"> 
        </form>
        <form action="cotainer.jsp">
       	<input type="hidden" name="clear" value="true">
        	<input type="submit" value="清空"></form>
        	 <form action="cotainer.jsp">
       	<input type="hidden" name="flush" value="true">
        	<input type="submit" value="刷新"></form>
        
       </div> 
  </body>
</html>
