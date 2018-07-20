<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
  
<div id="chart" style="width:600px;heught:300px;">

</div>
<script type="text/javascript" src="../js/flotr2.min.js"></script>
<script type="text/javascript"> 
 	var wins=[[[2006,13],[2007,14],[2008,16]]];
 	window.onload=function (){
 	Flotr.draw(
 		document.getElementById("chart"),
 		wins,
 		{
			bars:{show:true} 		
 		}
 	);
 	
 	};
</script>
  </body>
</html>
