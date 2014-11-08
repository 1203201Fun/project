<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
<form action="login" method="post">
    <table align="center">
    	<tr>
    		<td><input type="text" name="userName" style="width: 281px"/>&nbsp&nbsp 用户名</td>
    	</tr>
    	<tr>
    		<td><input type="text" name="passWord" style="width: 281px"/>&nbsp&nbsp 密码</td>
    	</tr>
    	<tr align="center">
    		<td colspan="1"><input type="submit" value="login" style="width: 100px; "/>
    		</td>
        </tr>	 
    </table>
    </form>


  </body>
</html>
