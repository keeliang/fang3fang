$(document).ready(function() {
	var CityID = "C001"
	DisplayQuickSearch(CityID);
	$("#ChangeTown").click(function() {
		if(CityID == "C001") {
			CityID = "C002";
		} else {
			CityID = "C001";
		}
		DisplayQuickSearch(CityID);
		return false;
	});
});

function DisplayQuickSearch(CityID) {
	$.ajax({
		url: "/Fang3FangWeb/servlet/Others",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectPlaceCity&CityID=" + CityID,
		success: function(xml){
			$("#QuickSearchContent").html("");
			
			var properties = xml.getElementsByTagName("Place").item(0);
			var City = properties.firstChild;
			for(var i = 0; i < City.childNodes.length; i++) {
				var District = City.childNodes.item(i);
				var DistrictName = District.tagName;
				$("#QuickSearchContent").append("<a href='Others_QuickSearchShowDetails.jsp?Title=D" + encodeURI(DistrictName) + "' class='Title'>[" + DistrictName + "]</a>&nbsp;&nbsp;");
				for(var j = 0; j < District.childNodes.length; j++) {
					TownName = District.childNodes.item(j).firstChild.nodeValue;
					$("#QuickSearchContent").append("<a href='Others_QuickSearchShowDetails.jsp?Title=T" + encodeURI(TownName) + "'>" + TownName + "</a>&nbsp;&nbsp;&nbsp;");
				}
			}
		},
		error: function(obj, err)  {
			alert(err);
		}
	});
}