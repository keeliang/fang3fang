$(document).ready(function() {
   /*
   ChangfangRent();
   JiulouRent1();
   JiulouRent2();
   XiezilouRent();
   CantingRent();
   ShangpuRent();
   */
	
});
function ChangfangRent(){

	$("#showShop").empty();
	
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowChangfangRent",
		success: function(xml){
		
			var properties = $(xml).find("Stores");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var StoreRentID = $(properties[i]).find("StoreRentID").text();
					var StoreRentTypeName = $(properties[i]).find("StoreRentTypeName").text();
					var StoreTitle = $(properties[i]).find("StoreTitle").text();                                                                                       
					var StoreContent = $(properties[i]).find("StoreContent").text();                                                       
					var Address = $(properties[i]).find("Address").text();
					var CityName = $(properties[i]).find("CityName").text();
					var DistrictName = $(properties[i]).find("DistrictName").text();
					var TownName = $(properties[i]).find("TownName").text();                                                                                       
					var FBDate = $(properties[i]).find("FBDate").text();                                                       
					var ContactPerson = $(properties[i]).find("ContactPerson").text();
					var Phone = $(properties[i]).find("Phone").text(); 
					$("#showShop").append('<p><span class="float_right cGray">'+FBDate.substr(0, 10)+'</span><span class="cOrange bold">'+StoreTitle+'</span></p>  <p>'+StoreContent.substr(0, 12)+'...'+Phone+'</p>');
					//$("#busi tbody").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#showShop").append('<p>没查找到相应记录</p>');				    
			}		 		 
		}
		
		
	});
}
function JiulouRent1(){

	$("#jiulou01").empty();
	//$("#showShop").append('<ul></ul>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowJiulouRent1",
		success: function(xml){
		
			var properties = $(xml).find("Stores");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var StoreRentID = $(properties[i]).find("StoreRentID").text();
					var StoreRentTypeName = $(properties[i]).find("StoreRentTypeName").text();
					var StoreTitle = $(properties[i]).find("StoreTitle").text();                                                                                       
					var StoreContent = $(properties[i]).find("StoreContent").text();                                                       
					var Address = $(properties[i]).find("Address").text();
					var CityName = $(properties[i]).find("CityName").text();
					var DistrictName = $(properties[i]).find("DistrictName").text();
					var TownName = $(properties[i]).find("TownName").text();                                                                                       
					var FBDate = $(properties[i]).find("FBDate").text();                                                       
					var ContactPerson = $(properties[i]).find("ContactPerson").text();
					var Phone = $(properties[i]).find("Phone").text(); 
					$("#jiulou01").append('<p><span class="float_right cGray">'+FBDate.substr(0, 10)+'</span><span class="cOrange bold">'+StoreTitle+'</span></p>  <p>'+StoreContent.substr(0, 12)+'...'+Phone+'</p>');
					//$("#busi tbody").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#jiulou01").append('<p>没查找到相应记录</p>');				    
			}		 		 
		}
		
		
	});
}
function JiulouRent2(){

	$("#jiulou02").empty();
	//$("#showShop").append('<ul></ul>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowJiulouRent2",
		success: function(xml){
		
			var properties = $(xml).find("Stores");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var StoreRentID = $(properties[i]).find("StoreRentID").text();
					var StoreRentTypeName = $(properties[i]).find("StoreRentTypeName").text();
					var StoreTitle = $(properties[i]).find("StoreTitle").text();                                                                                       
					var StoreContent = $(properties[i]).find("StoreContent").text();                                                       
					var Address = $(properties[i]).find("Address").text();
					var CityName = $(properties[i]).find("CityName").text();
					var DistrictName = $(properties[i]).find("DistrictName").text();
					var TownName = $(properties[i]).find("TownName").text();                                                                                       
					var FBDate = $(properties[i]).find("FBDate").text();                                                       
					var ContactPerson = $(properties[i]).find("ContactPerson").text();
					var Phone = $(properties[i]).find("Phone").text(); 
					$("#jiulou02").append('<p><span class="float_right cGray">'+FBDate.substr(0, 10)+'</span><span class="cOrange bold">'+StoreTitle+'</span></p>  <p>'+StoreContent.substr(0, 12)+'...'+Phone+'</p>');
					//$("#busi tbody").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#jiulou02").append('<p>没查找到相应记录</p>');				    
			}		 		 
		}
		
		
	});
}
function XiezilouRent(){

	$("#xiezilou").empty();
	//$("#showShop").append('<ul></ul>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowXiezilouRent",
		success: function(xml){
		
			var properties = $(xml).find("Stores");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var StoreRentID = $(properties[i]).find("StoreRentID").text();
					var StoreRentTypeName = $(properties[i]).find("StoreRentTypeName").text();
					var StoreTitle = $(properties[i]).find("StoreTitle").text();                                                                                       
					var StoreContent = $(properties[i]).find("StoreContent").text();                                                       
					var Address = $(properties[i]).find("Address").text();
					var CityName = $(properties[i]).find("CityName").text();
					var DistrictName = $(properties[i]).find("DistrictName").text();
					var TownName = $(properties[i]).find("TownName").text();                                                                                       
					var FBDate = $(properties[i]).find("FBDate").text();                                                       
					var ContactPerson = $(properties[i]).find("ContactPerson").text();
					var Phone = $(properties[i]).find("Phone").text(); 
					$("#xiezilou").append('<p><span class="float_right cGray">'+FBDate.substr(0, 10)+'</span><span class="cOrange bold">'+StoreTitle+'</span></p>  <p>'+StoreContent.substr(0, 12)+'...'+Phone+'</p>');
					//$("#busi tbody").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#xiezilou").append('<p>没查找到相应记录</p>');				    
			}		 		 
		}
		
		
	});
}
function CantingRent(){

	$("#canting").empty();
	//$("#showShop").append('<ul></ul>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowCantingRent",
		success: function(xml){
		
			var properties = $(xml).find("Stores");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var StoreRentID = $(properties[i]).find("StoreRentID").text();
					var StoreRentTypeName = $(properties[i]).find("StoreRentTypeName").text();
					var StoreTitle = $(properties[i]).find("StoreTitle").text();                                                                                       
					var StoreContent = $(properties[i]).find("StoreContent").text();                                                       
					var Address = $(properties[i]).find("Address").text();
					var CityName = $(properties[i]).find("CityName").text();
					var DistrictName = $(properties[i]).find("DistrictName").text();
					var TownName = $(properties[i]).find("TownName").text();                                                                                       
					var FBDate = $(properties[i]).find("FBDate").text();                                                       
					var ContactPerson = $(properties[i]).find("ContactPerson").text();
					var Phone = $(properties[i]).find("Phone").text(); 
					$("#canting").append('<p><span class="float_right cGray">'+FBDate.substr(0, 10)+'</span><span class="cOrange bold">'+StoreTitle+'</span></p>  <p>'+StoreContent.substr(0, 12)+'...'+Phone+'</p>');
					//$("#busi tbody").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#canting").append('<p>没查找到相应记录<p>');				    
			}		 		 
		}
		
		
	});
}
function ShangpuRent(){

	$("#shangpu").empty();
	//$("#showShop").append('<ul></ul>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=ShowShangpuRent",
		success: function(xml){
		
			var properties = $(xml).find("Stores");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var StoreRentID = $(properties[i]).find("StoreRentID").text();
					var StoreRentTypeName = $(properties[i]).find("StoreRentTypeName").text();
					var StoreTitle = $(properties[i]).find("StoreTitle").text();                                                                                       
					var StoreContent = $(properties[i]).find("StoreContent").text();                                                       
					var Address = $(properties[i]).find("Address").text();
					var CityName = $(properties[i]).find("CityName").text();
					var DistrictName = $(properties[i]).find("DistrictName").text();
					var TownName = $(properties[i]).find("TownName").text();                                                                                       
					var FBDate = $(properties[i]).find("FBDate").text();                                                       
					var ContactPerson = $(properties[i]).find("ContactPerson").text();
					var Phone = $(properties[i]).find("Phone").text(); 
					$("#shangpu").append('<p><span class="float_right cGray">'+FBDate.substr(0, 10)+'</span><span class="cOrange bold">'+StoreTitle+'</span></p>  <p>'+StoreContent.substr(0, 12)+'...'+Phone+'</p>');
					//$("#busi tbody").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#shangpu").append('<p>没查找到相应记录</p>');				    
			}		 		 
		}
		
		
	});
}
