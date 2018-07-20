/**
 * 
 */
/**
 * 
 */

$(function(){

	$("body").click(function(){//点击空白处隐藏，使用e.stopPropagation()阻止事件冒泡
		$(".quanyi").hide();
		$(".quaner").hide();
		$(".quansan").hide();
	});
	//下拉列表获取地址
	var strSHENG = document.querySelector('.ulyi').outerHTML;  //获取class为ulyi的outerHTML
	var strSHI = document.querySelector('.uler').outerHTML;  //获取class为uler的outerHTML
	var strQU = document.querySelector('.ulsan').outerHTML;  //获取class为uler的outerHTML
	//从js库里得到所有的数据
	var sfgsmr = yiList;
	var sfxz = 0;
	var csxz = 0;
	var qyxz = 0;
	/*省*/
	 document.querySelector('.dianyi').onclick=function(e){
		document.querySelector('.quanyi').style.display="block";//下拉窗口显示
		e.stopPropagation();
		var str = strSHENG.substring(0, strSHENG.length - 5);  //获取strSHENG的第0-第3个字节
		for (var i = 0; i < sfgsmr.length; i++) // 
		{  
		str += "<li value='" + sfgsmr[i].name + "' style='padding-left:10px;'> " + sfgsmr[i].name + "</li>";  //创建li标签 把i值放进去
		}  
		document.querySelector('.ulyi').outerHTML = str +"</ul>";  //把li放进class为ulyear中
		var lis=document.querySelector('.ulyi').getElementsByTagName('li'); //获取这里边的li标签
		for (var i=0;i<lis.length ;i++ )
		{    
			lis[i].onclick=function(){
				for (var ii=0;ii<lis.length ;ii++ )
				{
					if (this == lis[ii])
					{
						document.querySelector('.yixs').innerHTML=lis[ii].innerHTML; //li的内容赋给document.querySelector('.xs')
						var sheng=lis[ii].getAttribute('value'); //获取点击的li的value属性值
						document.querySelector('.yixs').setAttribute("value",sheng); //设置document.querySelector('.xs')的value属性值yearvalue
						document.querySelector('.quanyi').style.display="none"; //窗口消失
						var shi = yiList[ii].erList[0].name;
						document.querySelector('.erxs').innerHTML=shi;
						var qu = yiList[ii].erList[0].sanList[0];
						document.querySelector('.sanxs').innerHTML=qu;
						return sfxz = sheng;//把选中的li的传参给省
					}
				}
			}
		}
	}

	/*市*/
	var shiXb = 0;
	document.querySelector('.dianer').onclick=function(e){
		document.querySelector('.quaner').style.display="block";//下拉窗口显示
		e.stopPropagation();
		for(var i=0;i<sfgsmr.length ;i++){
			if(yiList[i].name == sfxz){
				shiXb = i;
				var str = strSHI.substring(0, strSHI.length - 5);
				for(var j = 0; j<yiList[i].erList.length; j++){
					str += "<li value='" + yiList[i].erList[j].name + "' style='padding-left:10px;'> " + yiList[i].erList[j].name + "</li>";
				}
				document.querySelector('.uler').outerHTML = str +"</ul>";
				var lis=document.querySelector('.uler').getElementsByTagName('li');
				for (var ii=0;ii<lis.length ;ii++ )
				{
					lis[ii].onclick=function(){
						for (var jj=0; jj<lis.length; jj++)
						{
							if (this == lis[jj])
							{	
								document.querySelector('.erxs').innerHTML=lis[jj].innerHTML;
								var shi=lis[jj].getAttribute('value');
								document.querySelector('.erxs').setAttribute("value",shi);
								document.querySelector('.quaner').style.display="none";
								var qu = yiList[shiXb].erList[jj].sanList[0];
								document.querySelector('.sanxs').innerHTML=qu;
								return csxz = shi;//把选中的li的传参给市
							}
						}
					}
				}
			}
		}
	}
	/*区*/
	document.querySelector('.diansan').onclick=function(e){
		document.querySelector('.quansan').style.display="block";//下拉窗口显示
		e.stopPropagation();
		for(var i=0;i<sfgsmr.length;i++){
			if(yiList[i].name == sfxz){
				for(var j=0;j<yiList[i].erList.length;j++){
					if(yiList[i].erList[j].name == csxz){
						var str = strQU.substring(0, strQU.length - 5);
						for(var k = 0; k<yiList[i].erList[j].sanList.length; k++){
							str += "<li value='" + yiList[i].erList[j].sanList[k]+ "' style='padding-left:10px;'> " + yiList[i].erList[j].sanList[k] + "</li>";
						}
						document.querySelector('.ulsan').outerHTML = str +"</ul>";
						var lis=document.querySelector('.ulsan').getElementsByTagName('li');
						for (var ii=0;ii<lis.length ;ii++ )
						{
							lis[ii].onclick=function(){
								for (var jj=0; jj<lis.length; jj++)
								{
									if (this == lis[jj])
									{
										document.querySelector('.sanxs').innerHTML=lis[jj].innerHTML;
										document.querySelector('.quaner').style.display="none";
										return qyxz = qu;//把选中的li的传参给区
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
