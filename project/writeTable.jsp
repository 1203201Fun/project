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
					<fieldset style="padding-left: 20px;padding-top: 30px;padding-bottom: 20px;padding-right: 20px;">
					<form action="writeTable" method="post">
				<h3>设备增加单</h3>
				</br>
				<table  class = 'datalist' border="3" width="600" style="color:black;">
					<tr>
					<th style="font-size:16px;font-family: '微软雅黑';">名称</th>
					<th style="font-size:16px;font-family: '微软雅黑';">型号</th>
					<th style="font-size:16px;font-family: '微软雅黑';">所属部门</th>
					<th style="font-size:16px;font-family: '微软雅黑';">数量</th>
					</tr>
					<tr  class='altrow'>
						<td><input type="text" name="device" id="device" value = "${device}" style="width:160px;height:20px;background-color:transparent;"></td>
						<td><input type="text" name="model" id="model" value = "${model}" style="width:160px;height:20px;background-color:transparent;"></td>
						<td>${department}</td>
						<td><input type="text" name="number" id="number" value = "${number}" style="width:160px;height:20px;background-color:transparent;"></td>
					</tr>
					<tr>
					<th style="font-size:16px;font-family: '微软雅黑';">领用人</th>
					<th colspan=2 style="font-size:16px;font-family: '微软雅黑';">规格</th>
					<th style="font-size:16px;font-family: '微软雅黑';">经手人</th>
					</tr>
						<tr  class='altrow'>
							<td style="height: 50;"><input type="text" name="recipient" id="recipient" value = "${recipient}" style="width:160px;height:20px;background-color:transparent;"></td>
							<td colspan=2><input type="text" name="describle" id="describle" value = "${describle}" style="width:320px;height:20px;background-color:transparent;"></td>
							<td><input type="text" name="handler" id="handler" value = "${handler}" style="width:160px;height:20px;background-color:transparent;"></td>
					    </tr> 
					<tr>
					<th colspan=2 style="font-size:16px;font-family: '微软雅黑';">使用目的</th>
					<th style="font-size:16px;font-family: '微软雅黑';">项目编号</th>
					<th style="font-size:16px;font-family: '微软雅黑';">PIN码</th>
					</tr>
					<tr  class='altrow'>
						<td colspan=2><input type="text" name="usefor" id="usefor" value = "${usefor}" style="width:320px;height:20px;background-color:transparent;"></td>
						<td><input type="text" name="projid" id="projid" value = "${projid}" style="width:160px;height:20px;background-color:transparent;"></td>
						<td><input type="text" name="pin" id="pin" value = "${pin}" style="width:160px;height:20px;background-color:transparent;"></td>
					</tr>
					<th style="font-size:16px;font-family: '微软雅黑';">出厂日期</th>
					<th style="font-size:16px;font-family: '微软雅黑';">生产厂家</th>
					<th style="font-size:16px;font-family: '微软雅黑';">价格</th>
					<th style="font-size:16px;font-family: '微软雅黑';">购置日期</th>
					</tr>	
						<tr  class='altrow'>
							<td ><input type="text" name="birthday" id="birthday" value = "${birthday}" style="width:160px;height:20px;background-color:transparent;"></td>
							<td><input type="text" name="factory" id="factory" value = "${factory}" style="width:160px;height:20px;background-color:transparent;"></td>
							<td><input type="text" name="price" id="price" value = "${price}" style="width:160px;height:20px;background-color:transparent;"></td>
							<td><input type="text" name="buydate" id="buydate" value = "${buydate}" style="width:160px;height:20px;background-color:transparent;"></td>
					    </tr> 
				</table>
				</br>
				<p style="color:#bac9cc;font-size:16px;font-family:微软雅黑">购置日期请填写：XXXX-XX-XX格式</p>
				</br>
				<fieldset>
					<legend style="color:#bac9ee;font-size:16px;font-family: '微软雅黑';">设备图片:</legend>
					<label for="imgpath" style="color:#bac9ee;font-size:13px;font-family: '微软雅黑';">照片上传</label>
					<input type="file" id="imgpath" accept=".jpg" name="imgpath"/> 
					<input type="reset" value="重置" id="reset" name="reset" />
				</fieldset>  
				</br><input type="submit" value="暂存" style="width:100px;height:30px"/>
				<input type="button" value="提交" style="width:100px;height:30px" onclick = "javascript:send()"/>
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
<script>
function send(){
	alert("!!");
	window.location.href="upload.action?device=${device}";
}
</script>
</html>