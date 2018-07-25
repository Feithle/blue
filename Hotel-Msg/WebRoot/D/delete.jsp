<%@page import="Util.Factory"%>
<%@page import="Dao.MsgDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	int id = Integer.parseInt(request.getParameter("id"));
%>
<%=id %>
<%
	MsgDao msgDao = new MsgDao();
	msgDao.delete(id);
	response.sendRedirect("./list.jsp");
%>
