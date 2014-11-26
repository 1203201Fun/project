<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设备管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="设备管理系统,设备管理,设备">
	<meta http-equiv="description" content="设备管理系统">
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    
  </head>
  <link href="image/CSS/top.css" rel="stylesheet" type="text/css">
  <body>
  <div id="menu" align="center">
  	<ul>
  		<li><a href="index.jsp"><b>主页</b></a></li>
        <li><a href="show.action?order=1"><b>查询</b></a></li>
        <li><a href="show.action?order=2"><b>查询</b></a></li>
        <li><a href="show.action?order=3"><b>记录</b></a></li>
        <li><a href="show.action?order=4"><b>信息</b></a></li>
        <div style="height:35px; line-height:35px"><a href="login.jsp"><b>登陆</b></a></div>
  	</ul>
  </div>
  <link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/demo2.css" />
<script src="js/jquery-1.7.1.min.js"></script>
<script src="js/ipresenter.packed.js"></script>
<script>
	$(document).ready(function(){
		$('#ipresenter').iPresenter({
			animSpeed: 2000,
			timer: '360Bar',
			timerDiameter: 60,
			timerStroke: 5,
			timerPadding: 5,
			timerColor: '#000',
			timerBg: '#FFF',
			timerOpacity: 0.4,
			directionNav: false,
			controlNav: true
		});
	});
</script>
<div class="container" style="margin-top:-10px">
<div id="ipresenter">
	<div class="step" data-x="0" data-y="0" data-thumbnail="images/thumbs/895601241627423.jpg">
		<img src="images/photos/895601241627423.jpg" />
	</div>
	<div class="step" data-x="1500" data-y="0" data-rotatex="180" data-easing="easeInOutQuint" data-pausetime="15000" data-thumbnail="images/thumbs/895601241627428.jpg">
		<img src="images/photos/895601241627428.jpg" />
	</div>
	<div class="step" data-x="3000" data-y="0" data-rotatey="180" data-pausetime="2000" data-thumbnail="images/thumbs/895601241627432.jpg">
		<img src="images/photos/895601241627432.jpg" />
	</div>
	<div class="step" data-x="4500" data-y="0" data-rotatex="180" data-thumbnail="images/thumbs/895601241627445.jpg">
		<img src="images/photos/895601241627445.jpg" />
	</div>
	<div class="step" data-x="6000" data-y="0" data-rotate="180" data-thumbnail="images/thumbs/895601241627453.jpg">
		<img src="images/photos/895601241627453.jpg" />
	</div>
	<div class="step" data-x="7500" data-y="0" data-rotatey="180" data-thumbnail="images/thumbs/895601241627457.jpg">
		<img src="images/photos/895601241627457.jpg" />
	</div>
	<div class="step" data-x="9000" data-y="0" data-thumbnail="images/thumbs/895601241627459.jpg">
		<img src="images/photos/895601241627459.jpg" />
	</div>
	<div class="step" data-x="10500" data-y="0" data-rotate="80" data-thumbnail="images/thumbs/895601241627470.jpg">
		<img src="images/photos/895601241627470.jpg" />
	</div>
	<div class="step" data-x="12000" data-y="0" data-rotatex="180" data-thumbnail="images/thumbs/895601241627495.jpg">
		<img src="images/photos/895601241627495.jpg" />
	</div>
	<div class="step" data-x="13500" data-y="0" data-rotatey="180" data-scale="0.6" data-thumbnail="images/thumbs/895601241627526.jpg">
		<img src="images/photos/895601241627526.jpg" />
	</div>
	<div class="step" data-x="15000" data-y="0" data-rotatey="-180" data-thumbnail="images/thumbs/895601241627606.jpg">
		<img src="images/photos/895601241627606.jpg" />
	</div>
	<div class="step" data-x="16500" data-y="0" data-rotatey="180" data-thumbnail="images/thumbs/895601241627621.jpg">
		<img src="images/photos/895601241627621.jpg" />
	</div>
</div>
</div>
<!-- 代码 结束 -->
  </body>
</html>
