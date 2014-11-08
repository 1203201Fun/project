<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设备登记</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="设备登记,登记">
	<meta http-equiv="description" content="设备登记">
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="image/CSS/top.css" rel="stylesheet" type="text/css">
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <style type="text/css">
    #lxg{
	margin-top:0px;
	width:80%;
	margin-left:auto;
	margin-right:auto;
	}
	#lxg td{
	font-family:楷体;
	font-size:20px;
	color:black;
	font-weight:400;
	}
    </style>
  </head>
  <body bgcolor="#2F2F2F">
  
    <div id="menu" align="center">
  	<ul>
  		<li><a href="mangerShow.action?order=1"><b>简介</b></a></li>
        <li><a href="mangerShow.action?order=2"><b>用户管理</b></a></li>
        <li><a href="mangerShow.action?order=3"><b>设备登记</b></a></li>
        <li><a href="mangerShow.action?order=4"><b>设备情况</b></a></li>
        <li><a href="mangerShow.action?order=5"><b>信息补充</b></a></li>
          <div style="height:35px; line-height:40px"><a href="mangerShow.action?order=6" style="text-decoration:none; font-size:13px;color:#E6E6E6"><b>返回</b></a></div>
  	</ul>
  </div>
  <div id="admin">
  <div style="height:10px"></div>
  <div style="height:25px; margin-left:auto; margin-right:auto; width:80%">
  <font face="楷体" size="+1">
  当前页面：主页 > 设备登记
  </font>
  </div>
  <div style="margin-top:80px" id="lxg">
  <s:form action="plus">
  <table align="center">
  <tr>
  <td>设备名：<input type="text" name="devname"></td>
  </tr>
  <tr>
  <td>地&nbsp;  址:&nbsp;<input type="text" name="devadress"></td>
  </tr>
  <tr>
  <td>数&nbsp; 量:&nbsp;<input type="text" name="devnum"></td>
  </tr>
  <tr>
  <td>详&nbsp; 情:&nbsp;<input type="text" name="devdetail"></td>
  </tr>
  <tr>
  <td>分&nbsp; 类:&nbsp;<input type="text" name="kind"></td>
  </tr>
  <tr>
  <td>负责人：<input type="text" name="devperson"></td>
  </tr>
  <tr height="15px"><td></td></tr>
  <tr align="right">
  <td><input type="submit" value="提交"></td>
  </tr>
  </table>
   </s:form>
  </div>
  </div>
  </body>
</html>
