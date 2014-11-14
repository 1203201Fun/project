<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理系统</title>
<script charset="utf-8" language="javascript" src="jquery.js"></script>
<style type="text/css">
<!--
* { 
	margin:0px; 
	padding:0px;
}
html, body{	
	height:100%;
	overflow: hidden;

}
html>body{		/*-- for !IE6.0 --*/
	width: auto;
	height: auto;
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	
}
body {
	border:8px solid #ffffff;
	background-color: #ffffff;
	min-width:230px;
}
#mainDiv {
	width: 100%;
	height: 100%;
    padding:0px 0px 25px 0px;;
	
	
}
#centerDiv{
	width: 100%;
	height: 100%;
	background-color:#ffffff;
	padding-left:276px;/*-left width-*/
}
#mainDiv>#centerDiv{		/*-- for !IE6.0 --*/	
	width: auto;
	height: auto;
	position: absolute;
	top: 56px;
	left: 0px;
	right: 0px;
	bottom: 100px;/*bottom width*/
	
}
#right{
	width:163%;
	height:100%;
	background:#ffffff;
	position:absolute;
	overflow-y:auto;
	border:1px #003366 solid;
	margin:0px 0 0 0px;
	padding:20px 0 0 10px;
	font-size:15px;/*框里的字体*/
	font-family:"宋体";
}
#centerDiv>#right{
	width:auto;
	height:auto;
	position:absolute;
	top:0px;
	right:0px;
	left:162px;/*主题框左边框*/
	bottom:0px;
}
#topDiv{
	width:100%;
	height:56px;/*导航框下沉*/

	background:url(head-bg.jpg) repeat-x;
	position:absolute;
	top:0px;
	overflow:hidden;
}
#topDiv ul{
	list-style:none;
	font-size:16px;/*导航框字体大小 */
	font-family:"黑体";
	width:100%;
	margin:0;
	padding:0;
}
#topDiv ul li{
	float:left;
	width:15%
}
#topDiv ul li a {
	display:block;
	width:100%;
	height:30px;
	line-height:25px;
	background:url(menu-bg.jpg) repeat-x;
	color:black;
	direction:none;
	text-align:center;
	border-bottom:1px #000066 solid;
	border:1px #06597D solid;
}
#tmenu{
	width:100%;
	position:absolute;
	left:12%;
	bottom:0;
	padding-left:15%;
	margin-left:-15%;
}
#current{
	background:#ccc;
	height:25px;
	line-height:25px;
	margin:-20px 0 0 -10;
	overflow:hidden;
}
#bottomDiv{
	width:100%;
	height:20px;
	background:url(bottom.jpg) repeat-x;
	position:absolute;
	bottom:0px;
	bottom:-1px;		
}

#form{
	width:80%;
	height:99%;
	_margin-left:20%;
	margin:10px 0 0 -5px;

}
#looper{
	margin-right: -20px; 
	margin-bottom: 2px; 
	margin-left: 20px; 
	border-right-width: 3px;
}
fieldset{
	width:100%;
	margin:10px 0 0 -5px;
	line-height:35px;
	padding-left:20PX;
}
 
