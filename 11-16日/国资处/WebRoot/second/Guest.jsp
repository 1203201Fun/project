<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="用户">
	<meta http-equiv="description" content="用户界面">
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="../image/CSS/top.css" rel="stylesheet" type="text/css">
    <%@ taglib prefix="s" uri="/struts-tags" %>
  </head>
  <body bgcolor="#C993FF">
    <div id="menu" align="center">
  	<ul>
  		<li><a href="../index.jsp"><b>主页</b></a></li>
        <li><a href="#"><b>查询</b></a></li>
        <li><a href="#"><b>记录</b></a></li>
        <li><a href="#"><b>信息</b></a></li>
        <li><a>欢迎<s:property value="user_tp"/></a></li>
  	</ul>
  </div>
  </body>
</html>
