<%@page import="Value.ValueMsg"%>
<%@page import="java.util.List"%>
<%@page import="Dao.MsgDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#E4EEF9">
<%
	int money=0;
%>

<table>
<tr>
	<td>菜品名</td>
	<td>数量</td>
	<td>操作</td>
</tr>

<%
	MsgDao dao1=new MsgDao();
	List<ValueMsg> valuemsgs1=dao1.loadHaveMenu();
	for(ValueMsg valueMsg2:valuemsgs1 ){
		 money+=valueMsg2.getSumPrice();
%>

	<tr>
		<td><%=valueMsg2.getDishname()%></td>
		<td align="center"><%=valueMsg2.getNumber()%></td>
		<td> <a href="delete.jsp?id=<%=valueMsg2.getId() %>" >取消</a></td>
	</tr>


<%
	}
%>

</table>
<form  target="_parent" action="examine.jsp?money=<%=money%>" method="post">
<div>当前总价：<%=money %></div>

	<input type="submit" style="height:50px;width:200px ;font-size:30px "  value="结账" /> 
</form>
</body>
</html>
	