$(document).ready(function() {
//alert("OK");
	$("#busi").empty();
	$("#busi").append('<tbody></tbody>');
	// $("#ListNewsTable tbody").append('<tr><td colspan="5" align="center">没查找到相应记录qaaaaaa</TD></TR>');				    
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectRent",
		success: function(xml){
		
			var properties = $(xml).find("Stores");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var StoreRentID = $(properties[i]).find("StoreRentID").text();
					//alert(InfoID);
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
					$("#busi tbody").append('<tr><td>'+StoreRentTypeName+'</td><td>'+StoreTitle+'</td><td>'+StoreContent+'</td><td>'+CityName+DistrictName+TownName+'</td><td>'+Address+'</td><td>'+FBDate+'</td><td>'+ContactPerson+'</td><td>'+Phone+'</td><td>屏蔽|<a href="/Fang3FangWeb/Access?StoreRentID='+StoreRentID+'&useraction=Estates&referaction=DeleteRent" class="cRed">删除</a></td></tr>');
					//$("#busi tbody").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#busi tbody").append('<tr><td colspan="5" align="center">没查找到相应记录</TD></TR>');				    
			}		 		 
		}
		
	});
});



