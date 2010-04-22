$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/PayWay",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectPayWay",
		success: function(xml){
			var properties = xml.getElementsByTagName("PayWay");
			for(var i = 0; i < properties.length; i++) {
				PayWayID = $.trim(properties[i].getElementsByTagName("PayWayID")[0].firstChild.nodeValue);
				PayWayTypeName = $.trim(properties[i].getElementsByTagName("PayWayTypeName")[0].firstChild.nodeValue);
				$("#PayWayID").append("<option value = '" + PayWayID + "'>" + PayWayTypeName + "</option>")
			}
		}
	});
});