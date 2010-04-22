$(document).ready(function() {
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
});