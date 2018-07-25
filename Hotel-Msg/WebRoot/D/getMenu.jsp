<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dao.MsgDao"%>
<%@page import="Value.ValueMsg"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user show</title>
</head>
<body>
<%String dishname=request.getParameter("dishname"); %>
<%int price=Integer.parseInt(request.getParameter("price"));%>
<%int number=Integer.parseInt(request.getParameter("number"));%>
<%int sumPrice=number*price; %>
<%  ValueMsg valueMsg=new ValueMsg();
	MsgDao dao=new MsgDao();
	List<ValueMsg> valuemsgs=dao.loadHaveMenu();
	valueMsg.setDishname(dishname);
	valueMsg.setNumber(number);
	valueMsg.setPrice(price);
	valueMsg.setSumPrice(sumPrice);
	valueMsg.getId();
	try{
		if(number!=0)
		dao.add(valueMsg);
	}
	catch(Exception q)
	{
		q.printStackTrace();
	}
%>
<jsp:forward page="list.jsp"></jsp:forward>
