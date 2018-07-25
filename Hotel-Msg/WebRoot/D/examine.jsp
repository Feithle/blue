<%@page import="Dao.MsgDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<body style="background:url('../图片/主食/米饭.jpg') no-repeat;">
<%
  	 int money=Integer.parseInt(request.getParameter("money"));
 	 Class.forName("com.mysql.jdbc.Driver");
  	 String sUrl = "jdbc:mysql://localhost:3306/hotel_msg";
	 String sUser = "root";
	 String sPassword = "root";
 	 Connection conn = DriverManager.getConnection(sUrl, sUser, sPassword);
  	 conn.setCatalog("hotel_msg");
     Statement stmt =conn.createStatement();
  	 String sSql="select * from t_havemenu";
  	 ResultSet rs=stmt.executeQuery(sSql);
%>
<div style="color: red ;font-size: 30px;text-align: center" >确定账单</div>
<table border="1" align="center">	
	

<%
 	 while(rs.next()){
%>
  	 <tr>
   	     <td><%=rs.getObject(2) %></td>
    	 <td><%=rs.getObject(3) %></td>
    	 <td><%=rs.getObject(4) %></td>
    	 <td><%=rs.getObject(5) %></td>      
     </tr> 
<% 
}
%>
</table>
<%
  rs.close();
  conn.close();
%>
<div style="color: red ;font-size: 30px;text-align: center" ><%=money %></div>
<div style="color: red ;font-size: 30px;text-align: center" >请支付</div>
<%	MsgDao msgDao=new MsgDao();
	msgDao.deleteMath();
%>
<input type="button" style="height:50px;width:200px ;font-size:30px " onclick="javascript:window.location.href='Action.jsp';" value="再次进行点菜" /> 

</body>