<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <%@ taglib prefix="s" uri="/struts-tags" %>
  </head>
  
  <body bgcolor="#E6E6E6">
    <div style=" margin-left:30px; margin-right:30px">
    <font color=black face="微软雅黑">
    <center><font size="+3">错  误  提  示</font></center>
    <div style="height:20px"></div>
    <font size="+1">欢迎使用本系统！如果不幸跳转到了本页面，说明您操作有误，请根据以下提示正确使用！返回上一个页面，请按“返回”。</font><br>
    <div style="height:20px"></div>
    <font size="+1">1.登陆失败</font><br>
    <div style="height:10px"></div>
    &emsp;&emsp;请仔细检查您的用户名和密码是否正确，注意区分大小写！<br>
    <div style="height:20px"></div>
    <font size="+1">2.注册失败</font><br>
    <div style="height:10px"></div>
    &emsp;&emsp;请仔细检查每一项是否均填写，注意每一个电话号码、邮箱只能注册一次！<br>
    <div style="height:20px"></div>
    <font size="+1">3.增添设备失败</font><br>
    <div style="height:10px"></div>
    &emsp;&emsp;请仔细检查每一项是否均填写，已有设备不能在此编辑！<br>
    <div style="height:50px"></div>
    <div style="height:10px" align="center">
    <s:form action="back">
    <input type="image" src="return.png" height="128" width="128">
    </s:form>
    </div>
    </font>
    </div>
  </body>
</html>












