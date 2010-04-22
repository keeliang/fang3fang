$(document).ready(function() {
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