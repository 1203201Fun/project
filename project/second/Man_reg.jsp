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
  <div id="admin">
  <div style="height:10px"></div>
  <div style="height:25px; margin-left:auto; margin-right:auto; width:80%">
  <font face="楷体" size="+1">
  当前页面：主页 > 设备登记
  </font>
  </div>
  <div style="margin-top:20px"></div>
  <font face="楷体" size="+1">
  <div style="width:60%;margin-left:auto; margin-right:auto;height:45px"><div style="float:left">设备查询:</div>
  <s:form action="newsearch">
  <div style="float:left;margin-left:10px; margin-top:-4px">
  <select name="newkind">
  <option value="device">设备名称</option>
  <option value="recipienter">领用人</option>
  <option value="birthday">出厂日期</option>
  <option value="factory">厂家</option>
  <option value="department">部门</option>
  <option value="pin">PIN码</option>
  <option value="usefor">用途</option>
  <option value="price">价格</option>
  <option value="projid">项目编号</option>
  </select>
  </div>
  <div style="float:left;width:250px;margin-top:-6px" align="center">
  <input style="background:#F9F9F9;border:0px; height:20px" type="text" name="newtemp">
  <input style="margin-left:10px" type="image" src="1120.png" height="20" width="20">
  </div>
  </s:form>
  </div>
  </font>

  <table id="adm_user" border="2px" cellspacing="0">
  <caption style="height:30px"><font face="楷体" size="4px">设备入库申请</font></caption>
  <tr align="center" height="40px">
      <td width="142px">名称</td>
      <td width="142px">管理类型</td>
      <td width="142px">领用人</td>
      <td width="142px">PIN码</td>
      <td width="142px">购买日期</td>
      <td width="142px">价格</td>
      <td width="100px">审批</td>
    </tr>
    <s:iterator value="list2" status="st">
    <tr align="center" height="40px">
      <td width="142px"><s:property value="device"/></td>
      <td width="142px"><s:property value="managetype"/></td>
      <td width="142px"><s:property value="recipienter"/></td>
      <td width="142px"><s:property value="pin"/></td>
      <td width="142px"><s:property value="buydate"/></td>
      <td width="142px"><s:property value="price"/></td>
      <td width="100px">
      <div style="width:100px; float:inherit;height:40px">
      <s:form action="view" target="_blank">
      <input type="hidden" name="pin" value="${ pin }">
      <input onclick="getCalendar(this)" style="width:100%;height:100%; border:0px;background:#F9F9F9;cursor:hand" type="submit" value="查看">
      </s:form>
      </div>
      </td>
      </tr>
    </s:iterator>
  </table>
  </div>
  </body>
</html>
