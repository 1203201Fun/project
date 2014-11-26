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
    padding:30px 0px 25px 0px;
    background:url(./bigimg/img/background.jpg);
	
	
}
#centerDiv{
	width: 100%;
	height: 100%;
	padding:0px 276px 25px 0px;/*-left width-*/
}
#mainDiv>#centerDiv{		/*-- for !IE6.0 --*/	
	width: auto;
	height: auto;
	position: absolute;
	width: 799px;
	top: 136px;
	left: 1px;
	right: 0px;
	bottom: 100px;/*bottom width*/
	
}
#right{
	width:163%;
	height:100%;
	background:#ffffff;
	position:absolute;
	background:url(./bigimg/img/background2.jpg);
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
#headDiv{
	width:911px;
	height:78px;/*导航框下沉*/
	margin: 0px 0px 0 163px;
	background:url(./bigimg/img/lead.jpg);
	border:1.5px #003366 solid;
	font-family:"黑体";
	position:absolute;
	overflow:hidden;
	opacity: 0.90;
}
#topDiv{
	width:1300px;
	height:40px;/*导航框下沉*/
	margin: 39px 0px 0 53px;
	position:absolute;
	top:60px;
	overflow:hidden;
}
#topDiv ul{
	list-style:none;
	font-size:16px;/*导航框字体大小 */
	font-family:"黑体";
	width:930px;
	margin:0;
	padding:0;
}
#topDiv ul li{
	float:left;
	width:220px;
}
#topDiv ul li a {
	display:block;
	width:251px;
	height:30px;
	line-height:25px;
	background:url(./bigimg/img/menu-bg.jpg) repeat-x;
	color:black;
	direction:none;
	text-align:center;
	border-bottom:1px #000066 solid;
	border:1px #06597D solid;
}
#tmenu{
	width:930px;
	position:absolute;
	left:110px;
	bottom:0;
	padding-left:15%;
	margin-left:-15%;
}
#current{
	background:#9d9d9d;
	height:25px;
	line-height:25px;
	margin:-20px 0 0 -10;
	overflow:hidden;
}
#messageDiv{
	width:100%;
	height:20px;
	position:absolute;
	font-family:"黑体";
	margin:585px 0px 0px 390px;		
}		
#bottomDiv{
	width:100%;
	height:20px;
	background:url(.bigimg/img/bottom.jpg) repeat-x;
	position:absolute;
	bottom:0px;
	bottom:-1px;		
}

