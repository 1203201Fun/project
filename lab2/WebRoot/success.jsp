<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SearchResult.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script>
		var writerlist = new Array();
		var records = new Array();
		var short_record = new Array();
		var lines = 0;
		
		window.onload = function main() {
			<s:iterator value="authorlist" id="s1">
				<s:iterator value="s1" id = "str" status="st">
					writerlist[<s:property value="#st.index"/>] = "<s:property value="str"/>";
				</s:iterator>
			</s:iterator>
			
			<s:iterator value="mylist" id="s3">
				records[lines] = new Array();
				<s:iterator value="s3" id = "dir" status="lin">
					records[lines][<s:property value="#lin.index"/>] = "<s:property value="dir"/>";
				</s:iterator>
				lines += 1;
			</s:iterator>
			
			lines = 0;
			
			<s:iterator value="smallist" id="s4">
				short_record[lines] = new Array();
				<s:iterator value="s4" id = "q" status="stt">
					short_record[lines][<s:property value="#stt.index"/>] = "<s:property value="q"/>";
				</s:iterator>
				lines += 1;
			</s:iterator>
			
			var Creat_table = document.getElementById("looper");
			var INNER = "<table align='center' border='5'  cellpadding='7' width='900' table bgcolor ='#4b4b4b' bordercolor='#c1c1c1'>";
			INNER += "<caption><h1><font color='#dedede'>查询结果</h1></caption>";
			INNER += "<tr><th align = 'center' style=‘width: 300px' ><font color='#dedede'>Title</th><th align = 'center'  style='width: 300px' ><font color='#dedede'>Author</th><th align = 'center'  style='width: 300px'><font color='#dedede'>Operate</th></tr>";
			
			for(var i=0; i<lines; i++){
				INNER += "<tr><td align='center'><font color='#dedede'>"+short_record[i][0]+"</td>";
				INNER += "<td align='center'><font color='#dedede'>"+short_record[i][1]+"</td>";
				INNER += "<td align='center'><font color='#dedede'><input value='Details' type='button' style='width:150px' onclick='javascript:exhibition("+i+")'/><input value='Delete' type='button' style='width:150px' onclick='javascript:deletebook("+i+")'/></td></tr>";	
			}
			INNER += "</table>";
			
			Creat_table.innerHTML = INNER;
		}
		
		function exhibition(i) {
			var words = "Name ：" +writerlist[0]+"\nAge ："+writerlist[1]+"\nCountry ："+writerlist[2]+"\nISBN ："+records[i][3]+"\nTitle ："+records[i][0]+"\nPublisher ："+records[i][3] + "\nPublishDate ："+records[i][4]+"\nPrice ："+records[i][5];
			alert(words);
		}
		function deletebook(i) {
			 
			 var temp = short_record[i][0];
			 alert(temp+"delete success!");
			 window.location.href="Delete.action?bookname="+temp+"";
			}
		
	</script>


  </head>
  
  <body bgcolor ="#353535">
  	<br>
	<div id="looper">	
	</div>
 <br><br>
<table align="center"  width="700">
	<td align="right" colspan="2">
            <input type="button"onclick="javascript:location.href='Update.jsp'" value="更新书本"
			style="width: 118px; ">
             <input type="button" value="补充书本"
			onclick="javascript:location.href='failed.jsp'"
			style="width: 118px; " />
   </table>

    <table align="center">
    <br><br><br>
    	<h4 align="right"><a href="index.jsp"><font color='#dedede'>Back</a></h4>
    </table>
	
		
  </body>
</html>
