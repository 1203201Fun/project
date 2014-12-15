<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设备管理系统登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="设备管理系统登录,系统登录">
	<meta http-equiv="description" content="设备管理系统的登录">
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="image/CSS/login.css">
    <%@ taglib prefix="s" uri="/struts-tags" %>
  </head>
  
  <body bgcolor="#E6E6E6">
  <div style="margin-top:50px">
  <font size="+3" face="楷体">
  <center><a href="index.jsp" style="text-decoration:none; color:black"><b>请  您  先  登  陆  本  系  统  ！</b></a></center>
  </font>
  </div>
  <div id="log">
  <div style="height:70px"></div>
  <s:form action="login">
  <table id="tab" align="center">
  <tr height="80px" align="center">
  <td colspan="2"><b>username:</b><input type="text" name="username"></td>
  </tr>
  <tr height="50px" align="center">
  <td colspan="2"><b>password:</b><input type="password" name="password"></td>
  </tr>
  <tr height="50px" align="right">
  <td width="221">
  <input type="submit" value="登陆" size="24px">
  </td>
  <td width="95" align="center">
  <input type="reset" value="重置">
  </td>
  </tr>
  </table>
  </s:form>
  
  </div>
  </body>
</html>





