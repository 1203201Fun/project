<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix = "s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showchange.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
<h3 style="width: 194px; "><font color="#dedede">完成增加/更新</h3>
 <body bgcolor ="#353535">
   <table align="center" border="5"  cellpadding="7" width="900" table bgcolor ="#4b4b4b" bordercolor="#c1c1c1">
     <tr>
     	<th align = "center" style="width: 100px; "><font color="#dedede">Name</th>
     	<th align = "center" style="width: 100px; "><font color="#dedede">Writer</th>
     	<th align = "center" style="width: 250px; "><font color="#dedede">ISBN</th>
     	<th align = "center" style="width: 150px; "><font color="#dedede">Publisher</th>
     	<th align = "center" style="width: 150px; "><font color="#dedede">PublishDate</th>
     	<th align = "center" style="width: 150px; "><font color="#dedede">Price</th>
     <tr/>
<s:iterator value = "mylist" id = "s1">
<tr>
	<s:iterator value="s1" id = "s2">
		<td align="center"><font color="#dedede"><s:property value = "s2"/></td>
	</s:iterator>
</tr>
</s:iterator>
</table>
<table align = center>
<br><br><br>
    	<h4 align="right"><a href="index.jsp"><font color='#dedede'>return</a></h4>
    </table>
	</body>
</html>
