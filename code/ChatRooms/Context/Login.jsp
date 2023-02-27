<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
    <style type="text/css">
        /*统一页面字体和大小*/
        body {
            background-image: linear-gradient(to top, #fff1eb 0%, #ace0f9 100%);
            background-size:100% 100%;
            background-repeat:no-repeat;
            height:900px;
            font-family: "Lucida Grande", "Lucida Sans Unicode", Verdana, Arial, Helvetica, sans-serif;
            font-size: 12px;
        }
        
        /*清除常用元素的边界、补白、边框默认样式*/
        p, h1, form, button {
            border: 0;
            margin: 0;
            padding: 0;
        }
        /*定义一个强制换行显示类*/
        .spacer {
            clear: both;
            height: 1px;
        }
        /*定义表单外框样式*/
        .myform {
            margin: 0 auto;
            width: 400px;
            padding: 14px;
        }
        /*定制当前表单样式*/
        #stylized {
            border: solid 2px #b7ddf2;
            background: #ebf4fb;
        }
            /*设计表单内div和p通用样式效果*/
            #stylized h1 {
                font-size: 14px;
                font-weight: bold;
                margin-bottom: 8px;
            }
 
            #stylized p {
                font-size: 11px;
                color: #666666;
                margin-bottom: 20px;
                border-bottom: solid 1px #b7ddf2;
                padding-bottom: 10px;
            }
 
            #stylized label { /*定义表单标签样式*/
                display: block;
                font-weight: bold;
                text-align: right;
                width: 140px;
                float: left;
            }
            /*定义小字体样式类*/
            #stylized .small {
                color: #666666;
                display: block;
                font-size: 11px;
                font-weight: normal;
                text-align: right;
                width: 140px;
            }
            /*统一输入文本框样式*/
            #stylized input {
                float: left;
                font-size: 12px;
                padding: 4px 2px;
                border: solid 1px #aacfe4;
                width: 200px;
                margin: 2px 0 20px 10px;
            }
            /*定义图形化按钮样式*/
            #stylized button {
                clear: both;
                margin-left: 150px;
                width: 125px;
                height: 31px;
                background: #666666 url(images/button.png) no-repeat;
                text-align: center;
                line-height: 31px;
                color: #FFFFFF;
                font-size: 11px;
                font-weight: bold;
            }
        /*设计表单内文本框和按钮在被激活和获取焦点状态下时，轮廓线的宽、样式和颜色*/
        input:focus, button:focus {
            outline: thick solid #b7ddf2;
        }
 
        input:active, button:active {
            outline: thick solid #aaa;
        }
        /*通过outlineoffset属性放大轮廓线*/
        input:active, button:active {
            outline-offset: 4px;
        }
 
        input:focus, button:focus {
            outline-offset: 4px;
        }
    </style>

<title>聊天室登录页面</title>
</head>
<body  >

<%
String username = "";
String password = "";
 Cookie[] cookies = request.getCookies();
 if(cookies!=null)
 for (int i = 0; i < cookies.length; i++) {//对cookies中的数据进行遍历，找到用户名、密码的数据          
         if ("username".equals(cookies[i].getName())) {          
             username = java.net.URLDecoder.decode(cookies[i].getValue(),"UTF-8");
         } else if ("password".equals(cookies[i].getName())) {
             password =  java.net.URLDecoder.decode(cookies[i].getValue(),"UTF-8");
         }
  }
%>

<%
StringBuffer view=new StringBuffer("");
session.setAttribute("view",view);
String color="balck";
session.setAttribute("Color",color);
%>



<div id="stylized" class="myform">
        <form id="form1" name="form1" method="post" action="Servlet">
            <div align="center">
            <h1>登录</h1>
            <p>请准确填写个人信息</p></div>
            <label>UserName <span class="small">姓名</span> </label>
            <input type="text" name="username" placeholder="请输入用户名"  value="<%=username%>" id="textfield">           
            <label>Password <span class="small">密码</span> </label>
            <input type="text" name="password" placeholder="请输入密码"  value="<%=password%>"  id="textfield">           
            <input type="checkbox" name="save_password" value="save"><label >记住信息</label>                        
            <button type="submit">登 录</button>
            <div class="spacer"></div>
</form>
</div> 
</body>
</html>