
/*某些表单元素在载入时就已经得到其值*/
$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/Users",
		type: "POST",
		dataType: "xml",
		data: "useraction=Users&referaction=SelectMessage",
		success: function(xml){
			var properties = xml.getElementsByTagName("CityType");               //城市
			for(var i = 0; i < properties.length; i++) {
				var CityID = $.trim(properties[i].getElementsByTagName("CityID")[0].firstChild.nodeValue);
				var CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
				$("#CityID").append("<option value = '" + CityID + "'>" + CityName + "</option>")
			}
			 
			var properties = xml.getElementsByTagName("PropertyType");                  //物业类型
			for(var i = 0; i < properties.length; i++) {
				PropertyID = $.trim(properties[i].getElementsByTagName("PropertyID")[0].firstChild.nodeValue);
				PropertyTypeName = $.trim(properties[i].getElementsByTagName("PropertyTypeName")[0].firstChild.nodeValue);
				$("#PropertyID").append("<option value = '" + PropertyID + "'>" + PropertyTypeName + "</option>")
			}
			
			var properties = xml.getElementsByTagName("RenovationStandard");                     //       
			for(var i = 0; i < properties.length; i++) {
				RenovationStandardID = $.trim(properties[i].getElementsByTagName("RenovationStandardID")[0].firstChild.nodeValue);
				RenovationStandardName = $.trim(properties[i].getElementsByTagName("RenovationStandardName")[0].firstChild.nodeValue);
				$("#RenovationStandardID").append("<option value = '" + RenovationStandardID + "'>" + RenovationStandardName + "</option>");
			}
			
			var properties = xml.getElementsByTagName("PayWay");                       //付款方式
			for(var i = 0; i < properties.length; i++) {
				PayWayID = $.trim(properties[i].getElementsByTagName("PayWayID")[0].firstChild.nodeValue);
				PayWayTypeName = $.trim(properties[i].getElementsByTagName("PayWayTypeName")[0].firstChild.nodeValue);
				$("#PayWayID").append("<option value = '" + PayWayID + "'>" + PayWayTypeName + "</option>")
			}
			
			var properties = xml.getElementsByTagName("OrientationType");                  //方位类型
			for(var i = 0; i < properties.length; i++) {
				OrientationID = $.trim(properties[i].getElementsByTagName("OrientationID")[0].firstChild.nodeValue);
				OrientationName = $.trim(properties[i].getElementsByTagName("OrientationName")[0].firstChild.nodeValue);
				$("#Orientation").append("<option value = '" + OrientationID + "'>" + OrientationName + "</option>");
			}			
			
			var properties = xml.getElementsByTagName("DepositDemand");                     
			for(var i = 0; i < properties.length; i++) {
				DepositID = $.trim(properties[i].getElementsByTagName("DepositID")[0].firstChild.nodeValue);
				DepositName = $.trim(properties[i].getElementsByTagName("DepositName")[0].firstChild.nodeValue);
				if ($("#DepositID")){
				  $("#DepositID").append("<option value = '" + DepositID + "'>" + DepositName + "</option>");
				}
			}
			
			var properties = xml.getElementsByTagName("DocumentType");
			for(var i = 0; i < properties.length; i++) {
				DocumentID = $.trim(properties[i].getElementsByTagName("DocumentID")[0].firstChild.nodeValue);
				DocumentTypeName = $.trim(properties[i].getElementsByTagName("DocumentTypeName")[0].firstChild.nodeValue);
				if ($("#DocumentTypeID")){
				   $("#DocumentTypeID").append("<option value = '" + DocumentID + "'>" + DocumentTypeName + "</option>");
				}
			}			
			
			var properties = xml.getElementsByTagName("FileName1");
			for(var i = 0; i < properties.length; i++) {
				imageID = $.trim(properties[i].getElementsByTagName("imageID")[0].firstChild.nodeValue);
				filename = $.trim(properties[i].getElementsByTagName("filename1")[0].firstChild.nodeValue);
				$("#Photo").append("<option selected value = '" + imageID + "'>" + filename + "</option>"); 	        
				 
			}
			
			var properties = xml.getElementsByTagName("FileName0");
			for(var i = 0; i < properties.length; i++) {
				imageID = $.trim(properties[i].getElementsByTagName("imageID")[0].firstChild.nodeValue);
				filename = $.trim(properties[i].getElementsByTagName("filename0")[0].firstChild.nodeValue);
				$("#HouseChart").append("<option selected value = '" + imageID + "'>" + filename + "</option>"); 	        
				 
			}
		}
	});	
	
	
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
	
	$('#selectfile').click(function() {
          window.location = "upload.jsp";
    });	    
	
	$('#selectfile1').click(function() {
          window.location = "upload1.jsp";
    });	    
	
});


function DisplayTownRightNow() {
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
	})
}