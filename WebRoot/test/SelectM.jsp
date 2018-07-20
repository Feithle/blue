<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>多条件查询</title>
<script type="text/javascript" src="../js/jquery-1.4.2.js"></script>

<script type="text/javascript">
		$(function() {
			$("#tree").treeview({
				collapsed: true,
				animated: "medium",
				control:"#sidetreecontrol",
				persist: "location"
			});
		})
		
	</script>
<style type="text/css">
	a{
		text-decoration:none;
		color:#000;
	}
	body{

		margin:0px;
		border-top:3px solid #ccc;
		border-right:3px solid #ccc;
	}

</style>
<script type="text/javascript">
	$().ready(function (){
		var j = {first:'国家级',second:'省级'}
		var num = 0;
		$("#add").click(function (){
			if($("#filed1").length==1&&num==1){
				var $tab1 = $("<select  id='filed2' name='platformLevel'><option value='国家级' >国家级</option><option value='省级' selected='selected'>省级</option></select>");
				$tab1.appendTo($("#sel"));
				num=2;
			}
			if(num==0){
				var $tab1 = $("<select  id='filed1' name='platformLevel'><option value='国家级' selected='selected'>国家级</option><option value='省级'>省级</option></select>");
				$tab1.appendTo($("#sel"));
				num = 1;
				}
			
		})
		
		$("#reduce").click(function (){
			if($("#filed2").length==0&&$("#filed1").length==1){
				$("#filed1").remove();
				num=0;
			}
			if($("#filed2").length==1){
				$("#filed2").remove();
				num=1;
			}
		})
		
		$("#adds").click(function (){
			if($("input[name='sele']").length<4){
			$("#tab").append("<tr><td></td><td>"+"<select name='cho'>"+
					"<option value='and'>并且</option>"+
					"<option value='or'>或</option>"+
					"</select>"+"<td><select name='s'>"+
					"<option value='platformName'>平台名称</option>"+
					"<option value='filed'>技术领域</option>"+
					"<option value='address'>省份</option>"+
					"</select></td><td><input type='text' name='sele'/></td>"+"</td></tr>");
			}
			$("input[name='sele']").css({width:"98%"})
		})
		
		$("#reduces").click(function (){
			if($("#tab tr").length>3){
			$("#tab tr:last-child").remove();
			}
		})
		
		$("#sub").click(function (){
			if($("input[name='filed']").length==0){
				
			}
			$("input[name='sele']").each(function(){
				if(this.value==""){
					this.value="";
				}				  
			});
			$.ajax({
	            //几个参数需要注意一下
	                type: "POST",//方法类型
	                dataType: "json",//预期服务器返回的数据类型
	                url: "${pageContext.request.contextPath }/severlet/selectMServlet" ,//url
	                data: $('#form1').serialize(),
	                success: function (date) {
	                	$("#di tr:not(:first)").remove();	
						var htm = "";
						for(var i=0;i<date.length;i++){    //遍历data数组
// 						var ls = data[i];     
						htm+="<tr id='tri' class='rem' align='center' height='35px'>"
							+"<td>"+date[i].id+"</td>"
							+"<td>"+date[i].platformName+"</td>"
							+"<td>"+date[i].platformId+"</td>"
							+"<td>"+date[i].yearNumber+"</td>"
							+"<td>"+date[i].referenceNumber+"</td>"
							+"<td>"+date[i].filed+"</td>"
							+"<td>"+date[i].address+"</td>"
							+"</tr>"
							+"";
						}						
						$("#di").append(htm); //在html页面id=ulul的标签里显示html内容
	                },
	                error : function() {
	                    alert("异常！");
	                }
	            });
		})
	})
</script>
<style type="text/css">
	.top{
		width: 80%;
		height: auto;
		background-color: #F8F8F8;
		text-align: center;
		padding-top: 20px;
		border: 1px solid;
		margin-left: 5%;
/* 		padding-left: 30%; */
	}
	.di1{
		margin-top: 20px;
	}
	.top td{
		height: 23px;
	}
	.top tr{
		height: 25px;
	}
	.tab{
		border-collapse:collapse;
		width: 65%;
		margin-left: 10%;
	}
	.tab2{
		border-collapse:collapse;
		width: 80%;
		margin-left: 5%;
	}
	
	body{
		margin: 0;
	}
	input{
		height: 100%;
	}
	.in{
		margin-top: 5px;
		margin-left: 0px;
	}
	.ri{
		margin-left: 75%;
	}
	.divl{
		width: 15%;
		float: left;
		margin-left: 6%;
		border: 1px solid;
/* 		padding-left: 40px; */
	}
	.divr{
		width: 70%;
		float:left;
		margin-left: 2%;
	}
	.dse{
		width: 100%;
		height: 35px;
		background-color: #EAF2FD;	
		line-height: 35px;
	}
	.dse span{
		margin-left: 20px;
	}
</style>
</head>
<body>
<div class="divl">
<div class="dse"><span><strong><font color="blue">》文件检索目录</font></strong></span></div>
<div style="padding-left: 27px;" id="sidetree">
<div class="treeheader">&nbsp;</div>
<div id="sidetreecontrol"><a href="?#">收起所有</a> | <a href="?#">展开所有</a></div>
<br/>
<ul id="tree" style = "height:430px;">
	<li><a href="${pageContext.request.contextPath }/severlet/findByFiled" target="rightFrame"><strong>技术领域</strong></a>
	<ul>
		<li><a href="${pageContext.request.contextPath }/severlet/findByFiledBasis" target="rightFrame">基础研究</a>
		<ul>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledElectronic" target="rightFrame">电子信息</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledService" target="rightFrame">高技术服务</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledResources" target="rightFrame">资源与环境</a></li>
		</ul>
		</li>
		
		<li><a href="${pageContext.request.contextPath }/severlet/findByFiledOther" target="rightFrame">其他类型</a>
		<ul>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledManufacture" target="rightFrame">先进制造与自动化</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledBiology" target="rightFrame">生物与新医药</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledAviation" target="rightFrame">航空航天</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledMaterial" target="rightFrame">新材料</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledEnergy" target="rightFrame">新能源与节能</a></li>
		</ul>
		</li>

	</ul>
	</li>
