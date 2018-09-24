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
	  <link rel="stylesheet" href="css/all.css"/>
	<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<style type="text/css">
	    .sub{
    display: inline-block; vertical-align: middle; padding: 12px 24px; margin: 0px; font-size:16px; line-height: 24px; text-align: center; white-space: nowrap; vertical-align: middle; cursor: pointer; color: #ffffff; background-color: #27A9E3; border-radius: 3px; border: none; -webkit-appearance: none; outline:none; width:100%; 
}
	</style>
  </head>
  
  <body>
    <div class="nav-top">
	<span>个人后台管理系统</span>
    <div class="nav-topright">
    </div>
</div>
<div class="nav-down">
	<div class="leftmenu1">
        <div class="menu-oc"><img src="images/menu-all.png" /></div>
    	<ul>
        	<li>
            	<a class="a_list a_list1">全局设置</a>
                <div class="menu_list menu_list_first">
                	<a class="lista_first" href="#">基本设置</a>
                    <a href="#">其他设置</a>
                    <a href="#">界面风格</a>
                    <a href="#">系统工具</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list2">权限管理</a>
                <div class="menu_list">
                	<a href="#">基本权限</a>
                    <a href="#">分配权限</a>
                    <a href="#">权限管理</a>
                    <a href="#">成员管理</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">新闻管理</a>
                <div class="menu_list">
                	<a href="#">新闻中心</a>
                    <a href="#">添加新闻</a>
                    <a href="#">修改新闻</a>
                    <a href="#">删除新闻</a>
                </div>
            </li>
            <li>
            	<a class="a_list a_list3">新闻管理</a>
                <div class="menu_list">
                	<a href="#">新闻中心</a>
                    <a href="#">添加新闻</a>
                    <a href="#">修改新闻</a>
                    <a href="#">删除新闻</a>
                </div>
            </li>
        </ul>
    </div>
    <div class="leftmenu2">
    	<div class="menu-oc1"><img src="images/menu-all.png" /></div>
        <ul>
        	<li>
            	<a class="j_a_list j_a_list1"></a>
                <div class="j_menu_list j_menu_list_first">
                	<span class="sp1"><i></i>全局设置</span>
                	<a class="j_lista_first" href="#">饼图</a>
                    <a href="#">折线图</a>
                    <a href="#">柱状图</a>
                    <a href="#">雷达图</a>
                </div>
            </li>
            <li>
            	<a class="j_a_list j_a_list2"></a>
                <div class="j_menu_list">
                	<span class="sp2"><i></i>权限管理</span>
                	<a href="#">基本权限</a>
                    <a href="#">分配权限</a>
                    <a href="#">权限管理</a>
                    <a href="/DrugStatic/chengyuan.jsp">成员管理</a>
                </div>
            </li>
      
        </ul>
        
    </div>
    <div class="rightcon">
    	<div class="right_con">
        
	<div class="register">
    	
    		<div class="register-box">
    		<%String name=request.getParameter("id");%>
    			<form action="/DrugStatic/Servlet/UpdateServlet" method="post" >
    			<div class="box default">
    				<label for="userName">用户名&nbsp;&nbsp;</label>
    				<input type="text" id="" name="username" value="<%=name %>"placeholder="用户名或登录名" />
    				<i></i>
    			</div>
    			 
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		 
    		
    		 
    		
			 
    		<div class="register-box">
    			 
    			<div class="box default">
    				<label for="email">邮箱</label>
    				<input type="text" id="" name="email"placeholder="邮箱账号" />
    				<i></i>
    			</div>
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<div class="register-box">
    			<!--è¡¨åé¡¹-->
    			<div class="box default">
    				<label for="mobile">电话</label>
    				<input type="text" id="" name="phonenumber" placeholder="手机号" />
    				<i></i>
    			</div>
    			 
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		 
    		
    		 
    		<input type="submit" value = "更改" class ="sub">
    		</form>
    	</div>
        </div>
    </div>
</div>
      </body>
</html>
