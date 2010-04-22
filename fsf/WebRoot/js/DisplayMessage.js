$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Users&referaction=SelectMessage",
		success: function(xml){
			var properties = xml.getElementsByTagName("CityType");
			for(var i = 0; i < properties.length; i++) {
				var CityID = $.trim(properties[i].getElementsByTagName("CityID")[0].firstChild.nodeValue);
				var CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
				$("#CityID").append("<option value = '" + CityID + "'>" + CityName + "</option>")
			}
		}
	});
	
	
	
	$("#CityID").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/servlet/DistrictType",
			type: "POST",
			dataType: "xml",
			data: "referaction=SelectDisByCityID&CityID=" + $("#CityID").val(),
			success: function(xml){
				DisplayClear("DistrictID");
				$("#DistrictID").append("<option value = ''>请选择</option>");
				var properties = xml.getElementsByTagName("DistrictType");
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#DistrictID").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
				}
				DisplayTownRightNow();
			}
		});
	})
	$("#DistrictID").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/servlet/TownType",
			type: "POST",
			dataType: "xml",
			data: "referaction=SelectTownByDistrictID&DistrictID=" + $("#DistrictID").val(),
			success: function(xml){
				DisplayClear("TownID");
				$("#TownID").append("<option value = ''>请选择</option>");
				var properties = xml.getElementsByTagName("TownType");
				for(var i = 0; i < properties.length; i++) {
					var TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
					var TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					$("#TownID").append("<option value = '" + TownID + "'>" + TownName + "</option>")
				}
			}
		});
	})	
});