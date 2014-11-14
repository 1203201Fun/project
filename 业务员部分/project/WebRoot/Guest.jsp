<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE H
TML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Guest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<marquee hspace="200"> <h2>Hello&nbsp&nbsp<s:property value="userName"/>!</h2> </marquee>

  </head>
  
  <body align="center">
<table align="center"  width="1200">
  <p align="center">
  <a href="userInfo.action">
  	<img src="./picture/lead1.jpg" width="300" height="200">
  </a>
  <a href="guestSearch.jsp">
  	<img src="./picture/lead2.jpg" width="300" height="200">
  </a>
  </br>
  <a href="lendHistory.action">
  	<img src="./picture/lead3.jpg" width="300" height="200">
  </a>
  <a href="Welcom.jsp">
  	<img src="./picture/lead4.jpg" width="300" height="200">
  </a>
   </p>
   </table>
  </body>
</html>
