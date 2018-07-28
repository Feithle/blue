<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link href="../css/styleoflogin.css" rel="stylesheet" type="text/css">
    <link href="../css/styleofcreate.css" rel="stylesheet">
    <script src="../js/jsofcreate.js"></script>     
     
</head>
<body>
<form action="/innovate/Servlet/CreateServlet" method="post">
    <!--头部--> 
    <div class="header">
        <a class="logo" href="##"></a>
        <div class="desc">欢迎注册</div>
    </div>
    <!--版心-->
    <div class="container">
    
    	<div class="register">
    		<!--用户名-->
    		<div class="register-box">
    			<!--表单项-->
    			
    			<div class="box default">
    				<label for="userName">用&nbsp;户&nbsp;名</label>
    				<input id="userName"  name ="username"type="text" placeholder="您的账户名和登录名">
    				<i></i>
    			</div>
    			<!--提示信息-->
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    	
    		<div class="register-box">
    			
    			<div class="box default">
    				<label for="pwd">设 置 密 码</label>
    				<input id="pwd" name="password"type="password" placeholder="建议至少两种字符组合">
    				<i></i>
    			</div>
    		
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		
    		<div class="register-box">
    			
    			<div class="box default">
    				<label for="pwd2">确 认 密 码</label>
    				<input id="pwd2" name="password" type="password" placeholder="请再次输入密码">
    				<i></i>
    			</div>
    			
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
			
    		<div class="register-box">
    			
    			<div class="box default">
    				<label for="email">邮 箱 验 证</label>
    				<input id="email" name="email" type="text" placeholder="请输入邮箱">
    				<i></i>
    			</div>
    			
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		
    		<div class="register-box">
    			
    			<div class="box default">
    				<label for="mobile">手 机 验 证</label>
    				<input id="mobile" name="mobile" type="text" placeholder="请输入手机号">
    				<i></i>
    			</div>
    			
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<div class="register-box">
    			
    			<div class="box default">
    				<label for="platnumber">平台编号</label>
    				<input id="platnumber" name="platnumber" type="text" placeholder="请输入平台编号">
    				<i></i>
    			</div>
    			
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<div class="register-box">
    			
    			<div class="box default">
    				<label for="ratifydate">批准年月</label>
    				 <input id="ratifydate" name="ratifydate" type="text" placeholder="请输入批准日期" >
    				
    				<i></i>
    			</div>
    			
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<div class="register-box">
    			
    			<div class="box default">
    				<label for="ratifydate">批准文号</label>
    				<input id="ratifynumber" name="ratifynumber" type="text" placeholder="请输入批准文号">
    				<i></i>
    			</div>
    			
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		
    		 <div class="register-box">
    			
    			<div class="box default">	
   			<label for="tec">技术领域</label>  
			<input id="tec" name="tec" type="text" placeholder="请输入技术领域">
			<a href="http://www.gaoxinbutie.com/faq/461.html">高新技术领域目录 </a>
    				<i></i>
    			</div>
    			
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		
    		<div class="register-box xieyi">
    			
    			<div class="box default">
    				<input id="ck" name="ck" type="checkbox">
    				<span>我已阅读并同意<a href="##">《用户注册协议》</a></span>
    			</div>
    			
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		<input class="btn-settlement"  type="submit" value="注     册 " >
    	</div>
    	
    </div>
</form>
</body></html>