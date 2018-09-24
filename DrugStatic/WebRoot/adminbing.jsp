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
    	<span></span>
<span style="margin-left: 55%">————<%  
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(    
     "yyyy-MM-dd HH:mm:ss");    
   java.util.Date currentTime = new java.util.Date();    
   String time = simpleDateFormat.format(currentTime).toString();  
   out.println("统计结果更新至："+time);  
     %> </span>
        <div id="chart" style="width:1000px;height:500px;margin-left: 15%; border: 1px solid #9acfea">
  
  	<%
	List<ChartBean> chartBeans=(List<ChartBean>)request.getAttribute("chartBeans");
	
	%>
<%//String c=String.valueOf(chartBeans.get(0).getTypenumber());%><%//String b=String.valueOf(chartBeans.get(0).getTypename());%>
<%//=c %><%//=b%>
  </div>

<script type="text/javascript" src="js/flotr2.min.js"></script>
<script type="text/javascript"> 
	var a=0;
 	var data=[
			
 		<%//for(int a=1;a<chartBeans.size();a++)%>
 		<%//{%>
 		 	{data:[[0,<%=String.valueOf(chartBeans.get(0).getTypenumber())%>]],label:"生物制品"},
 		 	 	{data:[[0,<%=String.valueOf(chartBeans.get(1).getTypenumber())%>]],label:"营养治疗药物"},
 		 	 	 	{data:[[0,<%=String.valueOf(chartBeans.get(2).getTypenumber())%>]],label:"循环系统药物"},
 		 	 	 	 	{data:[[0,<%=String.valueOf(chartBeans.get(3).getTypenumber())%>]],label:"泌尿系统药物"},
 		 	 	 	 	 	{data:[[0,<%=String.valueOf(chartBeans.get(4).getTypenumber())%>]],label:"抗微生物药"},
 		 	 	 	 	 	 	{data:[[0,<%=String.valueOf(chartBeans.get(5).getTypenumber())%>]],label:"消化系统药物 "},
 		<%//}%>	
 	];
 	window.onload=function (){
 	Flotr.draw(
 		
 		document.getElementById("chart"),
 		data,//数据
 		{//配置
			pie:{show:true},yaxis:{showLabels:false},	//y轴取消
			xaxis:{showLabels:false},
			grid:{
				horizontalLines:false,
				verticalLines:false
			}
 		}
 	);
 	
 	};
</script>

	</div>
        </div>
    </div>
</div>
      </body>
</html>
