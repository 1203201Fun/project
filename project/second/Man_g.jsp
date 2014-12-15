<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detaildev.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link  rel="stylesheet" type="text/css" href="input.css">
	<%@ taglib prefix="s" uri="/struts-tags" %>
    <script language="javascript"> 
function realSysTime(clock){ 
var now=new Date(); //创建Date对象 
var year=now.getFullYear(); //获取年份 
var month=now.getMonth(); //获取月份 
var date=now.getDate(); //获取日期 
var day=now.getDay(); //获取星期 
month=month+1; 
var arr_week=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六"); 
var week=arr_week[day]; //获取中文的星期 
var time=year+"年"+month+"月"+date+"日 "+week; //组合系统时间 
clock.innerHTML=time; //显示系统时间 
} 
window.onload=function(){ 
window.setInterval("realSysTime(clock)",1000); //实时获取并显示系统时间 
} 
</script> 

 </head>
  <body bgcolor="#F5F5F5">
  <div style="height:10px; margin-top:10px"></div>
  <font face="微软雅黑">
  <center>
 
  </center>
  </font>
  <font face="微软雅黑">
  <div style="margin-left:auto; margin-right:auto; width:60%">
  <s:iterator value="listview" status="st">
  <table border="1px" width="100%" cellspacing="0">
  <div style="margin-left:auto; margin-right:auto">
  <center><h3>设备入库登记审批表</h3></center>
  </div>
  <div style="height:30px; width:90%" id="clock" align="right"></div>
  <div style="border-top:30px">
  <s:form action="approve">
  <tr height="40px" align="center">
  <td width="35%">设备名称</td>
  <td width="65%"><input id="Format" type="text" name="device" value="${ device }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">出厂日期</td>
  <td width="65%"><input id="Format" type="text" name="birthday" value="${ birthday }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">购买日期</td>
  <td width="65%"><input  id="Format" type="text" name="buydate" value="${ buydate }"></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">厂家</td>
  <td width="65%"><input  id="Format" type="text" name="factory" value="${ factory }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">经手人</td>
  <td width="65%"><input  id="Format" type="text" name="handler" value="${ handler }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">描述</td>
  <td width="65%"><input  id="Format" type="text" name="describle" value="${ describle }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">所属部门</td>
  <td width="65%"><input id="Format" type="text" name="department" value="${ department  }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">编号</td>
  <td width="65%"><input  id="Format" type="text" name="id" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">图片</td>
  <td width="65%"><input  id="Format" type="text" name="imgpath" value="${ imgpath  }"></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">管理类型</td>
  <td width="65%"><input  id="Format" type="text" name="managetype" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">型号</td>
  <td width="65%"><input  id="Format" type="text" name="model" value="${ model }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">数量</td>
  <td width="65%"><input  id="Format" type="text" name="number" value="${ number }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">维修数量</td>
  <td width="65%"><input  id="Format" type="text" name="repairnumber" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">PIN码</td>
  <td width="65%"><input  id="Format" type="text" name="pin" value="${ pin }" readonly></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">价格</td>
  <td width="65%"><input  id="Format" type="text" name="price" value="${ price }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">项目编号</td>
  <td width="65%"><input  id="Format" type="text" name="projid" value="${ projid }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">领用人</td>
  <td width="65%"><input  id="Format" type="text" name="recipienter" value="${ recipienter }"></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">权限</td>
  <td width="65%"><input  id="Format" type="text" name="state" value="${ state }" ></td>
  </tr>
  <tr height="40px" align="center">
  <td width="35%">用途</td>
  <td width="65%"><input  id="Format" type="text" name="usefor" value="${ usefor }" ></td>
  </tr>
  <tr height="40px">
  <td colspan="2">
  <input type="hidden" name="mark" value="one">
  <input onclick="getCalendar(this)" style="width:100%;height:45px;background:#F9F9F9;cursor:hand; font-family:楷体; font-size:24px" type="submit" value="批        准">
  </td>
  </tr>
  </s:form>
  <s:form action="approve">
  <tr height="40px">
  <td colspan="2">
  <input type="hidden" name="mark" value="two">
  <input onclick="getCalendar(this)" style="width:100%;height:45px;background:#F9F9F9;cursor:hand; font-family:楷体; font-size:24px" type="submit" value="删        除">
  </td>
  </tr>
  </s:form>
  </div>
  </table>
  </s:iterator>
  </div>
  </font>
  <div style="margin-top:20px"></div>
  <div style="width:80%;height:0px;border-top:1px black dashed; margin-left:auto; margin-right:auto"></div>
  <div style="margin-top:20px"></div>
  <div style="margin-left:auto; margin-right:auto; width:80%"><center><h4 style="font-family:楷体">哈尔滨工业大学 &emsp; 技术支持：XFun 小组</h4></center></div>  
  </body>
</html>
