$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/RenovationStandard",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectRenovationStandard",
		success: function(xml){
			var properties = xml.getElementsByTagName("RenovationStandard");
			for(var i = 0; i < properties.length; i++) {
				RenovationStandardID = $.trim(properties[i].getElementsByTagName("RenovationStandardID")[0].firstChild.nodeValue);
				RenovationStandardName = $.trim(properties[i].getElementsByTagName("RenovationStandardName")[0].firstChild.nodeValue);
				$("#RenovationStandardID").append("<option value = '" + RenovationStandardID + "'>" + RenovationStandardName + "</option>");
			}
		}
	});
});