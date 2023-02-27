<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>聊天框</title>
<style>
.div2{
	border:solid 1px black;
	width:100%;
	height:642px;
	overflow-y:scroll; 
}</style>
</head>
<body>

		<%request.setCharacterEncoding("utf-8");   		 
		String userName = session.getAttribute("nameSession").toString();
		if(request.getParameter("color")!=null)
			session.setAttribute("Color",request.getParameter("color").toString());
		String color=session.getAttribute("Color").toString();
		request.setAttribute("select",color);
		StringBuffer view=new StringBuffer();
		view.append(session.getAttribute("view").toString());
		String chatTexts="";

			
			String isNew="false";//判断是不是新用户
			if(session.getAttribute("isNew")!=null){
				isNew=session.getAttribute("isNew").toString();
				session.setAttribute("isNew","false");}
			if(isNew.equals("false"))
			{ 
				String send="false";//发送
					if (request.getParameter("send") != null)
						send = "true";
					if(send.equals("true")){
					if (request.getParameter("message") != null) {
						String message = request.getParameter("message").toString();
					Date time = new Date();
					SimpleDateFormat sdf = new SimpleDateFormat("HH-mm-ss");
					String time1 = sdf.format(time);
					String chatText ="<br>"+ userName +"--"+ "["+time1+"]:" + message;
					view.append(chatText);
					session.setAttribute("view",view.toString());
					if (application.getAttribute("chatText") != null) {//view存到application中
						String ss=application.getAttribute("chatText").toString();					
						StringBuffer ssb=new StringBuffer();
						ssb.append(ss);
						ssb.append(chatText);
						application.setAttribute("chatText",ssb.toString());
					}
						else{
							application.setAttribute("chatText",view.toString());
						}
			}
					}
				//清空
					String clear="false";
					if (request.getParameter("clear") != null)
						clear = "true";
					if(clear.equals("true")){
						view.delete(0,view.length());
							}
					session.setAttribute("view",view.toString());
			//刷新
			String flush="false";
			if (request.getParameter("flush") != null)
				 flush ="true";
			if (flush.equals("true")) {
				if (application.getAttribute("chatText") != null) {
					 chatTexts=application.getAttribute("chatText").toString();
					 view.delete(0,view.length());
					 view.append(chatTexts);
					 session.setAttribute("view",view.toString());
				}
				
			}
			//加颜色
					String scolor=view.toString();
					String[]a=scolor.split("<br>");
					for(int i=0;i<a.length;i++){						
						if(a[i].contains((userName+"["))){
							if(a[i].contains("<span")){
								//问题一：字符串取子串
									a[i]=a[i].substring(0,a[i].length()-7);
									int index=a[i].lastIndexOf(">");
									a[i]=a[i].substring(index+1);
								}
							a[i]="<br><span style='color:"+color+"'>"+a[i]+"</span>";
						}
						else{
							a[i]="<br>"+a[i];
						}
						
						}
					StringBuffer sb=new StringBuffer();
						for(String s:a){
							sb.append(s);
						}
						view.delete(0,view.length());
						view.append(sb.toString());
					}
				
				
		%>
<div class="div2">
<%=view.toString() %>
</div>
</body>
</html>
