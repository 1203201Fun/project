<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>系统简介</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="系统简介,管理员,简介">
	<meta http-equiv="description" content="系统简介">
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="image/CSS/top.css" rel="stylesheet" type="text/css">
    
    <%@ taglib prefix="s" uri="/struts-tags" %>
  
  </head>
  <body bgcolor="#2F2F2F">
  
    <div id="menu" align="center">
  	<ul>
  		<li><a href="mangerShow.action?hc=1"><b>简介</b></a></li>
        <li><a href="mangerShow.action?hc=2"><b>用户管理</b></a></li>
        <li><a href="mangerShow.action?hc=3"><b>设备登记</b></a></li>
        <li><a href="mangerShow.action?hc=4"><b>设备情况</b></a></li>
        <li><a href="mangerShow.action?hc=5"><b>信息管理</b></a></li>
        <div style="height:35px; line-height:40px"><a href="mangerShow.action?hc=6" style="text-decoration:none;font-size:13px; color:#E6E6E6"><b>返回</b></a></div>
  	</ul>
  </div>
  <div id="admin">
  <div style="height:10px"></div>
  <div style="height:25px; margin-left:auto; margin-right:auto; width:80%">
  <font face="楷体" size="+1">
  当前页面：公告
  </font>
  </div>
  
  </div>
  </body>
</html>











