<%@page import="Bean.BasicMessage"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ConditionResult.jsp' starting page</title>
    
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
<%
List<BasicMessage> basicMessages =new ArrayList<BasicMessage>();
basicMessages=(List<BasicMessage>) request.getAttribute("users");
 %>
 <div>
	<table border="1px">
	<tr colspan="3" >查询结果</tr>
	<tr>
		<td>平台名称</td>
		<td>技术领域</td>
		<td>平台级别</td>
		<td>平台省份（市）</td>
		<td>平台经济领域</td>
		<td>平台涉及学科</td>
		<td>平台依托单位类型</td>
	</tr>
	<%for(int i=0;i<basicMessages.size();i++) {%>

	<tr>
	<td><%=basicMessages.get(i).getUsername() %></td>
	<td><%=basicMessages.get(i).getTec() %></td>
	<td><%=basicMessages.get(i).getPlatleve()%></td>
	<td><%=basicMessages.get(i).getCounty1()%></td>
	<td><%=basicMessages.get(i).getEconfirst ()%></td>
	<td><%=basicMessages.get(i).getSubjectfirst()%></td>
	<td><%=basicMessages.get(i).getRelycomtype ()%></td>
	</tr>
	<%}%>
	</table>
	</div>
</body>
</html>
