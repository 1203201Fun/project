<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'failed.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  <h3></br></br><font color="#dedede">没有检索到相关书籍</h3>
  <body bgcolor ="#353535">
      <form action="BookAdd" method="post">
 <table align="center" border="5"  cellpadding="7" width="900" table bgcolor ="#4b4b4b" bordercolor="#c1c1c1">
    	
    	<tr>
    		<td><input type="text" name="bookname" style="width: 250px; background:#e2e2e2"/><font color="#dedede"><font color="#dedede">&nbsp&nbsp Title</td>
    		<td><input type="text" name="writername" style="width: 250px; background:#e2e2e2"/><font color="#dedede">&nbsp&nbsp Author</td>
    	</tr>
    	<tr>
    		<td><input type="text" name="isbn" style="width: 250px; background:#e2e2e2"/><font color="#dedede">&nbsp&nbsp ISBN</td>
    		<td><input type="text" name="publisher" style="width: 250px; background:#e2e2e2"/><font color="#dedede">&nbsp&nbsp Publisher</td>
    	</tr>
    	<tr>
    		<td><input type="text" name="publishdate" style="width: 250px;background:#e2e2e2 "/><font color="#dedede">&nbsp&nbsp PublishDate</td>
    		<td><input type="text" name="price" style="width: 250px;background:#e2e2e2 "/><font color="#dedede">&nbsp&nbsp Price</td>
    	</tr>
    	<tr>
    		<td><input type="text" name="age" style="width: 250px; background:#e2e2e2"/><font color="#dedede">&nbsp&nbsp AuthorAge</td>
    		<td><input type="text" name="country" style="width: 250px; background:#e2e2e2"/><font color="#dedede">&nbsp&nbsp Country</td>
    	</tr>
    	<tr align="center">
    		<td></td>
    		<td colspan="1"><input type="submit" value="补充书本" style="width: 120px; "/>
    		</td>
        </tr>	 
    </table>
    </form>
  </body>
</html>