<!-- 	分类二 -->
	<li><a href="${pageContext.request.contextPath }/severlet/findByFiled" target="rightFrame"><strong>技术领域</strong></a>
	<ul>
		<li><a href="${pageContext.request.contextPath }/severlet/findByFiledBasis" target="rightFrame">基础研究</a>
		<ul>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledElectronic" target="rightFrame">电子信息</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledService" target="rightFrame">高技术服务</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledResources" target="rightFrame">资源与环境</a></li>
		</ul>
		</li>
		
		<li><a href="${pageContext.request.contextPath }/severlet/findByFiledOther" target="rightFrame">其他类型</a>
		<ul>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledManufacture" target="rightFrame">先进制造与自动化</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledBiology" target="rightFrame">生物与新医药</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledAviation" target="rightFrame">航空航天</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledMaterial" target="rightFrame">新材料</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledEnergy" target="rightFrame">新能源与节能</a></li>
		</ul>
		</li>

	</ul>
	</li>
	
<!-- 	分类三 -->
	<li><a href="${pageContext.request.contextPath }/severlet/findByFiled" target="rightFrame"><strong>技术领域</strong></a>
	<ul>
		<li><a href="${pageContext.request.contextPath }/severlet/findByFiledBasis" target="rightFrame">基础研究</a>
		<ul>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledElectronic" target="rightFrame">电子信息</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledService" target="rightFrame">高技术服务</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledResources" target="rightFrame">资源与环境</a></li>
		</ul>
		</li>
		
		<li><a href="${pageContext.request.contextPath }/severlet/findByFiledOther" target="rightFrame">其他类型</a>
		<ul>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledManufacture" target="rightFrame">先进制造与自动化</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledBiology" target="rightFrame">生物与新医药</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledAviation" target="rightFrame">航空航天</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledMaterial" target="rightFrame">新材料</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledEnergy" target="rightFrame">新能源与节能</a></li>
		</ul>
		</li>
	</ul>
	</li>
<!-- 		分类四 -->
		<li><a href="${pageContext.request.contextPath }/severlet/findByFiled" target="rightFrame"><strong>技术领域</strong></a>
	<ul>
		<li><a href="${pageContext.request.contextPath }/severlet/findByFiledBasis" target="rightFrame">基础研究</a>
		<ul>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledElectronic" target="rightFrame">电子信息</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledService" target="rightFrame">高技术服务</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledResources" target="rightFrame">资源与环境</a></li>
		</ul>
		</li>
		
		<li><a href="${pageContext.request.contextPath }/severlet/findByFiledOther" target="rightFrame">其他类型</a>
		<ul>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledManufacture" target="rightFrame">先进制造与自动化</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledBiology" target="rightFrame">生物与新医药</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledAviation" target="rightFrame">航空航天</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledMaterial" target="rightFrame">新材料</a></li>
			<li><a href="${pageContext.request.contextPath }/severlet/findByFiledEnergy" target="rightFrame">新能源与节能</a></li>
		</ul>
		</li>
		
	</ul>
	</li>
<%-- 	<li><a href="${pageContext.request.contextPath }/jsp/leftFrame.jsp"><strong>返回主系统</strong></a></li> --%>
</ul>
</div>

</div>
<div class="divr">
<div class="top" id="top">
<form id="form1" action="">
	<table align="center" class="tab" id="tab" border="0">
		<tr style="font-family:微软雅黑"><td>输入检索条件：</td></tr>
		<tr>
			<td width="130px">添加平台级别：</td>
			
			<td width="52px"><a id="add" href="#"><img alt="" src="../images/01.gif"></a>
			<a id="reduce" href="#"><img alt="" src="../images/02.gif"></a></td>
			<td height="23px" id="sel"><input type="hidden"name="platformLevel" value="1"/>
			</td>
		</tr>
		<tr>
			<td width="40px">添加检索条件：</td>
			<td width="60px">
			<a id="adds" href="#">
			<img alt="" src="../images/01.gif"></a>
			<a id="reduces" href="#"><img alt="" src="../images/02.gif"></a>
			<input type="hidden" name="cho" value="and"/>
			</td>
			<td width="153px">
				<select name="s">
					<option value="platformName">平台名称</option>
					<option value="filed">技术领域</option>
					<option value="address">省份</option>
				</select>
			</td>
			<td colspan="1"><input type="text" style="width: 98%" name="sele"/></td>
		</tr>
	</table>
</form>
<table class="ri" border="0">
	<tr>
	<td>
		<input class="in" style="width: 76px;height: 28px;font-size: 20px;" onclick="select()" id="sub" type="button" value="检索"/>
	</td>
	</tr>
</table>
</div>
<div class="di1" id="di1">
	<table id="di"  border="1" class="tab2">
		<tr align="center" height="35px">
			<td>id</td>
			<td>平台名称</td>
			<td>平台编号</td>
			<td>批准年月</td>
			<td>批准编号</td>
			<td>技术领域</td>
			<td>所在地区</td>
		</tr>
	</table>
</div>
</div>
</body>
</html>