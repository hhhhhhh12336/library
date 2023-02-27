<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>好友列表 </title>
 <style type="text/css">
 body{
 background-image: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
 }
        p{
        background-image: linear-gradient(to top, #accbee 0%, #e7f0fd 100%);
            font-family:微软雅黑;
            font-size:14pt;
            color:red;
            background-color:gray;
        }
        li{
        background-image: linear-gradient(to top, #e6e9f0 0%, #eef1f5 100%);
        }
    </style>
</head>
<body>
<p>我的好友</p>
    <!--利用type属性设置无序列表项目符号为实心正方形-->
    <ul type="square"><!--这种方式已抛弃，建议使用CSS属性list-style-type-->
        <li><a href="index.jsp">小罗 </a></li>
        <li><a href="index.jsp">小刘</a></li>
        <li><a href="index.jsp">小陈</a></li>
        <li><a href="index.jsp">小马</a></li>
    </ul>
    <p>我的家人</p>
   <ul type="square"><!--这种方式已抛弃，建议使用CSS属性list-style-type-->
        <li><a href="index.jsp">爸爸</a></li>
        <li><a href="index.jsp">妈妈</a></li>
        <li><a href="index.jsp">女朋友</a></li>
        <li><a href="index.jsp">男朋友</a></li>
    </ul>
    <p>我的同学</p>
   <ul type="square"><!--这种方式已抛弃，建议使用CSS属性list-style-type-->
        <li><a href="index.jsp">赵同学</a></li>
        <li><a href="index.jsp">钱同学</a></li>
        <li><a href="index.jsp">孙同学</a></li>
        <li><a href="index.jsp">李同学</a></li>
    </ul>
    <p>陌生人</p>
   <ul type="square"><!--这种方式已抛弃，建议使用CSS属性list-style-type-->
        <li><a href="index.jsp">张某</a></li>
        <li><a href="index.jsp">石某</a></li>
        <li><a href="index.jsp">海某</a></li>
        <li><a href="index.jsp">贺某</a></li>
    </ul>
    <p>朋友</p>
   <ul type="square"><!--这种方式已抛弃，建议使用CSS属性list-style-type-->
        <li><a href="index.jsp">小明</a></li>
        <li><a href="index.jsp">小红</a></li>
        <li><a href="index.jsp">小军</a></li>
        <li><a href="index.jsp">小符</a></li>
    </ul>
</body>
</html>