function DisplayDistrict(CityID) {
	$.ajax({
		url: "/Fang3FangWeb/servlet/DistrictType",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectDisByCityID&CityID=" + CityID,
		success: function(xml){
			DisplayClear("DistrictID");
			$("#DistrictID").append("<option value = ''>请选择</option>");
			var properties = xml.getElementsByTagName("DistrictType");
			for(var i = 0; i < properties.length; i++) {
				var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
				var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
				$("#DistrictID").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
			}
			//DistrictID喺选择咗嘅option嘅value值
			DistrictID = ChangeSelectedObj("DistrictID", window.DistrictName);
			//执行Ajax下载相对应的Town下拉列表框
			DisplayTown(DistrictID);
			//最后在下拉列表框中选中TownName
			ChangeSelectedObj("TownID", window.TownName);
		}
	});
}