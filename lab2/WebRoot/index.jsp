
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  </head>
     </br>
    		<h1  align="center" style="font-family:黑体"><font color="#dedede">欢迎使用图书管理系统</h1>
    	</br>
  <body bgcolor ="#353535">
  
    
    <form action="Search" method="post">
    <table align="center">
    	<tr>
    		<td><input type="text" name="bookname" style="width: 281px;background:#e2e2e2"/><font color="#dedede">&nbsp&nbsp 书名查询</td>
    	</tr>
    	<tr>
    		<td><input type="text" name="writername" style="width: 281px; background:#e2e2e2"/><font color="#dedede">&nbsp&nbsp 作者查询</td>
    	</tr>
    	</table>
    	</br>
    	<table align="center">
    	<tr align="center">
    		<td colspan="1"><font color="#dedede"><input type="submit" value="确定" style="width: 100px; "/>
    		</td>
        </tr>	 
    </table>
    </form>
  </body>
</html>
