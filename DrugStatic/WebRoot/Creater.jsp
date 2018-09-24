<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/all.css"/>
    <script src="js/my.js"></script>

    <style>
    .sub{
    display: inline-block; vertical-align: middle; padding: 12px 24px; margin: 0px; font-size:16px; line-height: 24px; text-align: center; white-space: nowrap; vertical-align: middle; cursor: pointer; color: #ffffff; background-color: #27A9E3; border-radius: 3px; border: none; -webkit-appearance: none; outline:none; width:100%; 
}
    </style>
</head>
<body>
<form action="/DrugStatic/Servlet/CreateServlet" method="post">
    <!--å¤´é¨-->
    <div class="header">
        <a class="logo" href="##"></a>
        <div class="desc">欢迎注册药品统计系统</div>
    </div>
    	
    <div class="container">
  
    	<div class="register">
    	
    		<div class="register-box">
    			
    			<div class="box default">
    				<label for="userName">用户名&nbsp;&nbsp;</label>
    				<input type="text" id="userName" name="username "placeholder="用户名或登录名" />
    				<i></i>
    			</div>
    			 
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		 
    		<div class="register-box">
    			 
    			<div class="box default">
    				<label for="pwd">密码</label>
    				<input type="password" id="pwd" name="password" placeholder="密码" />
    				<i></i>
    			</div>
    		 
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		 
    		<div class="register-box">
    			 
    			<div class="box default">
    				<label for="pwd2">密码</label>
    				<input type="password"name="password" id="pwd2"  placeholder="再次输入密码" />
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
    				<input type="text" id="email" name="email"placeholder="邮箱账号" />
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
    				<input type="text" id="mobile" name="phonenumber" placeholder="手机号" />
    				<i></i>
    			</div>
    			 
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		 
    		<div class="register-box xieyi">
    			 
    			<div class="box default">
    				<input type="checkbox" id="ck" />
    				<span>我已认真阅读<a href="##">《用户手册》</a></span>
    			</div>
    			 
    			<div class="tip">
    				<i></i>
    				<span></span>
    			</div>
    		</div>
    		 
    		<input type="submit" value = "注册" class ="sub">
    		
    	</div>
    
    </div>
    	</form>
</body>
</html>