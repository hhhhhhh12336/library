<%@ page language="java" import="java.util.*,servlet.admin.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>数据备份与恢复</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="../../res/layui/dist/css/layui.css" tppabs="http://res.layui.com/layui/dist/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
  <link rel="stylesheet" href="./public/css/button.css" />
</head>

<body>
<div style="text-align:center;id="sendCode">
		<a href="data_add.jsp" target="_blank"><button type="button" class="layui-btn layui-btn-lg">数据备份</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="recover.jsp" target="_blank"><button>数据还原</button></a>
	</div>
</body>
</html>