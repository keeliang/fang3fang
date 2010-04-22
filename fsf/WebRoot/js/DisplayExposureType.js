$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/ExposureType",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectExposureType",
		success: function(xml){
			var properties = xml.getElementsByTagName("ExposureType");
			for(var i = 0; i < properties.length; i++) {
				ExposureID = $.trim(properties[i].getElementsByTagName("ExposureID")[0].firstChild.nodeValue);
				ExposureName = $.trim(properties[i].getElementsByTagName("ExposureName")[0].firstChild.nodeValue);
				$("#Orientation").append("<option value = '" + ExposureID + "'>" + ExposureName + "</option>");
			}
		}
	});
});