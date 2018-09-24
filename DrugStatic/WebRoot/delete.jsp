<%@page import="java.sql.Statement"%>
<%@page import="Util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Bean.UserBean"%>
<%@page import="java.sql.Connection"%>
<%@page import="Bean.ChartBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminbing.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
  </head>
  
  <body>
 
       <%
       			String name= request.getParameter("id");
       			Connection connection =DBUtil.getConnection();
       			UserBean userBean =null;
       			List<UserBean> userBeans=new ArrayList<UserBean>();
       			
       			Statement statement=null;
       			//PreparedStatement preparedStatement =null;
       			//ResultSet resultSet =null;
       			String sql="DELETE  from usertb where username='"+name+"'";
       			//preparedStatement=connection.prepareStatement(sql);
       			statement=connection.createStatement();
       			statement.executeUpdate(sql);
       			
       			/*while(resultSet.next()){
       				userBean = new UserBean();
       				userBean.setUsername(resultSet.getString("username"));
       				userBean.setPassword(resultSet.getString("password"));
       				userBean.setPhonenumber(resultSet.getString("phonenumber"));
       				userBean.setEmail(resultSet.getString("email"));
       				userBeans.add(userBean);
       			}*/
       			response.sendRedirect("./chengyuan.jsp");
       			
        %>
    

      </body>
</html>
