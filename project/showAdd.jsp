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
		
		var brifeinfo = new Array();
		var total = 0;
		
		window.onload = function(){
			
			<s:iterator value="addInfolist" id="s4">
				brifeinfo[total] = new Array();
				<s:iterator value="s4" id = "q" status="st">
					brifeinfo[total][<s:property value="#st.index"/>] = "<s:property value="q"/>";
				</s:iterator>
				total += 1;
			</s:iterator>
			
			
			var Creat_table = document.getElementById("looper");
			var INNER = "<table   style='color:#bac9ee;' align='center' border='5'  cellpadding='7' width='600'>";
			
			for(var i=0; i<total; i++){
				INNER += "<tr class='altrow'><th style ='font-size:16px;font-size:微软雅黑;'>编号</th><td align='center'>"+brifeinfo[i][0]+"</td></tr>";
				INNER += "<tr><th style ='font-size:16px;font-size:微软雅黑;'>名称</th><td align='center'>"+brifeinfo[i][1]+"</td></tr>";
				INNER += "<tr class='altrow'><th style ='font-size:16px;font-size:微软雅黑;'>型号</th><td align='center'>"+brifeinfo[i][2]+"</td></tr>";
				INNER += "<tr><th style ='font-size:16px;font-size:微软雅黑;'>规格</th><td align='center'>"+brifeinfo[i][3]+"</td></tr>";
				INNER += "<tr class='altrow'><th style ='font-size:16px;font-size:微软雅黑;'>所属部门</th><td align='center'>"+brifeinfo[i][4]+"</td></tr>";
				INNER += "<tr><th style ='font-size:16px;font-size:微软雅黑;'>领用人</th><td align='center'>"+brifeinfo[i][5]+"</td></tr>";
				INNER += "<tr class='altrow'><th style ='font-size:16px;font-size:微软雅黑;'>使用目的</th><td align='center'>"+brifeinfo[i][6]+"</td></tr>";
				INNER += "<tr><th style ='font-size:16px;font-size:微软雅黑;'>项目编号</th><td align='center'>"+brifeinfo[i][7]+"</td></tr>";
			}
			
			
			INNER += "</table>";
			Creat_table.innerHTML = INNER;
			
			
			return;
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
				<h3 style="height: 20px;margin-bottom: 0px;FONT-FAMILY: 黑体">当前位置:>添加设备</h3>
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