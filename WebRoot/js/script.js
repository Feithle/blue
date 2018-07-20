$(document).ready(function(){
							
	$("#select1 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectA").remove();
		} else {
			var copyThisA = $(this).clone();
			if ($("#selectA").length > 0) {
				$("#selectA a").html($(this).text());
			} else {
				$(".select-result dl").append(copyThisA.attr("id", "selectA"));
				
				var xmlhttp;
				xmlhttp=null;
				if (window.XMLHttpRequest)
				  {// code for Firefox, Opera, IE7, etc.
				  xmlhttp=new XMLHttpRequest();
				  }
				else if (window.ActiveXObject)
				  {// code for IE6, IE5
				  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
				  }
			
				if (xmlhttp!=null)
				  {
				  xmlhttp.onreadystatechange=state_Change;
				  //xmlHttpRequest.setRequestHeader("Cache-Control","no-cache");
				  xmlhttp.open("GET","/innovate/Servlet/Condition1?name1="+encodeURIComponent($("#selectA").text()),true);
				  xmlhttp.send(null);
				  }
				else
				  {
				  alert("Your browser does not support XMLHTTP.");
				  }
				//window.location="/innovate/Servlet/Condition?idnum="+encodeURIComponent($("#selectA").text());
			}
			function state_Change()//??????
			{
			if (xmlhttp.readyState==4)
			  {// 4 = "loaded"
			  if (xmlhttp.status==200)
			    {// 200 = "OK"
			    document.getElementById('div01').innerHTML=xmlhttp.responseText;
			    }
			  else
			    {
			    alert("Problem retrieving data:" + xmlhttp.statusText);
			    }
			  }
			}

		}
	});
	
	$("#select2 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectB").remove();
		} else {
			var copyThisB = $(this).clone();
			if ($("#selectB").length > 0) {
				$("#selectB a").html($(this).text());
			} else {
				$(".select-result dl").append(copyThisB.attr("id", "selectB"));
				
				var xmlhttp;
				
				xmlhttp=null;
				if (window.XMLHttpRequest)
				  {// code for Firefox, Opera, IE7, etc.
				  xmlhttp=new XMLHttpRequest();
				  }
				else if (window.ActiveXObject)
				  {// code for IE6, IE5
				  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
				  }
				if (xmlhttp!=null)
				  {
				  xmlhttp.onreadystatechange=state_Change;
				  //xmlHttpRequest.setRequestHeader("Cache-Control","no-cache");
				  xmlhttp.open("GET","/innovate/Servlet/Condition2?name2="+encodeURIComponent($("#selectB").text()),true);
				  xmlhttp.send(null);
				  }
				else
				  {
				  alert("Your browser does not support XMLHTTP.");
				  }
			}
			function state_Change()//??????
			{
			if (xmlhttp.readyState==4)
			  {// 4 = "loaded"
			  if (xmlhttp.status==200)
			    {// 200 = "OK"
			    document.getElementById('T1').innerHTML=xmlhttp.responseText;
			    }
			  else
			    {
			    alert("Problem retrieving data:" + xmlhttp.statusText);
			    }
			  }
			}
		}
	});
	
	$("#select3 dd").click(function () {
		$(this).addClass("selected").siblings().removeClass("selected");
		if ($(this).hasClass("select-all")) {
			$("#selectC").remove();
		} else {
			var copyThisC = $(this).clone();
			if ($("#selectC").length > 0) {
				$("#selectC a").html($(this).text());
			} else {
				$(".select-result dl").append(copyThisC.attr("id", "selectC"));
				
				var xmlhttp;
				
				xmlhttp=null;
				if (window.XMLHttpRequest)
				  {// code for Firefox, Opera, IE7, etc.
				  xmlhttp=new XMLHttpRequest();
				  }
				else if (window.ActiveXObject)
				  {// code for IE6, IE5
				  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
				  }
				if (xmlhttp!=null)
				  {
				  xmlhttp.onreadystatechange=state_Change;
				  //xmlHttpRequest.setRequestHeader("Cache-Control","no-cache");
				  xmlhttp.open("GET","/innovate/Servlet/Condition3?name3="+encodeURIComponent($("#selectC").text()),true);
				  xmlhttp.send(null);
				  }
				else
				  {
				  alert("Your browser does not support XMLHTTP.");
				  }
			}
			function state_Change()//??????
			{
			if (xmlhttp.readyState==4)
			  {// 4 = "loaded"
			  if (xmlhttp.status==200)
			    {// 200 = "OK"
			    document.getElementById('T1').innerHTML=xmlhttp.responseText;
			    }
			  else
			    {
			    alert("Problem retrieving data:" + xmlhttp.statusText);
			    }
			  }
			}
		}
	});
	
	$("#selectA").live("click", function () {
		$(this).remove();
		$("#select1 .select-all").addClass("selected").siblings().removeClass("selected");
	});
	
	$("#selectB").live("click", function () {
		$(this).remove();
		$("#select2 .select-all").addClass("selected").siblings().removeClass("selected");
	});
	
	$("#selectC").live("click", function () {
		$(this).remove();
		$("#select3 .select-all").addClass("selected").siblings().removeClass("selected");
	});
	
	$(".select dd").live("click", function () {
		if ($(".select-result dd").length > 1) {
			$(".select-no").hide();
		} else {
			$(".select-no").show();
		}
	});
	
});