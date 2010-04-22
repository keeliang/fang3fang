$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/CityType",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectCityType",
		success: function(xml){
			var properties = xml.getElementsByTagName("CityType");
			for(var i = 0; i < properties.length; i++) {
				var CityID = $.trim(properties[i].getElementsByTagName("CityID")[0].firstChild.nodeValue);
				var CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
				$("#CityID").append("<option value = '" + CityID + "'>" + CityName + "</option>")
			}
		}
	});
});