<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息补充</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="信息补充,信息,补充">
	<meta http-equiv="description" content="信息补充">
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
  		<li><a href="mangerShow.action?order=1"><b>简介</b></a></li>
        <li><a href="mangerShow.action?order=2"><b>用户管理</b></a></li>
        <li><a href="mangerShow.action?order=3"><b>设备登记</b></a></li>
        <li><a href="mangerShow.action?order=4"><b>设备情况</b></a></li>
        <li><a href="mangerShow.action?order=5"><b>信息补充</b></a></li>
          <div style="height:35px; line-height:40px"><a href="mangerShow.action?order=6" style="text-decoration:none; font-size:13px;color:#E6E6E6"><b>返回</b></a></div>
  	</ul>
  </div>
  <div id="admin" style="overflow:scroll">
  <div style="height:10px"></div>
  <div style="height:25px; margin-left:auto; margin-right:auto; width:80%">
  <font face="楷体" size="+1">
  当前页面：主页 > 信息补充
  </font>
  </div>
  <table border="2px" id="adm_user">
  <caption style="height:30px"><font face="楷体" size="4px">用户补充信息</font></caption>
  <tr align="center" height="40px">
      <td width="167px">设备名</td>
      <td width="167px">地址</td>
      <td width="167px">详情</td>
      <td width="167px">数量</td>
      <td width="167px">更新</td>
    </tr>
    <s:iterator value="list4" status="st">
    <tr align="center" height="40px">
      <td width="167px"><s:property value="tpname"/></td>
      <td width="167px"><s:property value="tpadress"/></td>
      <td width="167px"><s:property value="tpdetail"/></td>
      <td width="167px"><s:property value="tpnum"/></td>
       <td width="167px">
       <div style="width:50%; float:left; height:28px">
      <s:form action="add">
      <input type="hidden" name="fw_name" value="${ tpname }">
      <input type="hidden" name="fw_tp" value="true">
      <input type="submit" value="更新">
      </s:form>
      </div>
      <div style="width:50%; float:right; height:28px">
      <s:form action="add">
      <input type="hidden" name="fw_name" value="${ tpname }">
      <input type="hidden" name="fw_tp" value="wrong">
      <input type="submit" value="删除">
      </s:form>
      </div>
      </td>
      </tr>
    </s:iterator>
  </table>
  </div>
  </body>
</html>











