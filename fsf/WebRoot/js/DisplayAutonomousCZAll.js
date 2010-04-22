$(document).ready(function() {
	var url = window.location.href;
	
	var title = url.indexOf('=');
	
	if (title != -1) {
		title = url.substring(title + 1);
		var titleType = title.substring(0, 1);
		title = title.substring(1);
		
		if(titleType == 'D') {
			//D是地区
			url = "/Fang3FangWeb/servlet/AllFangPanByDistrictName";
			var dataValue = "referaction=SelectAutonomousCZByDistrictName&DistrictName=" + title;
		} else if (titleType == 'T') {
			//T是商圈
			url = "/Fang3FangWeb/servlet/AllFangPanByTownName";
			var dataValue = "referaction=SelectAutonomousCZByTownName&TownName=" + title;
		} else if (titleType == 'C') {
			//C是价格
			url = "/Fang3FangWeb/servlet/AllFangPanByCost";			
			var pos = title.indexOf("-");
			var Cost1 = title.substring(0,pos);
			var Cost2 = title.substring(pos+1);
			var dataValue = "referaction=SelectAutonomousCZByCost&Cost1=" + Cost1 + "&Cost2=" + Cost2;
			title = title + "&nbsp;万元";
		} else if (titleType == 'R') {
			//R是多少间房
			url = "/Fang3FangWeb/servlet/AllFangPanByRoom";
			var dataValue = "referaction=SelectAutonomousCZByRoom&Room=" + title;
			title = title + "室";
		}
	} else {
		//显示所有信息
		url = "/Fang3FangWeb/servlet/SearchAutonomousCZ";
		var dataValue = "referaction=SelectAutonomousCZ";
	}
	
	$.ajax({
		url: url,
		type: "POST",
		dataType: "xml",
		data: dataValue,
		cache: false,
		success: function(xml){
			var AutonomousCZ = xml.getElementsByTagName("AutonomousCZ");
			if(AutonomousCZ.length > 0) {				
				for(var i = 0; i < AutonomousCZ.length; i++) {
					var ACZID = AutonomousCZ[i].getElementsByTagName("ACZID")[0].firstChild.nodeValue;
					var PropertyName = AutonomousCZ[i].getElementsByTagName("PropertyName")[0].firstChild.nodeValue;
					var Address = AutonomousCZ[i].getElementsByTagName("Address")[0].firstChild.nodeValue;
					var CityName = AutonomousCZ[i].getElementsByTagName("CityName")[0].firstChild.nodeValue;
					var DistrictName = AutonomousCZ[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue;
					var TownName = AutonomousCZ[i].getElementsByTagName("TownName")[0].firstChild.nodeValue;
					var Room = AutonomousCZ[i].getElementsByTagName("Room")[0].firstChild.nodeValue;
					var Hall = AutonomousCZ[i].getElementsByTagName("Hall")[0].firstChild.nodeValue;
					var Toilet = AutonomousCZ[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue;
					var Balcony = AutonomousCZ[i].getElementsByTagName("Balcony")[0].firstChild.nodeValue;
					var Area = AutonomousCZ[i].getElementsByTagName("Area")[0].firstChild.nodeValue;
					var Cost = AutonomousCZ[i].getElementsByTagName("Cost")[0].firstChild.nodeValue;
					$("#AutonomousCZUL").append('<li>\n<span class="Span1">\n<a href="Others_AutonomousCZShowDetails.jsp?ACZID='+ACZID+'" title="' + PropertyName + '/' + Address + '"><span class="Strong">' + PropertyName + '</span>/' + Address + '</a>\n</span>\n<span class="Span2">' + CityName + '</span>\n<span class="Span3">' + DistrictName + '</span>\n<span class="Span4">' + TownName + '</span>\n<span class="Span5"><span style="color: #F00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #F00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #F00">' + Toilet + '</span>&nbsp;卫&nbsp;<span style="color: #F00">' + Balcony + '</span>&nbsp;阳台' + '</span>\n<span class="Span6"><span style="color: #F00">' + Area + '</span>&nbsp;m<sup>2</sup>/<span style="color: #F00">' + Cost + '</span>&nbsp;元' + '</span>\n</li>');
				}
			} else {
				$("#AutonomousCZUL").append("<li style='text-align=center'>\n自主交易区暂无&nbsp;<span style='color: #f00'>" + title + "</span>&nbsp;的出租数据\n</li>");
			}
		}
	})
})