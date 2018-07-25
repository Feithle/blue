<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>酒店评价界面</title>
<head>

</head>
<style>

#wrapper {
    padding:50px 0;
    width:600px;
    margin:0 auto;
}
input {
    margin:20px auto;
    display:block;
}
input#button {
    /* General Propertoes */
    height:32px;
    width:250px;
    border:1px solid #858fa6;
    background:#4a5775;
    /* CSS3 Styling */
    background:-moz-linear-gradient(top, #606c88, #3f4c6b);
    background:-webkit-gradient(linear, left top, left bottom, from(#606c88), to(#3f4c6b));
    -moz-border-radius:5px;
    -webkit-border-radius:5px;
    border-radius:5px;
    -moz-box-shadow:0px 0px 5px #000;
    -webkit-box-shadow:0px 0px 5px #000;
    box-shadow:0px 0px 5px #000;
    /* Text Styling */
    font-family:'AirstreamRegular', Georgia, 'Times New Roman', serif;
    color:#e5edff;
    text-shadow:0px 0px 5px rgba(0, 0, 0, 0.75);
    font-size:30px;
}
/* Pseudo-classes for interactivity */
input#button:hover, input#button1:focus {
    border-color:#adbad9;
}
input#button:active {
    background:-moz-linear-gradient(bottom, #606c88, #3f4c6b);
    background:-webkit-gradient(linear, left bottom, left top, from(#606c88), to(#3f4c6b));
    text-shadow:0px 0px 2px #000;
}
body {
	font: 12px arial;
	text-align:;
	margin: 100;
	padding:0;
	list-style: none;
	
}
</style>
<body>
	<center>
		<form action="evaluateEND.jsp" method="get">
			<div
				style="	position: absolute;top: 50%;left: 50%;-webkit-transform:translate(-50%,-50%);-moz-transform:translate(-50%,-50%);transform:translate(-50%,-50%);">
			  <textarea style="border-color: #006699" onkeydown="checknum()"
					onkeyup="checknum()" rows="8" id="evaluate" name="evaluate"
					cols="50"></textarea>
				<script>
					function checknum() {
						var nMax = 500;
						var textDom = document.getElementById("evaluate");
						var len = textDom.value.length;
						if (len > nMax) {
							textDom.value = textDom.value.substring(0, nMax);
							return;
						}
						document.getElementById("in").value = "你还可以输入"
								+ (nMax - len) + "个字";
					}
					checknum();
				</script>

				<td align="left">
				<input type="text" disabled="disabled" id="in" style="color:red" />
				<input id="button" type="submit"
					 value="提交" /></td>
			</div>
		</form>

	</center>
</body>