.datalist{  
    border:1px solid #0058a3;   /* 表格边框 */  
    font-family:Arial;  
    border-collapse:collapse;   /* 边框重叠 */  
    background-color:#eaf5ff;   /* 表格背景色 */  
    font-size:14px;  
}  
.datalist caption{  
    padding-bottom:5px;  
    font:bold 1.4em;  
    text-align:left;  
}  
.datalist th{  
    border:1px solid #0058a3;   /* 行名称边框 */  
    background-color:#4bacff;   /* 行名称背景色 */  
    color:#FFFFFF;              /* 行名称颜色 */  
    font-weight:bold;  
    padding-top:4px; padding-bottom:4px;  
    padding-left:12px; padding-right:12px;  
    text-align:center;  
}  
.datalist td{  
    border:1px solid #0058a3;   /* 单元格边框 */  
   text-align:center;
    padding-top:4px; padding-bottom:4px;  
    padding-left:10px; padding-right:10px;  
}  
.datalist tr.altrow{  
    background-color:#c7e5ff;   /* 隔行变色 */  
    text-align:center;
}  
table.formdata{  
   border:1px solid #5F6F7E;  
   border-collapse:collapse;  
    font-family:Arial;  
}  
table.formdata caption{  
    text-align:left;  
    padding-bottom:6px;  
}  
table.formdata th{  
    border:1px solid #5F6F7E;  
    background-color:#4bacff;   /* 行名称背景色 */  
    color:#FFFFFF; 
    
    text-align:center;  
    font-weight:normal;  
    padding:2px 8px 2px 6px;  
    margin:0px;  
}  
table.formdata td{
	text-align:center;   
    margin:0px;  
    padding:0px;  
     border:1px solid #0058a3;  /* 单元格边框 */  
}  
table.formdata input{  
    width:100px;  
    padding:1px 3px 1px 3px;  
    margin:0px;  
    border:none;                /* 输入框不要边框 */  
    font-family:Arial;  
} 
table.formdata td.altrow{  
    background-color:#c7e5ff;   /* 隔行变色 */ 
    text-align:center;
} 
table.formdata td.dourow{  
    background-color: #eaf5ff;   /* 隔行变色 */ 
    text-align:center;
}    
.btn{  
    border:0px solid #000000;  
    font-family:Arial;
    width:100px;  
    height:30px
}

