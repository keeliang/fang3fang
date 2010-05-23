
$(document).ready(function() {

	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=DisplayShopType",
		success: function(xml){
	//	alert("suc");
		
			var properties = xml.getElementsByTagName("ShopType");                                                                      //表示旺铺类型
			for(var i = 0; i < properties.length; i++) {
				var StoreTypeID = $.trim(properties[i].getElementsByTagName("StoreTypeID")[0].firstChild.nodeValue);
				var StoreTypeName = $.trim(properties[i].getElementsByTagName("StoreTypeName")[0].firstChild.nodeValue);
				$("#StoreTypeID").append("<option value = '" + StoreTypeID + "'>" + StoreTypeName + "</option>")                                       //取旺铺名称
			}	
			
			
		}
	});	
	
		})	
	
	
		
		