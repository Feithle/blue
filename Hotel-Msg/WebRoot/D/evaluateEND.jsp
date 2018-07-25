<%@page import="Dao.MsgDao"%>
<%@page import="Value.ValueMsg"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<body bgcolor="#E4EEF9">
<%  String Evaluate=request.getParameter("evaluate");
	ValueMsg addmsg=new ValueMsg();
	addmsg.setEvaluate(Evaluate);
	MsgDao msgdao = new MsgDao();
	try{
		msgdao.AddEvaluate(addmsg);
	}
	catch(Exception q)
	{                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
		q.printStackTrace();
	
	}
	//向数据库写入用户写的评论
%>
<%=Evaluate %>
<div  style="color:blue ; font-size:30px ; text-align: center " >您提出的宝贵意见我们已经接收到了呢</div>
<div  style="color:blue ; font-size:30px ; text-align: center " >真心感谢对我们酒店提出宝贵意见</div>
<div  style="color:blue ; font-size:30px ; text-align: center " >我们日后一定会进行改进的</div>
<div style="text-align:center;height:80px;weight:200px;">
	<button style=" text-align: center;height:50px;width:250px;background:orange;font-size:30px" onclick="javascript:window.location.href='Action.jsp';">返回菜单界面</button>
	 
</div>
</body>