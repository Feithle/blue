<%@page import="Bean.BasicMessage"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    
    <title>表单页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../resources/dropkick/dropkick.css" rel="stylesheet" type="text/css" />
    <link href="../resources/easyui/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../resources/css/default.css" rel="stylesheet" type="text/css" />
    <link href="../resources/css/themes.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../resources/js/jquery.1.11.3.min.js"></script>
    <script type="text/javascript" src="../resources/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../resources/dropkick/jquery.dropkick-min.js"></script>
    <script type="text/javascript" src="../resources/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../resources/js/pop.js"></script>
    <script type="text/javascript" src="../resources/js/myfunctions.js"></script>
    <script type="text/javascript" src="../resources/js/frame.js"></script>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../bootstrap/css/font-awesome.css" />
    <link rel="stylesheet" href="../css/commonSearch.css" />
    <script type="text/javascript" src="../bootstrap/js/jquery.js" ></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="../js/commonSearch.js" ></script>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
   <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
   <script type="text/javascript" src="../js/script.js"></script>
   <link href="http://piccache.cnki.net/kdn/kns/css/gb_min/ResultComp.min.css?v=" rel="stylesheet" type="text/css">
    <link href="http://login.cnki.net/TopLogin/Content/TopLogin.css" rel="stylesheet">
    <script src="http://piccache.cnki.net/kdn/kns/script/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="http://piccache.cnki.net/kdn/kns/script/min/gb.ResultPage.min.js?v=D59787997F3B8FCE" type="text/javascript"></script>
    <script src="http://piccache.cnki.net/kdn/kns/script/min/cnkisug.min.js?v=D59787997F3B8FCE" type="text/javascript"></script>
    <script src="http://piccache.cnki.net/kdn/kns/script/min/CnkiAidInput.min.js?v=D59787997F3B8FCE" type="text/javascript"></script>
    <script src="http://piccache.cnki.net/kdn/kns/script/min/visual.min.js" type="text/javascript"></script>
   <style>
   
</style>
</head>
<body class="body-theme-1">


<div class="div-header">

    <div class="container-fluid">
        <div class="header-title">项目管理系统</div>
        <ul class="nav navbar-nav navbar-right">
           <li><a href="HomePage.html">首页</a></li>
            <li><a href="shouYe.html">后台首页</a></li>
            <!--<li class="dropdown">-->
    
        </ul>
    </div><!-- container-fluid -->


</div><!-- div_header -->

<div class="div-catalog">
    <div class="header-menu">
            <ul>
            <li>
                <a class="active" href="javascript:;">
                    <span class="glyphicon glyphicon-time"></span>项目统计管理</a>
            </li>
            <li>
                <a href="javascript:;">
                    <span class="glyphicon glyphicon-folder-open"></span>项目待审核管理</a>
            </li>
            <li>
                <a href="javascript:;">
                    <span class="glyphicon glyphicon-calendar"></span>项目批准管理</a>
            </li>
            <li>
                <a href="javascript:;">
                    <span class="glyphicon glyphicon-pencil"></span>申请管理</a>
            </li>
            <li>
                <a href="javascript:;">
                    <span class="glyphicon glyphicon-tasks"></span>用户管理</a>
            </li>
        </ul>
    </div><!-- header-menui -->
    <div class="dc-title">
        <div class="dc-name"><span class="glyphicon glyphicon-file"></span> 管理</div>
    </div>
</div><!-- catalog -->


<div class="div-leftside-bg">
</div>
<div class="div-leftside">

    <div class="leftside-switch" onclick="LeftNav.toggle()">
        <span class="caret"></span>
    </div>



    <div class="left-nav">
        <div class="left-nav-group">
            <div class="lng-toggle"><span class="caret"></span></div>
            <h2>菜单</h2>
            <ul>
                <li><a  href="/innovate/pages/conditions.html">分类浏览</a></li>
                <li><a href="/innovate/pages/conditions.html">多条件查询</a></li>
                 <li><a class="active" href="/innovate/Servlet/ChartServlet">数据图表</a></li>
                <li><a href="youCeTiShi.html">标签</a></li>
                <li><a href="tanChuKuang.html">标签</a></li>
                <li><a href="xiaLaLieBiao.html">标签</a></li>
                <li><a href="youCeJinDu.html">标签</a></li>
                <li><a href="shu.html">标签</a></li>
                <li><a href="easyui_grid.html">标签</a></li>
            </ul>
        </div><!-- left-nav-group -->





    </div><!-- left-nav -->


</div><!-- div_leftside -->


<div class="div-rightside">

    <!-- 组结束 -->

<div >
<!-- content -->

<h1 style="margin-left:27%;color:#9acfea">各技术领域项目分布情况</h1>
<span></span>
<span style="margin-left: 55%">————<%  
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(    
     "yyyy-MM-dd HH:mm:ss");    
   java.util.Date currentTime = new java.util.Date();    
   String time = simpleDateFormat.format(currentTime).toString();  
   out.println("统计结果更新至："+time);  
     %> </span>
<div id="chart" style="width:1000px;height:500px;margin-left: 5%; border: 1px solid #9acfea"></div>

  <script type="text/javascript" src="../js/flotr2.min.js"></script>
<script type="text/javascript"> 
<%
String [] ChartNumber=(String [])request.getAttribute("Number");
%>
 	var data=[
 	{data:[[0,<%=ChartNumber[0]%>]],label:"电子信息"},
 	{data:[[0,<%=ChartNumber[1]%>]],label:"生物与新医药"},
 	{data:[[0,<%=ChartNumber[2]%>]],label:"航空航天"},
 	{data:[[0,<%=ChartNumber[3]%>]],label:"新材料"},
 	{data:[[0,<%=ChartNumber[4]%>]],label:"高技术服务"},
 	{data:[[0,<%=ChartNumber[5]%>]],label:"新能源与节能"},
 	{data:[[0,<%=ChartNumber[6]%>]],label:"资源与环境"},
 	{data:[[0,<%=ChartNumber[7]%>]],label:"先进制造与自动化"},
 	//[[0,22.4]],label:"电子信息"[[1,77.6]]
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

</div><!-- main-frame -->

</div><!-- div-rightside -->


</body>
</html>