#form{
	width:80%;
	height:99%;
	_margin-left:20%;
	margin:10px 0 0 45px;

}
#looper{
	margin-right: -20px; 
	margin-bottom: 2px; 
	margin-left: 20px; 
	border-right-width: 3px;
}
#deft{
	margin-right: -20px; 
	margin-bottom: 2px; 
	margin-left: 20px; 
	border-right-width: 3px;
}
#acorn{
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
		
		var brifeinfo = new Array();
		var brifeinfo1 = new Array();
		var brifeinfo2 = new Array();
		var total = 0;
		var total1 = 0;
		var total2 = 0;
		
		window.onload = function(){
			
			<s:iterator value="myaddInfo" id="s4">
				brifeinfo[total] = new Array();
				<s:iterator value="s4" id = "q" status="st">
					brifeinfo[total][<s:property value="#st.index"/>] = "<s:property value="q"/>";
				</s:iterator>
				total += 1;
			</s:iterator>
			
		  <s:iterator value="myRepaire" id="s3">
				brifeinfo1[total1] = new Array();
				<s:iterator value="s3" id = "qq" status="stt">
					brifeinfo1[total1][<s:property value="#stt.index"/>] = "<s:property value="qq"/>";
				</s:iterator>
				total1 += 1;
			</s:iterator>
			
			 <s:iterator value="addDevicelist" id="s2">
				brifeinfo2[total2] = new Array();
				<s:iterator value="s2" id = "qqq" status="sttt">
					brifeinfo2[total2][<s:property value="#sttt.index"/>] = "<s:property value="qqq"/>";
				</s:iterator>
				total2+= 1;
			</s:iterator>
			
			
			var Creat_table = document.getElementById("looper");
			var INNER = "<table  class='datalist' align='center' border='5'  cellpadding='7' width='600'>";
			INNER +="<h3 align='center' >修改信息申请表(未审批)</h3></br>";
			INNER += "<tr><th align = 'center' style=‘width: 200px' >编号</th><th align = 'center' style=‘width: 200px' >设备名</th><th align = 'center'  style='width: 200px' >部门</th><th align = 'center'  style='width: 200px'>型号</th></tr>";
			
			for(var i=0; i<total; i++){
				if(i%2==0)INNER+=" <tr class='altrow'>";
				else INNER+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				INNER += "<td align='center'>"+brifeinfo[i][0]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][1]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][2]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][3]+"</td></tr>";
			}
			INNER += "<tr><th align = 'center' style=‘width: 200px' >领用人</th><th align = 'center' style=‘width: 200px' >规格</th><th align = 'center'  style='width: 200px' >用途</th><th align = 'center'  style='width: 200px'>项目编号</th></tr>";
			for(var i=0; i<total; i++){
				if(i%2==0)INNER+=" <tr class='altrow'>";
				else INNER+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				INNER += "<td align='center'>"+brifeinfo[i][5]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][4]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][6]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][7]+"</td></tr>";
			}
			
			INNER += "</table></br></br>";
			Creat_table.innerHTML = INNER;
			//******************************************************************************************//
			var Creat_table = document.getElementById("acorn");
			var NEWDIV = "<table  class='datalist' align='center' border='5'  cellpadding='7' width='600'>";
			NEWDIV +="<h3 align='center' >报修申请表</h3></br>";
			NEWDIV += "<tr><th align = 'center' style=‘width: 200px' >编号</th><th align = 'center' style=‘width: 200px' >设备名</th><th align = 'center'  style='width: 200px' >申请日期</th><th align = 'center'  style='width: 200px'>部门</th></tr>";
			
			for(var i=0; i<total1; i++){
				if(i%2==0)NEWDIV+=" <tr class='altrow'>";
				else NEWDIV+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				NEWDIV += "<td align='center'>"+brifeinfo1[i][0]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][1]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][2]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][3]+"</td></tr>";
			}
			NEWDIV += "<tr><th align = 'center' style=‘width: 200px' >领用人</th><th align = 'center' style=‘width: 200px' >审批人</th><th align = 'center'  style='width: 200px' >描述</th><th align = 'center'  style='width: 200px'>状态</th></tr>";
			for(var i=0; i<total1; i++){
				if(i%2==0)NEWDIV+=" <tr class='altrow'>";
				else NEWDIV+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				NEWDIV += "<td align='center'>"+brifeinfo1[i][4]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][5]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][6]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][7]+"</td></tr>";
			}
			
			NEWDIV += "</table>";
			Creat_table.innerHTML = NEWDIV;
			//******************************************************************************************//
			var Creat_table = document.getElementById("deft");
			var NEWDIV1 = "<table  class='datalist' align='center' border='5'  cellpadding='7' width='600'>";
			NEWDIV1 +="</br></br><h3 align='center' >新设备申请表</h3></br>";
			NEWDIV1 += "<tr><th scope='col'>名称</th><th scope='col'>型号</th><th scope='col'>所属部门</th><th scope='col'>数量</th><th scope='col' colspan=2>规格</th><th scope='col'>经手人</th><th scope='col'>领用人</th><th scope='col'>使用目的</th></tr>";
			
			for(var i=0; i<total2; i++){
				if(i%2==0)NEWDIV1+=" <tr class='altrow'>";
				else NEWDIV1+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][0]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][1]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][2]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][3]+"</td>";
				NEWDIV1 += "<td align='center' colspan=2>"+brifeinfo2[i][4]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][5]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][6]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][7]+"</td></tr>";
			}
			NEWDIV1 += "<tr><th scope='col'>项目编号</th><th scope='col'>PIN码</th><th scope='col'>出厂日期</th><th scope='col'>生产厂家</th><th scope='col'>价格</th><th scope='col' colspan=2>状态</th><th scope='col' colspan=2 >操作</th></tr>";
			for(var i=0; i<total2; i++){
				if(i%2==0)NEWDIV1+=" <tr class='altrow'>";
				else NEWDIV1+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][8]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][9]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][10]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][11]+"</td>";
				NEWDIV1 += "<td align='center'>"+brifeinfo2[i][12]+"</td>";
				
				if(brifeinfo2[i][13]=="0"){
				NEWDIV1+="<td align='center' colspan=2>暂存</td>";
				NEWDIV1 += "<td colspan=2><input type='button' value='编辑'  style='width:100px;height:30px' onclick='javascript:edit("+i+")'/></td></tr>"
				}
				else {
					NEWDIV1+="<td align='center' colspan=2>已经提交</td>";
					NEWDIV1+="<td colspan=2>无法操作</td><tr>";
				}
			}

			NEWDIV1 += "</table></br></br></br>";
			Creat_table.innerHTML = NEWDIV1;
			return;
		}
		function edit(i){
		var temp = brifeinfo2[i][0];
		alert(temp+"edit!");
		window.location.href="redit.action?device="+temp+"";
		}
			
	</script>
<body bgcolor ="#dedede">
<div id="mainDiv">
	<div id="headDiv">
	</div>
	<div id="topDiv">
	<div id="tmenu">
	<ul style = "aligin">
	<li ><a href="guestSearch.jsp">查询设备</a></li>
	<li ><a href="checkapply.action">提交表单</a></li>
	<li ><a href="userInfo.action">用户信息</a></li>
	<li ><a href="writeTable.jsp">添加设备</a></li>
	</ul></div></div>
	
	<div id="centerDiv"">
		 <div id="right" style="margin-bottom: -80px;"> 
			<div id="current">&nbsp;&nbsp;&nbsp;&nbsp;当前位置:&gt;添加信息结果</div>
				<div id="form">
				<div id="looper">
				</div>
				<div id="acorn">
				</div>
				<div id="deft">
				</div>
				</div>
			</div>
	</div>
	<div id=messageDiv>
			</br><p font face="微软雅黑">Powered By Team xFun | Contract Us | Hit Imformation Security</p>
	</div>
	<div id="bottomDiv"></div>
</div>
</body>
</html>