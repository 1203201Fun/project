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
<script language="javascript" src="jquery.js"></script>
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
	margin:0px 0 0 0px;
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
    text-align:left;  
    padding-top:4px; padding-bottom:4px;  
    padding-left:10px; padding-right:10px;  
}  
.datalist tr.altrow{  
    background-color:#c7e5ff;   /* 隔行变色 */  
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
} 
table.formdata td.dourow{  
    background-color: #eaf5ff;   /* 隔行变色 */ 
}    
.btn{  
    border:1px solid #0083f2;  
    font-family:Arial;
    width:130px;  
}

-->
</style>
</head>
 <script>
		
		var brifeinfo = new Array();
		var total = 0;
		
		window.onload = function(){
			
			<s:iterator value="mylist" id="s4">
				brifeinfo[total] = new Array();
				<s:iterator value="s4" id = "q" status="st">
					brifeinfo[total][<s:property value="#st.index"/>] = "<s:property value="q"/>";
				</s:iterator>
				total += 1;
			</s:iterator>
			
			
			var Creat_table = document.getElementById("looper");
			var INNER = "<table  class='datalist' align='center' border='5'  cellpadding='7' width='600'>";
			
			for(var i=0; i<total; i++){
				INNER += "<tr class='altrow'><th>编号</th><td align='center'>"+brifeinfo[i][0]+"</td></tr>";
				INNER += "<tr><th>名称</th><td align='center'>"+brifeinfo[i][1]+"</td></tr>";
				INNER += "<tr class='altrow'><th>时间</th><td align='center'>"+brifeinfo[i][2]+"</td></tr>";
				INNER += "<tr><th>所属部门</th><td align='center'>"+brifeinfo[i][3]+"</td></tr>";
				INNER += "<tr class='altrow'><th>申请人</th><td align='center'>"+brifeinfo[i][4]+"</td></tr>";
				INNER += "<tr><th>批准人</th><td align='center'>"+brifeinfo[i][5]+"</td></tr>";
				INNER += "<tr class='altrow'><th>保修原因</th><td align='center'>"+brifeinfo[i][6]+"</td></tr>";
			}
			
			
			INNER += "</table>";
			Creat_table.innerHTML = INNER;
			
			
			return;
		}
			
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
		 <div id="right" style="margin-bottom: -80px;"> 
			<div id="current">&nbsp;&nbsp;&nbsp;&nbsp;当前位置:&gt;查看看申请报修单</div>
				<div id="form">
				<div id="looper"><table width="600" align="center" border="5" cellpadding="7"><tbody><tr><th>Name</th><td align="center">Yanke</td></tr><tr><th>UserName</th><td align="center">Tom</td></tr><tr><th>actor</th><td align="center">Guest</td></tr><tr><th>password</th><td align="center">123456</td></tr><tr><th>department</th><td align="center">DataBase Lab</td></tr><tr><th>phone</th><td align="center">13456823401</td></tr></tbody></table><br><br><input style="width: 118px;" onclick="javascript:updata()" type="button" value="补充用户信息"><br><br><div id="div1"><div><form action="userInfoUpdate" method="post"><fieldset style="height: 234px; "><label for="realrame">Realname:&nbsp;&nbsp;&nbsp;</label><input name="realname" id="realname" type="text"><br><br><label for="password">Password:&nbsp;</label><input name="password" id="password" type="text"><br><br><label for="department">Department:&nbsp;&nbsp;&nbsp;</label><input name="department" id="department" type="text"><br><br><label for="phone">Phone:&nbsp;</label><input name="phone" id="phone" type="text"><br><br><input style="width: 118px;" type="submit" value="提交"> </fieldset></form></div></div></div>
		</div>
		</div>
		</div>
	</div>
	<div id="bottomDiv"></div>
</div>
</body>
</html>

