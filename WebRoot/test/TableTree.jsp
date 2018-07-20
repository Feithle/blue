<%@page import="Bean.BasicMessage"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>
<meta charset="utf-8" />
<title>闭包演示</title>
<style>
tr{
text-align:center;
}
td{
text-align:center;
}
table{
width:80%;
}
</style>
</head>
<body>
<%
List<BasicMessage> basicMessages =new ArrayList<BasicMessage>();
basicMessages=(List<BasicMessage>) request.getAttribute("users");
 %>
 <div>
	<table border="1px">
	<tr colspan="3" >分类结果</tr>
	<tr>
		<td>平台名称</td>
		<td>平台编号</td>
		<td>技术领域</td>
		<td>平台级别</td>
	</tr>
	<%for(int i=0;i<basicMessages.size();i++) {%>

	<tr>
	<td><%=basicMessages.get(i).getUsername() %></td>
	<td><%=basicMessages.get(i).getPlatnumber() %></td>
	<td><%=basicMessages.get(i).getTec() %></td>
	<td><%=basicMessages.get(i).getPlatleve()%></td>
	</tr>
	<%}%>
	</table>
	</div>
</body>

</html>