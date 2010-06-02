//取某些元素值填充到表单元素中去
$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/Users",
		type: "POST",
		dataType: "xml",
		data: "useraction=Users&referaction=SelectMessage",
		success: function(xml){
			
			
						var properties = xml.getElementsByTagName("ProvinceType");                  //取省份类型
			for(var i = 0; i < properties.length; i++) {
				var ProvinceID = $.trim(properties[i].getElementsByTagName("ProvinceID")[0].firstChild.nodeValue);
				var ProvinceName = $.trim(properties[i].getElementsByTagName("ProvinceName")[0].firstChild.nodeValue);
				$("#ProvinceID").append("<option value = '" + ProvinceID + "'>" + ProvinceName + "</option>")
			}
			
			var properties = xml.getElementsByTagName("CityType");                  //表示城市类型
			for(var i = 0; i < properties.length; i++) {
				var CityID = $.trim(properties[i].getElementsByTagName("CityID")[0].firstChild.nodeValue);
				var CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
				$("#CityID").append("<option value = '" + CityID + "'>" + CityName + "</option>")
			}
			
			var properties = xml.getElementsByTagName("PropertyType");              //表示物业类型
			for(var i = 0; i < properties.length; i++) {
				PropertyID = $.trim(properties[i].getElementsByTagName("PropertyID")[0].firstChild.nodeValue);
				PropertyTypeName = $.trim(properties[i].getElementsByTagName("PropertyTypeName")[0].firstChild.nodeValue);
				$("#PropertyID").append("<option value = '" + PropertyID + "'>" + PropertyTypeName + "</option>")
			}
			
			var properties = xml.getElementsByTagName("RenovationStandard");        //装修标准
			for(var i = 0; i < properties.length; i++) {
				RenovationStandardID = $.trim(properties[i].getElementsByTagName("RenovationStandardID")[0].firstChild.nodeValue);
				RenovationStandardName = $.trim(properties[i].getElementsByTagName("RenovationStandardName")[0].firstChild.nodeValue);
				$("#RenovationStandardID").append("<option value = '" + RenovationStandardID + "'>" + RenovationStandardName + "</option>");
			}
			
			var properties = xml.getElementsByTagName("PayWay");                    //付费方式
			for(var i = 0; i < properties.length; i++) {
				PayWayID = $.trim(properties[i].getElementsByTagName("PayWayID")[0].firstChild.nodeValue);
				PayWayTypeName = $.trim(properties[i].getElementsByTagName("PayWayTypeName")[0].firstChild.nodeValue);
				$("#PayWayID").append("<option value = '" + PayWayID + "'>" + PayWayTypeName + "</option>")
			}
			
			var properties = xml.getElementsByTagName("OrientationType");           //朝向  
			for(var i = 0; i < properties.length; i++) {
				OrientationID = $.trim(properties[i].getElementsByTagName("OrientationID")[0].firstChild.nodeValue);
				OrientationName = $.trim(properties[i].getElementsByTagName("OrientationName")[0].firstChild.nodeValue);
				$("#Orientation").append("<option value = '" + OrientationID + "'>" + OrientationName + "</option>");
			}				 
		}
	});	
	
	$("#ProvinceID").change(function() {												//城市随着省市的改变而改变
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectCityByProvinceID&ProvinceID=" + $("#ProvinceID").val(),
			success: function(xml){
				DisplayClear("CityID");
				$("#CityID").append("<option value = ''>请选择</option>");
				var properties = xml.getElementsByTagName("CityType");
				for(var i = 0; i < properties.length; i++) {
					var CityTypeID = $.trim(properties[i].getElementsByTagName("CityTypeID")[0].firstChild.nodeValue);
					var CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
					$("#CityID").append("<option value = '" + CityTypeID + "'>" + CityName + "</option>")
				}				 
			}
		});
	})
	$("#CityID").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectDisByCityID&CityID=" + $("#CityID").val(),
			success: function(xml){
				DisplayClear("DistrictID");
				$("#DistrictID").append("<option value = ''>请选择</option>");
				var properties = xml.getElementsByTagName("DistrictType");
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#DistrictID").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
				}				 
			}
		});
	})
	
	$("#DistrictID").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectTownByDistrictID&DistrictID=" + $("#DistrictID").val(),
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

 