-->
</style>
</head>
 <script>
		
		var deviceinfo = new Array();
		var brifeinfo = new Array();
		var total = 0;
		window.onload = function(){
			
			<s:iterator value="devicelist" id="s3">
				deviceinfo[total] = new Array();
				<s:iterator value="s3" id = "dir" status="t">
					deviceinfo[total][<s:property value="#t.index"/>] = "<s:property value="dir"/>";
				</s:iterator>
				total += 1;
			</s:iterator>
			
			var Creat_table = document.getElementById("looper");
			var INNER = "<table class='datalist' align='center' border='5'  cellpadding='7' width='700'>";
			INNER += "<tr><th align = 'center' style=‘width: 80px' >编号</th><th align = 'center' style=‘width: 80px' >设备名</th><th align = 'center'  style='width: 40px' >数量</th><th align = 'center'  style='width:80px'>型号</th>";
			INNER += "<th align = 'center' style=‘width: 200px' >规格</th><th align = 'center' style=‘width: 80px' >PIN码</th><th align = 'center'  style='width: 100px' >部门</th></th></tr>";
			
			for(var i=0; i<total; i++){
				if(i%2==0)INNER+=" <tr class='altrow'>";
				else INNER+="<tr>";
				INNER += "<td align='center'>"+deviceinfo[i][0]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][1]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][2]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][3]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][4]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][5]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][6]+"</td></tr>";
			}
			INNER +="</br>";
			//INNER += "</table>";
			//var INNER = "<table class='datalist' align='center' border='5'  cellpadding='7' width='700'>";
			INNER += "<tr><th align = 'center' style=‘width: 80px' >出厂日期</th><th align = 'center' style=‘width: 80px' >价格</th><th align = 'center'  style='width: 60px' >经手人</th><th align = 'center'  style='width: 80px'>领用人</th>";
			INNER += "<th align = 'center' style=‘width: 200px' >使用目的</th><th align = 'center' style=‘width: 80px' >项目编号</th><th align = 'center'  style='width: 100px' >生产厂家</th></th></tr>";
			
			for(var i=0; i<total; i++){
				if(i%2==0)INNER+=" <tr class='altrow'>";
				else INNER+="<tr>";
				INNER += "<td align='center'>"+deviceinfo[i][7]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][8]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][9]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][10]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][11]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][12]+"</td>";
				INNER += "<td align='center'>"+deviceinfo[i][13]+"</td>";
			}
			
			
			INNER += "</table>";
			INNER += "</br></br><input type='button' value='更正信息'  style='width:100px;height:30px' onclick='javascript:updata()'/>";
			INNER += "</br><div id = 'div1'>&nbsp</div>";
			Creat_table.innerHTML = INNER;
			return;
		}
		function updata(){
			alert("updata");
			document.getElementById("div1").innerHTML = newdiv;
		}
		var newdiv = "<div><form action='guestupdate' method='post'>";
		
		newdiv+="</br></br><table class='formdata' width='600'><caption>设备信息修改申请单</caption>";  
		newdiv+="<tr><th></th>"; 
		newdiv+="<th scope='col'>Entry</th>";
		newdiv+="<th scope='col'>Example</th></tr>"; 
 
		 
		newdiv+="<tr><th scope='row'>编号</th>";
		newdiv+= "<td>${id}</td>";
		//newdiv+= "<td><input type='text' name='id' id='id'></td>";
		newdiv+=  "<td class='altrow'>编号不能修改，请如实填写</td></tr> ";
		  
		newdiv+= "<tr><th scope='row'>名称</th>"; 
		newdiv+= "<td><input type='text' name='device' id='device'></td>";
		newdiv+= "<td class='dourow'>简要填写设备名称</td></tr> ";
		  
		newdiv+=  "<tr><th scope='row'>型号</th>";  
		newdiv+=  "<td><input type='text' name='model' id='model'></td>";
		newdiv+= "<td class='altrow'>精确到某一机型</td></tr>";  
 
		newdiv+= "<tr><th scope='row'>规格</th>"; 
		newdiv+=  "<td><input type='text' name='describle' id='describle'></td>";
		newdiv+=   "<td class='dourow'>请详细填写此栏</td></tr>";
		
		newdiv+= "<tr><th scope='row'>所属部门</th>"; 
		newdiv+=  "<td><input type='text' name='department' id='department'></td>";
		newdiv+=   "<td class='altrow'>填写最新所在部门</td></tr>";
		
		newdiv+= "<tr><th scope='row'>领用人</th>"; 
		newdiv+=  "<td><input type='text' name='recipient' id='recipient'></td>";
		newdiv+=   "<td class='dourow'>填写最新领用人</td></tr>";
		
		newdiv+= "<tr><th scope='row'>使用目的</th>"; 
		newdiv+=  "<td><input type='text' name='usefor' id='usefor'></td>";
		newdiv+=   "<td class='altrow'>填写最近用途</td></tr>";
		
		newdiv+= "<tr><th scope='row'>项目编号</th>"; 
		newdiv+=  "<td><input type='text' name='projid' id='projid'></td>";
		newdiv+=   "<td class='dourow'>填写用途编号</td></tr></table>";
		
		newdiv+="</br></br><input type='submit' name='btnSubmit' id='btnSubmit' value='提交' class='btn' style:'width=130px'>";  
		newdiv+="<input type='reset' value='重置' class='btn' style:'width=130px'>"; 
		
		
		newdiv+="<form></div>";
	</script>
<body bgcolor ="#dedede">
<div id="mainDiv">
	<div id="topDiv">
	<div id="tmenu">
	<ul style = "aligin">
	<li ><a href="guestSearch.jsp">查询设备</a></li>
	<li ><a href="checkapply.action">提交表单</a></li>
	<li ><a href="userInfo.action">用户信息</a></li>
	<li ><a href="writeTable.jsp">上报设备</a></li>
	</ul></div></div>
	
	<div id="centerDiv" style="width: 698px;">
		<div id="right"> 
			<div id="current">&nbsp;&nbsp;&nbsp;&nbsp;当前位置:>设备详细信息</div>
				<div id="form">
				<div id="looper" >	
					</div>
		</div>
		</div>
	</div>
	<div id="bottomDiv"></div>
</div>
</body>
</html>
