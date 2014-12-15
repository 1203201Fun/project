<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<html lang="en">
<head>
    <title>Device Manage</title>
    <link rel="stylesheet" href="<%=basePath%>/picture/slider/images/themes/default/default.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<%=basePath%>/picture/slider/images/themes/pascal/pascal.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<%=basePath%>/picture/slider/images/themes/orman/orman.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<%=basePath%>/picture/slider/css/nivo-slider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<%=basePath%>/picture/slider/css/style.css" type="text/css" media="screen" />
</head>
<body>
    <div id="wrapper">
    
        <a href="http://dev7studios.com" id="dev7link" title="Go to dev7studios">dev7studios</a>

        <div class="slider-wrapper theme-default">
            <div class="ribbon"></div>
            <div id="slider" class="nivoSlider">
                <a href="userInfo.action"><img src="picture/slider/images/toystory.jpg" alt="" title="User Information"/></a>
                <a href="guestSearch.jsp"><img src="picture/slider/images/up.jpg" alt="" title="Device Search" /></a>
                <a href="checkapply.action"><img src="picture/slider/images/walle.jpg" alt="" title="Check Application"/></a>
                <a href="writeTable.jsp"><img src="picture/slider/images/nemo.jpg" alt="" title="Upload Device" /></a>
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                <strong>This</strong> is an example of a <em>HTML</em> caption with <a href="#">a link</a>.
            </div>
        </div>

    </div>
    <script type="text/javascript" src="<%=basePath%>/picture/slider/js/jquery-1.6.1.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/picture/slider/js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
</body>
</html>