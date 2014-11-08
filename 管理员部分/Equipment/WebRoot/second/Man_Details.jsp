<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设备情况</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="设备情况,设备详情,详情">
	<meta http-equiv="description" content="设备情况">
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
  当前页面：主页 > 设备情况
  </font>
  <div style=" margin-top:20px"></div>
  </div>
  <div>
  <table border="2px" id="adm_user">
  <caption style="height:30px"><font face="楷体" size="+2">设备借出</font></caption>
  <tr align="center" height="40px">
      <td width="167px">设备名</td>
      <td width="167px">借用人</td>
      <td width="167px">联系方式</td>
      <td width="167px">借用时间</td>
      <td width="167px">归还</td>
    </tr>
    <s:iterator value="list2" status="st">
    <tr align="center" height="40px">
      <td width="167px"><s:property value="devname"/></td>
      <td width="167px"><s:property value="user"/></td>
      <td width="167px"><s:property value="userphone"/></td>
      <td width="167px"><s:property value="borrowdate"/></td>
      <td width="167px"> <div style="width:50px; float:inherit; height:28px">
      <s:form action="revert">
      <input type="hidden" name="name_tp" value="${ devname }">
      <input type="submit" value="归还">
      </s:form>
      </div></td>
      </tr>
    </s:iterator>
  </table>
  <table border="2px" id="adm_user">
  <caption style="height:30px"><font face="楷体" size="+2">设备在库</font></caption>
  <tr align="center" height="40px">
      <td width="160px">设备名</td>
      <td width="160px">位置</td>
      <td width="160px">负责人</td>
      <td width="160px">可用数量</td>
      <td width="160px">详情</td>
      <td width="160px">报修总数</td>
    </tr>
    <s:iterator value="list3" status="st">
    <tr align="center" height="40px">
      <td width="160px"><s:property value="devname"/></td>
      <td width="160px"><s:property value="devadress"/></td>
      <td width="160px"><s:property value="devperson"/></td>
      <td width="160px"><s:property value="devnum"/></td>
      <td width="160px"><s:property value="devdetail"/></td>
      <td width="160px"><s:property value="devflag"/></td>
      </tr>
    </s:iterator>
  </table>
  <table border="2px" id="adm_user">
  <caption style="height:30px"><font face="楷体" size="+2">设备报修</font></caption>
  <tr align="center" height="40px">
      <td width="160px">设备名</td>
      <td width="160px">报修人</td>
      <td width="160px">报修时间</td>
      <td width="160px">编号</td>
      <td width="160px">故障描述</td>
      <td width="160px">清除</td>
    </tr>
    <s:iterator value="list5" status="st">
    <tr align="center" height="40px">
      <td width="160px"><s:property value="device"/></td>
      <td width="160px"><s:property value="reporter"/></td>
      <td width="160px"><s:property value="date"/></td>
      <td width="160px"><s:property value="id"/></td>
      <td width="160px"><s:property value="describle"/></td>
      <td width="167px"> <div style="width:100%; float:inherit; height:28px">
      <s:form action="Repair">
      <input type="hidden" name="devname_tp" value="${ device }">
      <input type="submit" value="清除报修">
      </s:form>
      </div></td>
      </tr>
    </s:iterator>
  </table>
  </div>
  </div>
  </body>
</html>











