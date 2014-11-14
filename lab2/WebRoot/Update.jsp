<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Updata.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head></br></br>
<h3><font color="#dedede">更新书籍</h3>
  <body bgcolor ="#353535">
         <form action="Update" method="post">
    <table align="center" border="5"  cellpadding="10" width="900" table bgcolor ="#4b4b4b" bordercolor="#c1c1c1">
    	
    	<tr>
    		<td><input type="text" name="bookname" style="width: 250px; background:#e2e2e2"/><font color="#dedede">&nbsp&nbsp Title</td>
    	
    		<td><input type="text" name="writername" style="width: 250px;background:#e2e2e2 "/><font color="#dedede">&nbsp&nbsp Author</td>
    	</tr>
    	</br>
    	<tr>
    		<td><input type="text" name="isbn" style="width: 250px;background:#e2e2e2 "/><font color="#dedede">&nbsp&nbsp ISBN</td>
    
    		<td><input type="text" name="publisher" style="width: 250px;background:#e2e2e2 "/><font color="#dedede">&nbsp&nbsp Publisher</td>
    	</tr>
    	</br>
    	<tr>
    		<td><input type="text" name="publishdate" style="width: 250px;background:#e2e2e2 "/><font color="#dedede">&nbsp&nbsp PublishDate</td>
  
    		<td><input type="text" name="price" style="width: 250px;background:#e2e2e2 "/><font color="#dedede">&nbsp&nbsp Price</td>
    	</tr>
    	
    	<tr align="right">
    		<td></td>
    		<td colspan="1"><input type="submit" value="Update" style="width: 140px; "/>
    			
    		</td>
        </tr>	 
    </table>
    </form>
  </body>
</html>
