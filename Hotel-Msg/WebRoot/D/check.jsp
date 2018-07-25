<%@page import="Value.ValueMsg"%>
<%@page import="Dao.MsgDao"%>
<%@page import="java.util.List"%>
<%@page import="Util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	MsgDao dao=new MsgDao();
	List<ValueMsg> valuemsgs=dao.loadHaveMenu();

	for(ValueMsg valueMsg:valuemsgs ){
%>
		<%=valueMsg.getNumber()%>
<%
	}
%>

