<%@page import="java.util.List"%>
<%@page import="Value.ValueMsg"%>
<%@page import="Dao.MsgDao"%>
<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script> 

<script type="text/javascript">
$(function(){ 
	$(".add").click(function(){ 
	var t=$(this).parent().find('input[class*=text_box]'); 
	t.val(parseInt(t.val())+1) 
	setTotal(); 
	}) 
	$(".min").click(function(){ 
	var t=$(this).parent().find('input[class*=text_box]'); 
	t.val(parseInt(t.val())-1) 
	if(parseInt(t.val())<0){ 
	t.val(0); 
	} 
	setTotal(); 
	}) 
	
	function setTotal(){ 
	var s=0; 
	$("#tab td").each(function(){ 
	s+=parseInt($(this).find('input[class*=text_box]').val())*parseFloat($(this).find('span[class*=price]').text()); 
	}); 
	$("#total").html(s.toFixed(2)); 
	} 
	setTotal(); 

	}) 
	</script>

<link rel="stylesheet" type="text/css" href="Rstyle.css">
</head>
<body bgcolor="#E4EEF9">
<marquee scrollamount="6" ><span style="color: blue;size:20px;font-size: 50px">本店炒菜</span></marquee>
<%
	MsgDao dao=new MsgDao();
	List<ValueMsg> valuemsgs=dao.loadFriedDish();
		for(ValueMsg valueMsg:valuemsgs ){
			String dsd=valueMsg.getDishname(); 
			//session.setAttribute("qwe", dsd);//可以用变量进行接收数据库传过来的值
%>
<div class="style1" id="style3">
<form action="getMenu.jsp?dishname=<%=valueMsg.getDishname()%>&price=<%=valueMsg.getPrice()%>" target="lastFrame" method="post">
<img src=<%=valueMsg.getPhoto()%> title="<%=valueMsg.getIntroduce()%>"/><br>
<table style="width: 140px">
	<tr>
		<td colspan="2" align="left" title="???"><%=valueMsg.getDishname()%></td>
		<td colspan="1" align="right" title="???"><%=valueMsg.getPrice()%></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
			<input class="min" name="" type="button" value="-" /> 
			<input class="text_box" name="number" type="text" value="0" style="width: 30px"/> 
			<input class="add" name="" type="button" value="+" /> 
		</td>
	</tr>
	<tr>
		<td colspan="3" align="center"><input type="submit"  value="添加 " ></td>
	</tr>
</table>
</form>
</div>
<%
	}
%>
</body>
</html>