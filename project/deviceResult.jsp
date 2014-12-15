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
		var name = "IBMPCXXX";
		var zongjia;
		window.onload = function(){
			
			<s:iterator value="devicelist" id="s3">
				deviceinfo[total] = new Array();
				<s:iterator value="s3" id = "dir" status="t">
					deviceinfo[total][<s:property value="#t.index"/>] = "<s:property value="dir"/>";
				</s:iterator>
				total += 1;
			</s:iterator>
			
			total = 0;
			
			
			<s:iterator value="smallist" id="s4">
				brifeinfo[total] = new Array();
				<s:iterator value="s4" id = "q" status="st">
					brifeinfo[total][<s:property value="#st.index"/>] = "<s:property value="q"/>";
				</s:iterator>
				total += 1;
			</s:iterator>
			var zongjia = ${totalprice};
			
			var Creat_table = document.getElementById("looper");
			var INNER = "<table align='center' border='5'  cellpadding='7' width='700' style='color:#bac9ee;'>";
			INNER += "<tr><th align = 'center' style=‘width: 200px' >图片</th><th align = 'center' style=‘width: 150px' >设备名</th><th align = 'center'  style='width: 150px' >编号</th><th align = 'center'  style='width: 200px'>操作</th></tr>";
			
			for(var i=0; i<total; i++){
				if(i%2==0)INNER+=" <tr class='altrow'>";
				else INNER+="<tr>";
				// <img src="${dest}" width="400px" height="300px"/>
				INNER += "<td align='center'><img src="+"'"+brifeinfo[i][2]+"'"+"width='200px' height='150px'/></td>";
				INNER += "<td align='center'>"+brifeinfo[i][0]+"</td>";
				INNER += "<td align='center'>"+brifeinfo[i][1]+"</td>";
				INNER += "<td align='center'><input value='细节' type='button' style='width:100px;height:30px' onclick='javascript:print("+i+")'/><input value='报废' type='button' style='width:100px;height:30px' onclick='javascript:lend("+i+")'/></tr>";	
			}
			INNER +="<tr><td align='center'>总价格</td><td align='center' colspan =3>"+zongjia+"元</td></tr>";
			
			INNER += "</table>";
			INNER += "</br><div id = 'div1'>&nbsp</div>";
			INNER += "</br><div id = 'div2'>&nbsp</div>";

			Creat_table.innerHTML = INNER;
			
			
			return;
		}
		
		function print(i) {
			//var b = "Device ："+deviceinfo[i][0]+"\nNumber ："+deviceinfo[i][1]+"\nLocation ："+deviceinfo[i][2] + "\nDescrible ："+deviceinfo[i][3];
			var temp = deviceinfo[i][0];
			//windows.location.href="showDetails.jsp?devicelist="+devicelist+"";
			alert(temp);
            window.location.href="showDetails.action?id ="+temp+"";
         	//alert(b);
			
		}
		function lend(i) {
			 
			 var temp = brifeinfo[i][0];
			 var id = brifeinfo[i][1];
			 var date=new Date;
			 var year=date.getFullYear(); 
			 var month=date.getMonth()+1;
			 var day = date.getDate();
			 var hour = date.getHours();
			 var minutes = date.getMinutes();
			 var seconds = date.getSeconds();
			 month =(month<10 ? "0"+month:month); 
			 var mydate = (year.toString()+"-"+month.toString()+"-"+day.toString()+"  "+hour.toString()+":"+minutes.toString()+":"+seconds.toString()); 
			 alert(temp+"\nLend Requirement Send! On "+mydate);
			 document.getElementById("div2").innerHTML = newdiv1;
			 //window.location.href="lendUpdate.action?device ="+temp+"&id="+id+"&date="+mydate+"";
		}
		//*************************************Repaire**********************************************//
	    var newdiv1 = "<div><form action='deviceRepair' method='post'>";
		
		newdiv1+="<table width='600' align='center' border='3'  cellpadding='7' style='color:#bac9ee;'><caption><font style='font-size:24px;font-family:黑体'>设备报废单</font></caption>";  
		newdiv1+="<tr><th></th>"; 
		newdiv1+="<th scope='col'>Entry</th>";
		newdiv1+="<th scope='col'>Example</th></tr>"; 
 
		 
		newdiv1+="<tr><th scope='row'>编号</th>";
		newdiv1+= "<td><input type='text' name='id' id='id' style='width:200px;height:20px;background-color:#bac9bb;'></td>";
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
			<h3 style="height: 20px;margin-bottom: 0px;FONT-FAMILY: 黑体">当前位置:>搜索结果</h3>
				<div id="home" class="main_box">
					<fieldset style="padding-left: 20px;padding-top: 30px;padding-bottom: 20px;">
							<div id="looper" >	
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