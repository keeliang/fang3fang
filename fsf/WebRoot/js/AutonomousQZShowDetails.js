$(document).ready(function() {
	var url = window.location.href;
	var id = url.indexOf('=');
	if (id == -1) return "";
	id = url.substring(id + 1);
	$.ajax({
		url: "/Fang3FangWeb/servlet/AutonomousQZ",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectAutonomousQZByAQZID&AQZID=" + id,
		cache: false,
		success: function(xml){
			var properties = $(xml).find("AutonomousQZ")[0];
			
				var AQZID = $(properties).find("AQZID").text();
				$("#AQZID").append(AQZID);
				var CityName = $(properties).find("CityName").text();
				$("#CityName").append(CityName);
				var DistrictName = $(properties).find("DistrictName").text();
				$("#DistrictName").append(DistrictName);
				var TownName = $(properties).find("TownName").text();
				$("#TownName").append(TownName);
				var PropertyTypeName = $(properties).find("PropertyTypeName").text();
				$("#PropertyTypeName").append(PropertyTypeName);
				var Room = $(properties).find("Room").text();
				var Hall = $(properties).find("Hall").text();
				var Toilet = $(properties).find("Toilet").text();
				var Balcony = $(properties).find("Balcony").text();
				$("#HuXing").append("<span style='color: #f00'>" + Room + "</span>&nbsp;室&nbsp;" + "<span style='color: #f00'>" + Hall + "</span>&nbsp;厅&nbsp;" + "<span style='color: #f00'>" + Toilet + "</span>&nbsp;卫&nbsp;" + "<span style='color: #f00'>" + Balcony + "</span>&nbsp;阳台");
				
				var Area1 = $(properties).find("Area1").text();
				var Area2 = $(properties).find("Area2").text();
				$("#Area").append("<span style='color: #f00'>" + Area1 + "</span>&nbsp;m<sup>2</sup>&nbsp;至&nbsp;" + "<span style='color: #f00'>" + Area2 + "</span>&nbsp;m<sup>2</sup>");
				
				var Cost1 = $(properties).find("Cost1").text();
				var Cost2 = $(properties).find("Cost2").text();
				$("#Cost").append("<span style='color=#f00'>" + Cost1 + "&nbsp;</span>元/月&nbsp;至&nbsp;" + "<span style='color=#f00'>" + Cost2 + "&nbsp;</span>元/月");
				
				var FloorNum1 = $(properties).find("FloorNum1").text();
				var FloorNum2 = $(properties).find("FloorNum2").text();
				$("#Floor").append("在第&nbsp;<span style='color=#f00'>"+FloorNum1+"</span>&nbsp;层&nbsp;至&nbsp;" + "在第&nbsp;<span style='color=#f00'>"+FloorNum2+"</span>&nbsp;层");
				
				var RenovationStandardName = $(properties).find("RenovationStandardName").text();
				$("#RenovationStandardName").append(RenovationStandardName);
				var ExposureName = $(properties).find("ExposureName").text();
				$("#ExposureName").append(ExposureName);
				var DepositWay = $(properties).find("DepositWay").text();
				if($.trim(DepositWay) == "Ya1Fu1")	DepositWay = "押一付一";
				else if($.trim(DepositWay) == "Ya2Fu1")	DepositWay = "押二付一";
				else if($.trim(DepositWay) == "Ya3Fu1")	DepositWay = "押三付一";
				else if($.trim(DepositWay) == "Ya4Fu1")	DepositWay = "押四付一";
				$("#DepositWay").append(DepositWay);
				var PayWayTypeName = $(properties).find("PayWayTypeName").text();
				$("#PayWayTypeName").append(PayWayTypeName);
				
				var Other = $(properties).find("Other").text();
				$("#Other").append(Other);
				var Contacter = $(properties).find("Contacter").text();
				$("#Contacter").append(Contacter);
				var MobilePhone = $(properties).find("MobilePhone").text();
				$("#MobilePhone").append(MobilePhone);
				var HomePhone = $(properties).find("HomePhone").text();
				$("#HomePhone").append(HomePhone);
				var Email = $(properties).find("Email").text();
				$("#Email").append(Email);
				var FBDate = $(properties).find("FBDate").text();
				$("#FBDate").append(FBDate);
		}
	});
});