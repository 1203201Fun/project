<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设备管理系统注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="设备管理系统注册,管理注册">
	<meta http-equiv="description" content="设备管理系统注册">
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
     <%@ taglib prefix="s" uri="/struts-tags" %>
 	<link rel="stylesheet" href="image/CSS/login.css">

  </head>
  
  <body bgcolor="#F5F5F5">
  <div style="margin-top:50px">
  <font size="+3" face="楷体" color="#FFFFFF">
  <center><a href="index.jsp" style="text-decoration:none; color:black"><b>设  备  管  理  系  统  注  册</b></a></center>
  </font>
  </div>
  <div id="register">
  <center>
  <font face="楷体" size="24px">
  <s:form action="zhuce">
  <table>
  <tr height="40px">
  <td colspan="2">用户名：<input type="text" name="username"></td>
  </tr>
  <tr height="40px">
  <td colspan="2">密 码&nbsp;：<input type="text" name="password"></td>
  </tr>
  <tr align="center" height="40px">
  <td><input type="radio" name="actor" value="Admin">管理员</td>
  <td><input type="radio" name="actor" value="Guest">业务员</td>
  </tr>
  <tr height="40px">
  <td colspan="2">实 名&nbsp;：<input type="text" name="realname"></td>
  </tr>
  <tr height="40px">
  <td colspan="2">邮 箱&nbsp;：<input type="email" name="email"></td>
  </tr>
  <tr height="40px">
  <td colspan="2">手机号：<input type="tel" name="phone"></td>
  </tr>
  <tr height="40px">
  <td colspan="2">单 位&nbsp;：<input type="text" name="adress"></td>
  </tr>
  <tr align="center" height="40px">
  <td><input type="radio" name="sex" value="男">男</td>
  <td><input type="radio" name="sex" value="女">女</td>
  </tr>
  <tr align="right" height="40px">
  <td colspan="2"><input type="submit" value="注册"></td>
  </tr>
  </table>
  </s:form>
  </font>
  </center>
  </div>
  </body>
</html>










