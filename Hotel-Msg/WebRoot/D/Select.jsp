<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索</title>
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
  
  <body>
 <form action="Select.jsp">
	<table>
		<tr>
			<td><font color="blue" size="8px">本店特色</font></td>
			<td style="width: 150px"></td>
			<td style="width: 400px; "><input type="text" name="select"/></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td><input class="bg s_btn" id="su" type="submit" value="搜索"/></td>
		</tr>
	</table>
</form>


  </body>
</html>
