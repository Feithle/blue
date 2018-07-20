<%@page import="Bean.BasicMessage"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
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
    <head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
    td{
    	text-align:center;
    }
     body{
        background: d4f4ff;
      
    }
    table{
       
      	margin-left:10%;
      	margin-right:10%;
        text-align:center;
        margin-top:20px;
        border: #f4f5f1;
       
    }	
    </style>
    <link href="../css/shengsanji.css" rel="stylesheet" type="text/css">
    <script src="../js/jquery-1.8.2.min.js"></script>     
     <script src="../js/province.js"></script>  
      <script src="../js/shengsanji.js"></script>  
         <link href="../css/jingjisanji.css" rel="stylesheet" type="text/css">

    	 <script src="../js/jingji.js"></script>  
      	<script src="../js/jingjisanji.js"></script>  
     <link href="../css/xuekesanji.css" rel="stylesheet" type="text/css">
         <link href="http://piccache.cnki.net/kdn/kns/css/gb_min/ResultComp.min.css?v=" rel="stylesheet" type="text/css">
    <link href="http://login.cnki.net/TopLogin/Content/TopLogin.css" rel="stylesheet">
    <script src="http://piccache.cnki.net/kdn/kns/script/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="http://piccache.cnki.net/kdn/kns/script/min/gb.ResultPage.min.js?v=D59787997F3B8FCE" type="text/javascript"></script>
    <script src="http://piccache.cnki.net/kdn/kns/script/min/cnkisug.min.js?v=D59787997F3B8FCE" type="text/javascript"></script>
    <script src="http://piccache.cnki.net/kdn/kns/script/min/CnkiAidInput.min.js?v=D59787997F3B8FCE" type="text/javascript"></script>
    <script src="http://piccache.cnki.net/kdn/kns/script/min/visual.min.js" type="text/javascript"></script>
     <script src="../js/xueke.js"></script>  
      <script src="../js/xuekesanji.js"></script> 
      <script type="text/javascript">
	function addInput(){
		var fdiv=document.getElementById("addInput");
		fdiv.innerHTML+='<div style="float: float;"><input type="text" name="unincom"/><input type="button" onclick="del(this)" value="删除"/><div>';
	}
	
	function del(obj){
		obj.parentNode.parentNode.removeChild(obj.parentNode);
	}
</script>
</head>
    
</head>
<body class="body-theme-1">


<!--  
<div class="div-header">

    <div class="container-fluid">
        <div class="header-title">平台信息填报系统</div>
        <ul class="nav navbar-nav navbar-right">
           <li><a href="HomePage.html">首页</a></li>
            <li><a href="shouYe.html">后台首页</a></li>
            <!--<li class="dropdown">-->
    
        </ul>
    </div><!-- container-fluid -->


</div><!-- div_header -->

  <!--
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
        
    </div><!-- header-menui 
    -->
    <!-- 
     <div class="dc-title">
        <div class="dc-name"><span class="glyphicon glyphicon-file"></span> 管理</div>
    </div>
   
</div><!-- catalog 



<!--  <div class="div-leftside-bg">
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


<div >

    <!-- 组结束 -->

