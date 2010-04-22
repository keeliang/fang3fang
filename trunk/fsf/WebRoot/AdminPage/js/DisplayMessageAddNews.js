$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/Users",
		type: "POST",
		dataType: "xml",
		data: "useraction=Users&referaction=SelectInfoType",
		success: function(xml){
			var properties = xml.getElementsByTagName("InfoType");                                                                      //表示资讯类型
			for(var i = 0; i < properties.length; i++) {
				var InfoTypeID = $.trim(properties[i].getElementsByTagName("InfoTypeID")[0].firstChild.nodeValue);
				var InfoTypeName = $.trim(properties[i].getElementsByTagName("InfoTypeName")[0].firstChild.nodeValue);
				$("#InfoTypeID").append("<option value = '" + InfoTypeID + "'>" + InfoTypeName + "</option>")                                       //取资讯名称
			}	
			
		}
	});		
	})	 
	