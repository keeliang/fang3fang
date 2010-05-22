$(document).ready(function() {   
    ShichangInfo();	 
    BendiInfo();
    TopInfo();
    TotalInfo();
    JiajuInfo();
    JiaodianTop1Info();
    JiaodianTop6Info();
	
});
function ShichangInfo(){
	$("#shichangdongtai").empty();
	$("#shichangdongtai").append('<ul></ul>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowShichangInfo",
		success: function(xml){
		//alert("ok");
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					var InfoDate = $(properties[i]).find("InfoDate").text();
					$("#shichangdongtai ul").append('<li><a>'+InfoTitle+' </a><span class="cGray font12">('+InfoDate+')</span></li>');
					//$("#shichangdongtai ul").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#shichangdongtai ul").append('<li>没查找到相应记录</li>');				    
			}		 		 
		}
		
	});
}	
 function BendiInfo(){
	$("#bendi").empty();
	$("#bendi").append('<ul></ul>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowBendiInfo",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					var InfoDate = $(properties[i]).find("InfoDate").text();
					$("#bendi ul").append('<li><a>'+InfoTitle+' </a><span class="cGray font12">('+InfoDate+')</span></li>');
					//$("#shichangdongtai ul").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#bendi ul").append('<li>没查找到相应记录</li>');				    
			}		 		 
		}
		
	});

}
function TotalInfo(){
	$("#total").empty();
	$("#total").append('<ul></ul>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowTotalInfo",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					var InfoDate = $(properties[i]).find("InfoDate").text();
					$("#total ul").append('<li><a>'+InfoTitle+' </a><span class="cGray font12">('+InfoDate+')</span></li>');
					//$("#shichangdongtai ul").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#total ul").append('<li>没查找到相应记录</li>');				    
			}		 		 
		}
		
	});

}
function TopInfo(){
	$("#top").empty();
	$("#top").append('<div class="info_news_list_title"><b><span class="cOrange">一周新闻排行</span> TOP</b></div>');
	
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowInfoTop10",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					//var InfoDate = $(properties[i]).find("InfoDate").text();
					$("#top div").append('<p>・<a>'+InfoTitle+'</a> <br /></p>');
					//$("#shichangdongtai ul").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#top div").append('<li>没查找到相应记录</li>');				    
			}		 		 
		}
		
	});

}
function JiajuInfo(){
	$("#jiaju").empty();
	$("#jiaju").append('<dl> <dd><p><img src="images/info_pic007.jpg" width="120" height="90" alt="" title="" /></p> <p><a href="#" class="cBlue">豪华别墅</a></p> </dd><dd><p><img src="images/info_pic008.jpg" width="120" height="90" alt="" title="" /></p><p><a href="#" class="cBlue">绿色花园</a></p>  </dd></dl><div class="clear"></div>');
	$("#jiaju").append('<ul></ul>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowJiajuInfo",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					//var InfoDate = $(properties[i]).find("InfoDate").text();
					$("#jiaju ul").append('<li>'+InfoTitle+'</li>');
					//$("#shichangdongtai ul").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#jiaju ul").append('<li>没查找到相应记录</li>');				    
			}		 		 
		}
		
	});
}
function JiaodianTop1Info(){
	$("#jiaodian1").empty();
	$("#jiaodian1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowJiaodianTop1Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text(); 
					var InfoContent = $(properties[i]).find("InfoContent").text();                                                                                                                                           
					$(".dl01").append('<dt><img src="images/info_pic001.jpg" width="116" height="108" alt="" title="" /></dt><dd class="font14"><a href="#" class="cRed03"><b>'+InfoTitle+' </b></a></dd><dd>'+InfoContent+'<a href="#" class="cRed03">[详细]</a></dd>');
			
			} }
			else {
				   $("#jiaodian1 dl").append('<dd>没查找到相应记录</dd>');				    
			}		 		 
		}
		
	});
}
function JiaodianTop6Info(){
	$("#jiaodian6").empty();
	
	$("#jiaodian6").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowJiaodianTop6Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					//var InfoDate = $(properties[i]).find("InfoDate").text();
					$(".dl02").append('<dd><a href="#">'+InfoTitle+'</a></dd>');
			} }
			else {
				   $(".dl02").append('<dd>没查找到相应记录</dd>');				    
			}		 		 
		}
		
	});
}
function ShendubaodaoTop1(){//深度报道第一条信息
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowShenduTop1Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}
function ShendubaodaoTop6(){//深度报道从第二条记录开始的前6条信息
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowShenduTop6Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}
function FangjiaTop1(){//房价第一条信息
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowFangjiaTop1Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}
function FangjiaTop7(){//房价从第二条记录开始的前7条信息
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowFangjiaTop7Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					//var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}

function QuyubaogaoTop1(){//区域报告第一条信息
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowQuyubaogaoTop1Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}
function QuyubaogaoTop5(){//区域报告从第二条记录开始的前7条信息
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowQuyubaogaoTop5Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					//var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}
function FangchanzhengceTop1(){//房产政策第一条信息
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowFangchanzhengceTop1Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}
function FangchanzhengceTop5(){//房产政策从第二条记录开始的前7条信息
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowFangchanzhengceTop5Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					//var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}
function LoupandongtaiTop1(){//楼盘动态第一条信息  在社区推荐 那一块
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowLoupandongtaiTop1Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}
function LoupandongtaiTop10(){//楼盘动态从第二条记录开始的前7条信息
	$("#shendu1").empty();
	
	//$("#shendu1").append('<dl></dl>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowLoupandongtaiTop10Info",
		success: function(xml){
			var properties = $(xml).find("Infos");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                                                                            
					//var InfoContent = $(properties[i]).find("InfoContent").text();  
					$("#shendu1").append('<b><a href="#">'+InfoTitle+'</a></b>');
			} }
			else {
				   $("#shendu1").append('没查找到相应记录');				    
			}		 		 
		}
		
	});
}