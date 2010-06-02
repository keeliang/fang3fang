$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/Users",
		type: "POST",
		dataType: "xml",
		data: "useraction=Users&referaction=SelectAJInfo",
		success: function(xml){
			var properties = xml.getElementsByTagName("DocumentType");                                                                  //取证件类型信息
			for(var i = 0; i < properties.length; i++) {																									
				DocumentID = $.trim(properties[i].getElementsByTagName("DocumentID")[0].firstChild.nodeValue);
				DocumentTypeName = $.trim(properties[i].getElementsByTagName("DocumentTypeName")[0].firstChild.nodeValue);
				if ($("#DocumentTypeID")){
				   $("#DocumentTypeID").append("<option value = '" + DocumentID + "'>" + DocumentTypeName + "</option>");
				}
			}
			var properties = xml.getElementsByTagName("RePayWay");             														//取还款方式                                                      
			for(var i = 0; i < properties.length; i++) {
				RePayWayID = $.trim(properties[i].getElementsByTagName("RePayWayID")[0].firstChild.nodeValue);
				RepayTypeName = $.trim(properties[i].getElementsByTagName("RepayTypeName")[0].firstChild.nodeValue);
				$("#RePayWayID").append("<option value = '" + RePayWayID + "'>" + RepayTypeName + "</option>")
			}
		  
		  	var properties = xml.getElementsByTagName("LoanToUseType");             														//取贷款用途                                                   
			for(var i = 0; i < properties.length; i++) {
				LoanToUseTypeID = $.trim(properties[i].getElementsByTagName("LoanToUseTypeID")[0].firstChild.nodeValue);
				LoanToUseTypeName = $.trim(properties[i].getElementsByTagName("LoanToUseTypeName")[0].firstChild.nodeValue);
				$("#LoanToUse").append("<option value = '" + LoanToUseTypeID + "'>" + LoanToUseTypeName + "</option>")
			}
			var properties = xml.getElementsByTagName("ProvinceType");                  //取省份类型
			for(var i = 0; i < properties.length; i++) {
				var ProvinceID = $.trim(properties[i].getElementsByTagName("ProvinceTypeID")[0].firstChild.nodeValue);
				var ProvinceName = $.trim(properties[i].getElementsByTagName("ProvinceName")[0].firstChild.nodeValue);
				$("#ProvinceID").append("<option value = '" + ProvinceID + "'>" + ProvinceName + "</option>");
			}
			var properties=xml.getElementsByTagName("EstateType");	
			for(var i=0;i<properties.length;i++){
				EstateID = $.trim(properties[i].getElementsByTagName("EstateID")[0].firstChild.nodeValue);
				EstateTypeName = $.trim(properties[i].getElementsByTagName("EstateTypeName")[0].firstChild.nodeValue);
				$("#EstateType_EstateID").append("<option value = '" + EstateID + "'>" + EstateTypeName + "</option>")
				
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
	
	$("#CityID").change(function() {                                                                                                     //取区县信息
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
	$("#DistrictID").change(function() {                                                                                                 //取商圈信息
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

 
 