<div><!-- 基本信息填写 -->
<input type="hidden" name="resolution" id="resolution" value="">
<form action="/innovate/Servlet/BasicServlet" method="post">
<table border="2px" summary="河北省科技创新平台年报统计表">
<h3 style="margin-left:45%;color:#9acfea">基础信息填写</h3>
<span></span>
<span style="margin-left: 65%;color:red">注意：提交后将不可修改，确认无误后再提交 </span>
  <% 
  String username=(String)request.getSession().getAttribute("username");
  if(username==null){
  username="";
  }%>
   <% 
  String password=(String)request.getSession().getAttribute("password");
  if(password==null){
  password="";
  }%>
     <% 
  String platnumber=(String)request.getSession().getAttribute("platnumber");
  if(platnumber==null){
  platnumber="";
  }%>   <% 
  String ratifydate=(String)request.getSession().getAttribute("ratifydate");
  if(ratifydate==null){
  ratifydate="";
  }%>
   <% 
  String ratifynumber=(String)request.getSession().getAttribute("ratifynumber");
  if(ratifynumber==null){
  ratifynumber="";
  }%>
   <% 
  String tec=(String)request.getSession().getAttribute("tec");
  if(tec==null){
  tec="";
  }%>
  <tr>
    <td width="11%" height="36">平台名称</td>
    <td colspan="2"><input type="text" name="username" value="<%=username %>"><input type="hidden" name="password" value="<%=password%>"></td>
    <td colspan="3">平台编号</td>
    <td colspan="4"><input type="text" name="platnumber" value="<%=platnumber %>"></td>
  </tr>
  <tr>
    <td height="38">批准年月</td>
    <td colspan="2"><input name="ratifydate" id="publishdate_from" onkeypress="SignVal(this,'sign',event)" onclick="this.value = '';getDateString(this, oCalendarChs);ChangeYearOrTime(this,'publishdate','updatedateN');" onchange="RenewDateOpt('publishdate_from','date_opt','publishdate_to');ChangeYearOrTime(this,'publishdate','updatedateN');" onpaste="return SignVal(this,'value',event)" type="text" size="20" maxlength="20" value="<%=ratifydate %>" width="100px">
    <td colspan="3">批准文号</td>
    <td colspan="4"><input type="text" name="ratifynumber" value="<%=ratifynumber %>"></td>
  </tr>
  <tr>
    <td height="34">技术领域</td>
    <td colspan="9"><input type="text" name="tec" value="<%=tec %>"></td>
  </tr>
  <tr>
    <td>平台级别</td>
    <td colspan="2">
      <p>
        <label>
          <input type="checkbox" name="platleve" value="国家级"  />
          国家级</label><br />
        <label>
          <input type="checkbox" name="platleve" value="省级"  />
          省级</label>
        <br />
      </p>
   </td>
    <td colspan="3">所在市县（区）</td>
    <td colspan="4">
      <div class="row" style="margin-left:0px;">
        <div class="container1 a">
          <div class="right">
            <div>
              <ul>
                <li class="right-body" id="updateinfo">
                  <div>
                    <div class="right-info">
                      <div class="province">
                        <div class="provincexs">北京</div><!--把选的值放入这个div里-->                                              
                        <span class="dianprovince"></span><!--下拉选项按钮-->
                        <div class="quanprovince">    <!--结果窗口-->
                          <ul class="ulprovince"></ul>
                        </div>
                        
                      </div>
                    
                      <div class="city" width="100">
                        <div class="cityxs">北京</div><!--把选的值放入这个div里-->
                        <span class="diancity"></span><!--下拉选项按钮-->
                        <div class="quancity">    <!--结果窗口-->
                          <ul class="ulcity"></ul>
                        </div>
                        
                      </div>
                      <div class="area" width="150px">
                        <div class="areaxs">朝阳区</div><!--把选的值放入这个div里-->
                        <span class="dianarea"></span><!--下拉选项按钮-->
                        <div class="quanarea">    <!--结果窗口-->
                          <ul class="ularea"></ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <input type="hidden" id="county1" name="county1">
      <input type="hidden" id="county2" name="county2">
      <input type="hidden" id="county3" name="county3">
    </td>
  </tr>
  <tr>
    <td rowspan="2">平台组织形态</td>
    <td colspan="2" rowspan="2">
        <p>
          <label>
            <input type="radio" name="platorg" value="内设机构相对独立(无法人资格)"  /></label>
          内设机构相对独立(无法人资格）</p>
    </td>
    <td colspan="3" rowspan="2"><p align="left">
      <label>
        <input type="radio" name="platorg" value="独立法人"  /><!---***********************-->
      </label>
独立法人<br/>
<label>
  <input type="radio" name="platorg" value="企业法人"i  />
</label>
企业法人 <br />
<label>
  <input type="radio" name="platorg" value="事业法人"  />
</label>
事业法人<br />
<label>
  <input type="radio" name="platorg" value="社团法人" />
</label>
社团法人</p></td>
    <td colspan="4">
      <p>
          <label>
            <input type="radio" name="platorg" value="多单位共建" /></label>
          多单位联合共建<br />
          <label>
            <input type="radio" name="platorg" value="依托单位独自建设" /></label>
          依托单位独自建设<br />
        </p>
  </td>
  </tr>
  <tr>
    <td colspan="2">京津冀共建</td>
    <td colspan="2">
        <p>
          <label>
            <input type="radio" name="platorg" value="是"  />
            是</label>
          <br />
          <label>
            <input type="radio" name="platorg" value="否"  />
            否</label>
          <br />
        </p>
      </td>
  </tr>
  <tr>
    <td height="60"><p align="center">服务的主要国民经济行业</p></td>
    <td colspan="9">
      <div class="row" style="margin-left:0px;">
        <div class="container1 a">
          <div class="right">
            <div>
              <ul>
                <li class="right-body" id="updateinfo">
                  <div>
                    <div class="right-info">
                      <div class="da">
                        <div class="daxs">北京</div><!--把选的值放入这个div里-->
                        <span class="dianda"></span><!--下拉选项按钮-->
                        <div class="quanda">    <!--结果窗口-->
                          <ul class="ulda"></ul>
                        </div>
                      </div>
                      <div class="zhong">
                        <div class="zhongxs">北京</div><!--把选的值放入这个div里-->
                        <span class="dianzhong"></span><!--下拉选项按钮-->
                        <div class="quanzhong">    <!--结果窗口-->
                          <ul class="ulzhong"></ul>
                        </div>
                      </div>
                      <div class="xiao">
                        <div class="xiaoxs">朝阳区</div><!--把选的值放入这个div里-->
                        <span class="dianxiao"></span><!--下拉选项按钮-->
                        <div class="quanxiao">    <!--结果窗口-->
                          <ul class="ulxiao"></ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <input type="hidden" id="econfirst" name="econfirst">
      <input type="hidden" id="econscon" name="econfirst">
      <input type="hidden" id="econthir" name="econfirst">
    </td>
  </tr>
  <tr>
    <td height="40">所属的主要学科</td>
    <td colspan="9">
      <div class="row" style="margin-left:0px;">
        <div class="container1 a">
          <div class="right">
            <div>
              <ul>
                <li class="right-body" id="updateinfo">
                  <div>
                    <div class="right-info">
                      <div class="yi">
                        <div class="yixs">北京</div><!--把选的值放入这个div里-->
                        <span class="dianyi"></span><!--下拉选项按钮-->
                        <div class="quanyi">    <!--结果窗口-->
                          <ul class="ulyi"></ul>
                        </div>
                      </div>
                      <div class="er">
                        <div class="erxs">北京</div><!--把选的值放入这个div里-->
                        <span class="dianer"></span><!--下拉选项按钮-->
                        <div class="quaner">    <!--结果窗口-->
                          <ul class="uler"></ul>
                        </div>
                      </div>
                      <div class="san">
                        <div class="sanxs">朝阳区</div><!--把选的值放入这个div里-->
                        <span class="diansan"></span><!--下拉选项按钮-->
                        <div class="quansan">    <!--结果窗口-->
                          <ul class="ulsan"></ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </td>
  </tr>
  <tr>
    <td height="39">依托单位名称</td>
    <td colspan="2">
        <label for="relycomname"></label>
        <input type="text" name="relycomname"  />
    </td>
    <td colspan="5"><p align="center">依托单位组织机构代码（社会信用代码)</p></td>
    <td colspan="2">
        <label for="relycomcode"></label>
        <input type="text" name="relycomcode" />
    </td>
  </tr>
  <tr>
    <td height="40">依托单位法人代表姓名</td>
    <td colspan="2">
      <label for="relycomlegl"></label>
      <input type="text" name="relycomlegl"  />
   </td>
    <td colspan="3">办公电话</td>
    <td colspan="4">
      <label for="relycompho"></label>
      <input type="text" name="relycompho"  />
    </td>
  </tr>
  <tr>
    <td height="57">依托单位类型</td>
    <td colspan="9">
      <p>
        <label>
          <input type="radio" name="relycomtype" value="企业"  />
          企业&nbsp;</label>
        
        <label>
          <input type="radio" name="relycomtype" value="科研机构"  /></label>
        科研机构&nbsp;
        <label>
          <input type="radio" name="relycomtype" value="高等院校"  /></label>
        高等院校&nbsp;
        <label>
          <input type="radio" name="relycomtype" value="检测机构"  /></label>
        检测机构&nbsp;
        <label>
          <input type="radio" name="relycomtype" value="医疗机构"/>
          医疗机构 </label>
     
        <label>
          <input type="radio" name="relycomtype" value="政府机构" /></label>
        政府机构&nbsp;
        <label>
          <input type="radio" name="relycomtype" value="社团组织"  /></label>
        社团组织 &nbsp;
        <label>
          <input type="radio" name="relycomtype" value="其他" /></label>
        其他&nbsp;
      </p>
    </td>
  </tr>
  <tr>
    <td height="46">共建单位</td>
    <td colspan="9">
      <label for="unincom"></label>
      <div id="addInput" style="float: float;">
					<div style="float: float;">
					<input type="text" name="unincom" >
					<input type="button" onclick="del(this)" value=""/>
					</div>
				</div>
					<input type="button" onclick="addInput()" value="添加"/>
    </td>
  </tr>
  <tr>
    <td rowspan="3">平台主任(院长)</td>
    <td width="7%">姓名</td>
    <td width="16%">
        <label for="deanname"></label>
        <input type="text" name="deanname"  />
    </td>
    <td colspan="2">性别</td>
    <td width="16%">
      <label for="deangender"></label>
      <input type="text" name="deangender"  />
    </td>
    <td width="4%"><p align="center">出生年月</p></td>
    <td width="16%">
      <label for="deanborndate"></label>
      <input type="text" name="deanborndate"  />
    </td>
    <td width="2%">职称</td>
    <td width="16%">
      <label for="deantitl"></label>
      <input type="text" name="deantitl"  />
    </td>
  </tr>
  <tr>
    <td>所学专业</td>
    <td>
      <label for="deanmajor"></label>
      <input type="text" name="deanmajor"/>
   </td>
    <td colspan="2">学历</td>
    <td>
      <label for="deaneducation"></label>
      <input type="text" name="deaneducation"  />
    </td>
    <td colspan="2">学位</td>
    <td colspan="2">
      <label for="deandegree"></label>
      <input type="text" name="deandegree"  />
   </td>
  </tr>
  <tr>
    <td>办公电话</td>
    <td>
      <label for="deanpho"></label>
      <input type="text" name="deanpho" />
   </td>
    <td colspan="2">手机</td>
    <td>
      <label for="deanmobil"></label>
      <input type="text" name="deanmobil"/>
   </td>
    <td colspan="2">E-mail</td>
    <td colspan="2">
      <label for="deanemail"></label>
      <input type="text" name="deanemail" />
    </td>
  </tr>
  <tr>
    <td height="38">平台网站名称</td>
    <td colspan="4">
      <label for="platwebsite"></label>
      <input type="text" name="platwebsite" "/>
    </td>
    <td>网址</td>
    <td colspan="4">
      <label for="platurl"></label>
      <input type="text" name="platurl"  />
    </td>
  </tr>
  <tr>
    <td height="38">平台通讯地址</td>
    <td colspan="4">
      <label for="platmailing"></label>
      <input type="text" name="platmailing"  />
    </td>
    <td>邮编</td>
    <td colspan="4">
      <label for="plataddress"></label>
      <input type="text" name="plataddress"  />
   </td>
  </tr>
  <tr>
    <td height="38" colspan="10"><input   type="submit" value="提交" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="保存"></td>
  </tr>
</table>
</form>

</div>

</div><!-- main-frame -->

</div><!-- div-rightside -->


</body>
</html>