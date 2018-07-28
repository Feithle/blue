/**
 * 
 */
/**
 * 
 */

$(function(){

	$("body").click(function(){//点击空白处隐藏，使用e.stopPropagation()阻止事件冒泡
		$(".quanda").hide();
		$(".quanzhong").hide();
		$(".quanxiao").hide();
	});
	//下拉列表获取地址
	var strSHENG = document.querySelector('.ulda').outerHTML;  //获取class为ulda的outerHTML
	var strSHI = document.querySelector('.ulzhong').outerHTML;  //获取class为ulzhong的outerHTML
	var strQU = document.querySelector('.ulxiao').outerHTML;  //获取class为ulzhong的outerHTML
	//从js库里得到所有的数据
	var sfgsmr = daList;
	var sfxz = 0;
	var csxz = 0;
	var qyxz = 0;
	/*省*/
	 document.querySelector('.dianda').onclick=function(e){
		document.querySelector('.quanda').style.display="block";//下拉窗口显示
		e.stopPropagation();
		var str = strSHENG.substring(0, strSHENG.length - 5);  //获取strSHENG的第0-第3个字节
		for (var i = 0; i < sfgsmr.length; i++) // 
		{  
		str += "<li value='" + sfgsmr[i].name + "' style='padding-left:10px;'> " + sfgsmr[i].name + "</li>";  //创建li标签 把i值放进去
		}  
		document.querySelector('.ulda').outerHTML = str +"</ul>";  //把li放进class为ulyear中
		var lis=document.querySelector('.ulda').getElementsByTagName('li'); //获取这里边的li标签
		for (var i=0;i<lis.length ;i++ )
		{    
			lis[i].onclick=function(){
				for (var ii=0;ii<lis.length ;ii++ )
				{
					if (this == lis[ii])
					{
						document.querySelector('.daxs').innerHTML=lis[ii].innerHTML; //li的内容赋给document.querySelector('.xs')
						var da=lis[ii].getAttribute('value'); //获取点击的li的value属性值
						document.querySelector('.daxs').setAttribute("value",da); //设置document.querySelector('.xs')的value属性值yearvalue
						document.querySelector('.quanda').style.display="none"; //窗口消失
						var zhong = daList[ii].zhongList[0].name;
						document.querySelector('.zhongxs').innerHTML=zhong;
						var xiao = daList[ii].zhongList[0].xiaoList[0];
						document.querySelector('.xiaoxs').innerHTML=xiao;
						document.getElementById("econfirst").value=da;
						return sfxz = da;//把选中的li的传参给省
					}
				}
			}
		}
	}

	/*市*/
	var shiXb = 0;
	document.querySelector('.dianzhong').onclick=function(e){
		document.querySelector('.quanzhong').style.display="block";//下拉窗口显示
		e.stopPropagation();
		for(var i=0;i<sfgsmr.length ;i++){
			if(daList[i].name == sfxz){
				shiXb = i;
				var str = strSHI.substring(0, strSHI.length - 5);
				for(var j = 0; j<daList[i].zhongList.length; j++){
					str += "<li value='" + daList[i].zhongList[j].name + "' style='padding-left:10px;'> " + daList[i].zhongList[j].name + "</li>";
				}
				document.querySelector('.ulzhong').outerHTML = str +"</ul>";
				var lis=document.querySelector('.ulzhong').getElementsByTagName('li');
				for (var ii=0;ii<lis.length ;ii++ )
				{
					lis[ii].onclick=function(){
						for (var jj=0; jj<lis.length; jj++)
						{
							if (this == lis[jj])
							{	
								document.querySelector('.zhongxs').innerHTML=lis[jj].innerHTML;
								var zhong=lis[jj].getAttribute('value');
								document.querySelector('.zhongxs').setAttribute("value",zhong);
								document.querySelector('.quanzhong').style.display="none";
								var xiao = daList[shiXb].zhongList[jj].xiaoList[0];
								document.querySelector('.xiaoxs').innerHTML=xiao;
								document.getElementById("econscon").value=zhong;
								return csxz = zhong;//把选中的li的传参给市
							}
						}
					}
				}
			}
		}
	}
	/*区*/
	document.querySelector('.dianxiao').onclick=function(e){
		document.querySelector('.quanxiao').style.display="block";//下拉窗口显示
		e.stopPropagation();
		for(var i=0;i<sfgsmr.length;i++){
			if(daList[i].name == sfxz){
				for(var j=0;j<daList[i].zhongList.length;j++){
					if(daList[i].zhongList[j].name == csxz){
						var str = strQU.substring(0, strQU.length - 5);
						for(var k = 0; k<daList[i].zhongList[j].xiaoList.length; k++){
							str += "<li value='" + daList[i].zhongList[j].xiaoList[k]+ "' style='padding-left:10px;'> " + daList[i].zhongList[j].xiaoList[k] + "</li>";
						}
						document.querySelector('.ulxiao').outerHTML = str +"</ul>";
						var lis=document.querySelector('.ulxiao').getElementsByTagName('li');
						for (var ii=0;ii<lis.length ;ii++ )
						{
							lis[ii].onclick=function(){
								for (var jj=0; jj<lis.length; jj++)
								{
									if (this == lis[jj])
									{
										
										document.querySelector('.xiaoxs').innerHTML=lis[jj].innerHTML;
										var xiao=lis[jj].getAttribute('value');
										document.querySelector('.quanzhong').style.display="none";
									
										document.getElementById("econthir").value=xiao;
										return qyxz = xiao;//把选中的li的传参给区
									}
								}
							}
						}
					}
				}
			}
		}
	}
})
