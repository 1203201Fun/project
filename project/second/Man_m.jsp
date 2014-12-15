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
  当前页面：主页 > 信息管理
  </font>
  </div>
  <div style="margin-top:20px"></div>
  
  <div style="margin-left:auto;margin-right:auto; width:70%">
  <font face="楷体" size="+1">
  <div style="width:35%; float:left">所有信息：</div>
  <div style="float:left"><a href="allsearch.action?order=1" style="text-decoration:none">信息修改表</a></div>
  <div style="float:left"><a href="allsearch.action?order=2" style="text-decoration:none; margin-left:100px">设备报废表</a></div>
  </font>
  </div>
  <br>
  <div style="margin-top:20px"></div>
  <font face="楷体" size="+1">
  <div style="width:70%;margin-left:auto; margin-right:auto;height:20px"><div style="float:left">信息查询:</div>
  <s:form action="tasearch">
  <div style="float:left;margin-left:10px;margin-top:-4px; width:80px">
  <select name="tablekind">
  <option value="modify">信息修改表</option>
  <option value="trim">设备报修表</option>
  </select>
  </div>
  <div style="float:left;margin-left:35px; margin-top:-4px; width:80px">
  <select name="seckind">
  <option value="device">名称</option>
  <option value="department">部门</option>
  <option value="recipienter">领用人</option>
  <option value="id">编号</option>
  <option value="date">日期</option>
  <option value="model">型号</option>
  </select>
  </div>
  <div style="float:left;width:300px;margin-top:-6px" align="center">
  <input style="background:#F9F9F9;border:0px" type="text" name="tabletp">
  <input style="margin-left:10px" type="image" src="1120.png" height="20" width="20">
  </div>
  </s:form>
  </div>
  </font>
  <div style="width:30%; float:right; margin-top:10px">
  <font face="楷体" size="4">
  <a href="mangerShow.action?hc=5" style="text-decoration:none">查询返回</a>
  </font>
  </div>
  
  
  <table border="2px" id="adm_user" cellspacing="0">
  <caption style="height:30px"><font face="楷体" size="4px">信息修改申请</font></caption>
  <s:iterator value="listmodify" status="st">
  <tr align="center" height="40px">
      <td width="160px">名称</td>
      <td width="160px">型号</td>
      <td width="160px">编号</td>
      <td width="160px">部门</td>
      <td width="160px">项目编号</td>
    </tr>
    <tr align="center" height="40px">
      <td width="160px"><s:property value="device"/></td>
      <td width="160px"><s:property value="model"/></td>
      <td width="160px"><s:property value="id"/></td>
      <td width="160px"><s:property value="department"/></td>
      <td width="160px"><s:property value="projid"/></td>
      </tr>   
      <tr align="center" height="40px">
      <td width="160px">领用人</td>
      <td width="160px">权限</td>
      <td width="160px" colspan="2">描述</td>
      <td width="100px">审批</td>
    </tr>
    <tr align="center" height="40px">
      <td width="160px"><s:property value="recipienter"/></td>
      <td width="160px"><s:property value="state"/></td>
      <td width="160px" colspan="2"><s:property value="describle"/></td>
       <td width="160px">
       <div style="width:50%; float:left; height:40px;">
      <s:form action="add">
      <input type="hidden" name="id" value="${ id }">
      <input type="hidden" name="fw_tp" value="true">
      <input onclick="getCalendar(this)" style="width:100%;height:100%; border:0px;background:#F9F9F9;cursor:hand" type="submit" value="允许">
      </s:form>
      </div>
      <div style="width:50%; float:right; height:40px">
      <s:form action="revert">
      <input type="hidden" name="id" value="${ id }">
      <input type="hidden" name="dev_tp" value="one">
      <input onclick="getCalendar(this)" style="width:100%;height:100%; border:0px;background:#F9F9F9;cursor:hand" type="submit" value="反馈">
      </s:form>
      </div>
      </td>
      </tr>
      <div style="margin-top:10px"></div>
    </s:iterator>
  </table>
  
  <div style="margin-top:20px"></div>
  
  <div>
  <div style="margin-top:20px"></div>
  <table border="2px" id="adm_user" cellspacing="0">
  <caption style="height:30px"><font face="楷体" size="4px">设备报废申请</font></caption>
  <s:iterator value="listtrim" status="st">
  <tr align="center" height="40px">
  	  <td width="160px">名称</td>
      <td width="160px">型号</td>
      <td width="160px">编号</td>
      <td width="160px">部门</td>
      <td width="160px">领用人</td>
    </tr>
    <tr align="center" height="40px">
      <td width="160px"><s:property value="device"/></td>
      <td width="160px"><s:property value="model"/></td>
      <td width="160px"><s:property value="id"/></td>
      <td width="160px"><s:property value="department"/></td>
      <td width="160px"><s:property value="recipienter"/></td>
      </tr>
      
      <tr align="center" height="40px">
      <td width="160px">日期</td>
      
      <td width="160px" colspan="3">故障描述</td>
      <td width="100px">审批</td>
    </tr>
    
    <tr align="center" height="40px">
      <td width="160px"><s:property value="date"/></td>
      
      <td width="160px" colspan="3"><s:property value="reason"/></td>
      <td width="160px"> 
      <div style="width:50%; float:left; height:40px">
      <s:form action="Repair">
      <input type="hidden" name="id" value="${ id }">
      <input type="hidden" name="dev_tp" value="true">
      <input onclick="getCalendar(this)" style="width:100%;height:100%; border:0px;background:#F9F9F9;cursor:hand" type="submit" value="允许">
      </s:form>
      </div>
      <div style="width:50%; float:right; height:40px">
      <s:form action="revert">
      <input type="hidden" name="id" value="${ id }">
      <input type="hidden" name="dev_tp" value="two">
      <input onclick="getCalendar(this)" style="width:100%;height:100%; border:0px;background:#F9F9F9;cursor:hand" type="submit" value="反馈">
      </s:form>
      </div>
      </td>
      </tr>
      <div style="margin-top:10px"></div>
    </s:iterator>
  </table>
  </div>
  
  <div style="margin-top:20px"></div>
  <div style="width:80%;height:0px;border-top:1px black dashed; margin-left:auto; margin-right:auto"></div>
  <div style="margin-top:20px"></div>
  <div style="margin-left:auto; margin-right:auto; width:80%"><center><h4 style="font-family:楷体">哈尔滨工业大学 &emsp; 技术支持：XFun 小组</h4></center></div>
  
  </div>
  </body>
</html>