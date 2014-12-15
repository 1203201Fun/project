<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Simple Grid Theme, Free CSS Template-www.mianfeimoban.com</title>
		<meta name="keywords" content="simple, grid, theme, free templates, web design, one page layout, slategray, steelblue, templatemo, CSS, HTML" />
		<meta name="description" content="Simple Grid is a one-page website template provided by templatemo.com" />
		<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
		<script type='text/javascript' src='js/jquery.min.js'></script>
		<script type='text/javascript' src='js/jquery.scrollTo-min.js'></script>
		<script type='text/javascript' src='js/jquery.localscroll-min.js'></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$.localScroll();
			});
		</script>
		<script charset="utf-8" language="javascript" src="blue/jquery.js"></script>
		<script type="text/javascript" src="blue/jquery-1.4.4.js"></script>
<style type="text/css">
<!--
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
			var INNER = "<table class = 'datalist' style='color:black;' align='center' border='5'  cellpadding='7' width='600'>";
			INNER +="<h3 align='center' >修改信息申请表(未审批)</h3></br>";
			INNER += "<tr><th align = 'center' style='width: 200px;font-size:16px;' >编号</th><th align = 'center' style='width: 200px;font-size:16px;' >设备名</th><th align = 'center'  style='width: 200px;font-size:16px;' >部门</th><th align = 'center'  style='width: 200px;font-size:16px;' colspan=2>型号</th></tr>";
			
			for(var i=0; i<total; i++){
				if(i%2==0)INNER+=" <tr class='altrow'>";
				else INNER+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				INNER += "<td align='center'>"+brifeinfo[i][0]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][1]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][2]+"</td>";
				INNER += "<td align='center' colspan=2>"+brifeinfo[i][3]+"</td></tr>";
			}
			INNER += "<tr><th align = 'center' style='width: 200px;font-size:16px;' >领用人</th><th align = 'center' style='width: 200px;font-size:16px;' >规格</th><th align = 'center'  style='width: 200px;font-size:16px;' >用途</th><th align = 'center'  style='width: 200px;font-size:16px;'>项目编号</th><th align = 'center'  style='width: 200px;font-size:16px;'>状态</th></tr>";
			for(var i=0; i<total; i++){
				if(i%2==0)INNER+=" <tr class='altrow'>";
				else INNER+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				INNER += "<td align='center'>"+brifeinfo[i][5]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][4]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][6]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][7]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][8]+"</td></tr>";
			}
			
			INNER += "</table></br></br>";
			Creat_table.innerHTML = INNER;
			//******************************************************************************************//
			var Creat_table = document.getElementById("acorn");
			var NEWDIV = "<table class = 'datalist' style='color:black;'  align='center' border='5'  cellpadding='7' width='600'>";
			NEWDIV +="<h3 align='center' >报废申请表</h3></br>";
			NEWDIV += "<tr><th align = 'center' style='width: 200px;font-size:16px;' >编号</th><th align = 'center' style='width: 200px;font-size:16px;' >设备名</th><th align = 'center'  style='width: 200px;font-size:16px;' >申请日期</th><th align = 'center'  style='width: 200px;font-size:16px;'>部门</th></tr>";
			
			for(var i=0; i<total1; i++){
				if(i%2==0)NEWDIV+=" <tr class='altrow'>";
				else NEWDIV+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				NEWDIV += "<td align='center'>"+brifeinfo1[i][0]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][1]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][2]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][3]+"</td></tr>";
			}
			NEWDIV += "<tr><th align = 'center' style='width: 200px;font-size:16px;' >领用人</th><th align = 'center' style='width: 200px;font-size:16px;' >审批人</th><th align = 'center'  style='width: 200px;font-size:16px;' >描述</th><th align = 'center'  style='width: 200px;font-size:16px;'>状态</th></tr>";
			for(var i=0; i<total1; i++){
				if(i%2==0)NEWDIV+=" <tr class='altrow'>";
				else NEWDIV+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				NEWDIV += "<td align='center'>"+brifeinfo1[i][5]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][4]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][6]+"</td>";
				NEWDIV += "<td align='center'>"+brifeinfo1[i][7]+"</td></tr>";
			}
			
			NEWDIV += "</table>";
			Creat_table.innerHTML = NEWDIV;
			//******************************************************************************************//
			var Creat_table = document.getElementById("deft");
			var NEWDIV1 = "<table class = 'datalist' style='color:black;'  align='center' border='5'  cellpadding='7' width='600'>";
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
		var temp = brifeinfo2[i][14];
		alert(temp+"edit!");
		window.location.href="redit.action?only="+temp+"";
		}
			
	</script>

	<body>

		<div id="templatemo_wrapper">
			<div id="templatemo_header">
				<div id="site_title" style="margin-left: 10px;"><a href="http://www.templatemo.com/page/1">Free CSS Template</a>
				</div>
			</div>

			<div id="templatmeo_menu">
				<ul>
					<li><a href="guestSearch.jsp" class="home"><span></span></a>
					</li>
					<li><a href="userInfo.action" class="about"><span></span></a>
					</li>
					<li><a href="checkapply.action" class="portfolio"><span></span></a>
					</li>
					<li><a href="writeTable.jsp" class="services"><span></span></a>
					</li>
					<li><a href="#contact" class="contact"><span></span></a>
					</li>
				</ul>
			</div>

			<div id="templatemo_main" style="padding-top: 10px;">
				<h3 style="height: 20px;margin-bottom: 0px;FONT-FAMILY: 黑体">当前位置:>查看表单</h3>
				<div id="home" class="main_box">
					<fieldset style="padding-left: 20px;padding-top: 30px;padding-bottom: 20px;">
						<div id="looper">
						</div>
						<div id="acorn">
						</div>
						<div id="deft">
						</div>
					</fieldset>
					<div class="cleaner"></div>
					<a href="#templatemo_header" class="gototop">Go To Top</a>
					<div class="cleaner"></div>
				</div>
				<!-- END of home -->
			</div>
			<!-- END of -->

			<div id="templatemo_footer">
				Copyright © 2014 HITCS Information Security Team xFun
			</div>
		</div>

	</body>

</html>