<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="用户管理,用户,管理">
	<meta http-equiv="description" content="用户管理">
    
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
         <div style="height:35px; line-height:40px"><a href="mangerShow.action?hc=6" style="text-decoration:none; font-size:13px;color:#E6E6E6"><b>返回</b></a></div>
  	</ul>
  </div>
  <div id="admin" style="overflow:scroll">
  <div style="height:10px"></div>
  <div style="height:25px; margin-left:auto; margin-right:auto; width:80%">
  <font face="楷体" size="+1">
  当前页面：主页 > 用户管理
  </font>
  </div>
  <div style="margin-top:20px"></div>
  <font face="楷体" size="+1">
  <div style="width:60%;margin-left:auto; margin-right:auto;height:20px"><div style="float:left">用户查询:</div>
  <s:form action="search">
  <div style="float:left;margin-left:10px; margin-top:-4px">
  <select name="userkind1">
  <option value="name">用户名</option>
  <option value="realname">实名</option>
  <option value="phone">手机号</option>
  <option value="email">邮箱</option>
  <option value="adress">单位</option>
  <option value="actor">权限</option>
  </select>
  </div>
  <div style="float:left;width:250px;margin-top:-6px" align="center">
  <input style="background:#F9F9F9;border:0px" type="text" name="usertemp1">
  <input style="margin-left:10px" type="image" src="1120.gif" height="20" width="20">
  </div>
  </s:form>
  <div style="float:left">
  <a href="register.action" style="text-decoration:none">增添用户</a>
  </div>
  </div>
  </font>
  
  <div style="margin-top:20px"></div>
  <table id="adm_user" border="2px" cellspacing="0" width="700px">
  <caption style="height:30px"><font face="楷体" size="4px">用户清单</font></caption>
     <tr align="center" height="40px">
      <td width="100px">用户名</td>
      <td width="100px">实名</td>
      <td width="100px">手机号</td>
      <td width="100px">邮箱</td>
      <td width="100px">单位</td>
      <td width="100px">权限</td>
      <td width="100px">操作</td>
    </tr>
    <s:iterator value="list" status="st">
    <tr align="center" height="40px">
      <td width="100px"><s:property value="username"/></td>
      <td width="100px"><s:property value="realname"/></td>
      <td width="100px"><s:property value="phone"/></td>
      <td width="100px"><s:property value="email"/></td>
      <td width="100px"><s:property value="adress"/></td>
      <td width="100px"><s:property value="actor"/></td>
      <td width="100px">
      <div style="width:100px; float:inherit;height:40px">
      <s:form action="userdelete">
       <input type="hidden" name="phone_tp" value="${ phone }">
       <input type="hidden" name="sel" value="one">
       <input onclick="getCalendar(this)" style="width:100%;height:100%; border:0px;background:#F9F9F9;cursor:hand" type="submit" value="删除">
      </s:form>
      </div>
      </td>
      </tr>
    </s:iterator>
  </table>
  </div>
  </body>
</html>
