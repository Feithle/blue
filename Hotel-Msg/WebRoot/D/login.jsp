<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
<script language="javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.12.1.js"></script>
<script language="javascript"
	src="${pageContext.request.contextPath}/js/myValidate.js"></script>
<script language="javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>

<script type="text/javascript">
</script>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body onload="createCode()">
	<div align="center">
		<form role="form"
			action="${pageContext.request.contextPath}/UserServlet?method=login"
			method="post" id="checkFrom">
		<div >
			<label for="username">账&nbsp号</label> <input name="wd" class="s_ipt" id="kw"
								maxlength="255" value="" autocomplete="off"> 
			</div>	
				
		<div>	<label for="password">密&nbsp码</label> <input id="password"
				name="password" type="password" value="" placeholder="Password" />
		</div>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
			<div>
				
				 &nbsp;&nbsp;&nbsp;&nbsp;
			<input class="bg s_btn" id="su"
								type="submit" value="登录"></div>
			<a href="create.jsp">注册</a>
			<c:if test="${param.status.equals('1')}">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
				<div class="alert alert-danger" role="alert">用户名或密码错误</div>
			</c:if>
		</form>
	</div>
</body>
</html>