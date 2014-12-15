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
		<!-- 时间选择框 -->
		<script type="text/javascript" src="blue/doubleDate2.0.js"></script>
		<link href="blue/doubleDate.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
			$(function() {
				//time box
				$('.doubledate').kuiDate({
					className: 'doubledate',
					isDisabled: "1"
				});
			})
		</script>

	</head>

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


			<div id="templatemo_main" style="height: 700px;padding-top: 10px;">
			<h3 style="height: 20px;margin-bottom: 0px;FONT-FAMILY: 黑体">当前位置:>设备搜索</h3>
				<div id="home" class="main_box">
					<fieldset style="padding-left: 150px;padding-top: 30px;padding-bottom: 20px;">
						<form action="guestsearch" method="post">
							<legend style="color:#bac9ee;" ><font size=3px>输入设备名称</font></legend>
							<input class="searchfield" style="width:200px;height:20px;background-color:#bac9bb;" type="text" name="device" value="" id="oText" onfocus="borderColor(this);" onblur="clearTimeout(oTime);" />


							<legend style="color:#bac9ee;" ><font size=3px>管理类型</legend>
							<select id="managetype" name="managetype">
								<option value="0" >科研仪器</option>
								<option value="1">家具</option>
							</select>
							<ul class="iptgroup" style="padding-left: 0px;">
								<legend style="color:#bac9ee;" ><font size=3px>购置起始日期</legend>
								<li class="f-left">
									<input type="text" readonly="readonly" class="doubledate ipticon" name="start" style="border:1px #333333 solid;width:200px;height:20px;" />
								</li>
							</ul>
							</br>
							<ul class="iptgroup" style="padding-left: 0px;">
								<legend style="color:#bac9ee;" ><font size=3px>购置终止日期</legend>
								<li class="f-left">
									<input type="text" readonly="readonly" class="doubledate ipticon" name="end" style="border:1px #333333 solid;width:200px;height:20px;" />
								</li>
							</ul>
					</br></br>
							<legend style="color:#bac9ee;" ><font size=3px>经手人</legend>
							<input class="searchfield" style="width:200px;height:20px;background-color:#bac9bb;" type="text" name="handler" value="" />

							<legend style="color:#bac9ee;" ><font size=3px>领用人</legend>
							<input class="searchfield" style="width:200px;height:20px;background-color:#bac9bb;" type="text" name="recipient" value="" />
							<legend style="color:#bac9ee;" ><font size=3px>购置日期</legend>
							<input class="searchfield" style="width:200px;height:20px;background-color:#bac9bb;" type="text" name="buydate" value="" />
							</br>
							</br>
							<input type="submit" style="width:100px;height:30px" value="搜索" />
						</form>
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