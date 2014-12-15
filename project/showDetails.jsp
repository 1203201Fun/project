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
			var INNER = "<div id = 'haha'><font color='black' size='4'></font></div>"; 
			INNER +="<table id ='fuckyou'  align='center' border='5'  cellpadding='7' width='700' style='color:#bac9ee;'>";
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
			INNER += "</br></br><input type='button' value='更正信息'  style='width:100px;height:30px;margin-left: 400px;' onclick='javascript:updata()'/>";
			INNER +="<input value='报废' type='button' style='width:100px;height:30px' onclick='javascript:lend()'/>";
			INNER += "<input type='button' onclick='javascript:method2(\"fuckyou\");'  style='width:100px;height:30px' value='导入到EXCEL'>";	
			INNER += "</br><div id = 'div1'>&nbsp</div>";
			INNER += "</br><div id = 'div2'>&nbsp</div>";
			Creat_table.innerHTML = INNER;
			return;
		}
		function updata(){
			alert("updata");
			document.getElementById("div1").innerHTML = newdiv;
		}
		function lend() {
			
			// var date=new Date;
			// var year=date.getFullYear(); 
			// var month=date.getMonth()+1;
			// var day = date.getDate();
			// var hour = date.getHours();
			 //var minutes = date.getMinutes();
			// var seconds = date.getSeconds();
			// month =(month<10 ? "0"+month:month); 
			// var mydate = (year.toString()+"-"+month.toString()+"-"+day.toString()+"  "+hour.toString()+":"+minutes.toString()+":"+seconds.toString()); 
			  alert("Enter!");
			 document.getElementById("div2").innerHTML = newdiv1;
		}
		var newdiv = "<div><form action='guestupdate' method='post'>";
		
		newdiv+="<caption><font style='font-size:24px;font-family:黑体;color:#bac9ee'>设备信息修改单</font></caption></br></br><table width='600' align='center' border='3'  cellpadding='7' style='color:#bac9ee;'>";  
		newdiv+="<tr><th></th>"; 
		newdiv+="<th scope='col'>项目</th>";
		newdiv+="<th scope='col'>Example</th></tr>"; 
 
		 
		newdiv+="<tr><th scope='row'>编号</th>";
		newdiv+= "<td>${id}</td>";
		//newdiv+= "<td><input type='text' name='id' id='id'></td>";
		newdiv+=  "<td class='altrow'>编号不能修改，请如实填写</td></tr> ";
		  
		newdiv+= "<tr><th scope='row'>名称</th>"; 
		newdiv+= "<td><input type='text' name='device' id='device' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv+= "<td class='dourow'>简要填写设备名称</td></tr> ";
		  
		newdiv+=  "<tr><th scope='row'>型号</th>";  
		newdiv+=  "<td><input type='text' name='model' id='model' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv+= "<td class='altrow'>精确到某一机型</td></tr>";  
 
		newdiv+= "<tr><th scope='row'>规格</th>"; 
		newdiv+=  "<td><input type='text' name='describle' id='describle' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv+=   "<td class='dourow'>请详细填写此栏</td></tr>";
		
		newdiv+= "<tr><th scope='row'>所属部门</th>"; 
		newdiv+=  "<td><input type='text' name='department' id='department' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv+=   "<td class='altrow'>填写最新所在部门</td></tr>";
		
		newdiv+= "<tr><th scope='row'>领用人</th>"; 
		newdiv+=  "<td><input type='text' name='recipient' id='recipient' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv+=   "<td class='dourow'>填写最新领用人</td></tr>";
		
		newdiv+= "<tr><th scope='row'>使用目的</th>"; 
		newdiv+=  "<td><input type='text' name='usefor' id='usefor' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv+=   "<td class='altrow'>填写最近用途</td></tr>";
		
		newdiv+= "<tr><th scope='row'>项目编号</th>"; 
		newdiv+=  "<td><input type='text' name='projid' id='projid' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv+=   "<td class='dourow'>填写用途编号</td></tr></table>";
		
		newdiv+="</br></br><input type='submit' name='btnSubmit' id='btnSubmit' value='提交'  style='width:100px;height:30px;margin-left: 400px;'>";  
		newdiv+="<input type='reset' value='重置' style:'width=130px'  style='width:100px;height:30px'>"; 
		newdiv+="<form></div>";
		//*************************************Repaire**********************************************//
	    var newdiv1 = "<div><form action='deviceRepair' method='post'>";
		
		newdiv1+="<caption><font style='font-size:24px;font-family:黑体;color:#bac9ee'>设备报废单</font></caption></br></br><table width='600' align='center' border='3'  cellpadding='7' style='color:#bac9ee;'>";  
		newdiv1+="<tr><th></th>"; 
		newdiv1+="<th scope='col'>Entry</th>";
		newdiv1+="<th scope='col'>Example</th></tr>"; 
 
		 
		newdiv1+="<tr><th scope='row'>编号</th>";
		newdiv1+= "<td>${id}</td>";
		newdiv1+=  "<td class='altrow' >编号请如实填写</td></tr> ";
		  
		newdiv1+= "<tr><th scope='row'>名称</th>"; 
		newdiv1+= "<td><input type='text' name='device' id='device' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv1+= "<td class='dourow'>简要填写设备名称</td></tr> ";
		  
		newdiv1+=  "<tr><th scope='row'>报废时间</th>";  
		newdiv1+=  "<td><input type='text' name='date' id='date' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv1+= "<td class='altrow'>收到报废的时间</td></tr>";  
		
		newdiv1+= "<tr><th scope='row'>所属部门</th>"; 
		newdiv1+=  "<td><input type='text' name='department' id='department'  style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv1+=   "<td class='altrow'>报废设备所在部门</td></tr>";
		
		newdiv1+= "<tr><th scope='row'>申请人</th>"; 
		newdiv1+=  "<td><input type='text' name='recipienter' id='recipienter' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv1+=   "<td class='dourow'>报废人姓名</td></tr>";
		
		newdiv1+= "<tr><th scope='row'>批准人</th>"; 
		newdiv1+=  "<td></td>";
		newdiv1+=   "<td class='dourow'>此栏申请人不填</td></tr>";
		
		newdiv1+= "<tr><th scope='row'>报废原因</th>"; 
		newdiv1+=  "<td><input type='text' name='reason' id='reason'  style='width:200px;height:20px;background-color:#bac9bb;'></td>";
		newdiv1+=   "<td class='dourow'>请详细填写</td></tr></table>";
		
		
		newdiv1+="</br></br><input type='submit' value='提交' style='width:100px;height:30px;margin-left: 400px;'>";  
		newdiv1+="<input type='reset' value='重置' style='width:100px;height:30px'>"; 
		
		
		newdiv1+="<form></div>";
	</script>

	<script language="javascript">
		function method2(tableid) //读取表格中每个单元到EXCEL中 
		        { 
		            var curTbl = document.getElementById(tableid); 
		            var oXL = new ActiveXObject("Excel.Application"); //创建AX对象excel 
		            var oWB = oXL.Workbooks.Add(); //获取workbook对象 
		            var oSheet = oWB.ActiveSheet; //激活当前sheet 
		            var Lenr = curTbl.rows.length; //取得表格行数 
		            for (i = 0; i < Lenr; i++) { 
		                var Lenc = curTbl.rows(i).cells.length; //取得每行的列数 
		                for (j = 0; j < Lenc; j++) { 
		                    oSheet.Cells(i + 1, j + 1).value = curTbl.rows(i).cells(j).innerText; //赋值 
		                } 
		            } 
		            oXL.Visible = true; //设置excel可见属性 
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

			<div id="templatemo_main" style="padding-top:10px;">
				<h3 style="height: 20px;margin-bottom: 0px;FONT-FAMILY: 黑体">当前位置:>设备详情</h3>
				<div id="home" class="main_box">
					<fieldset style="padding-left: 20px;padding-top: 30px;padding-bottom: 20px;">
						<div id="looper">
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