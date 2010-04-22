$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/PropertyType",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectPropertyType",
		success: function(xml){
			var properties = xml.getElementsByTagName("PropertyType");
			for(var i = 0; i < properties.length; i++) {
				PropertyID = $.trim(properties[i].getElementsByTagName("PropertyID")[0].firstChild.nodeValue);
				PropertyTypeName = $.trim(properties[i].getElementsByTagName("PropertyTypeName")[0].firstChild.nodeValue);
				$("#PropertyID").append("<option value = '" + PropertyID + "'>" + PropertyTypeName + "</option>")
			}
		}
	});
});