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
			var dataValue = "referaction=SelectProxyCZByDistrictName&DistrictName=" + title;
		} else if (titleType == 'T') {
			//T是商圈
			url = "/Fang3FangWeb/servlet/AllFangPanByTownName";
			var dataValue = "referaction=SelectProxyCZByTownName&TownName=" + title;
		} else if (titleType == 'C') {
			//C是价格
			url = "/Fang3FangWeb/servlet/AllFangPanByCost";			
			var pos = title.indexOf("-");
			var Cost1 = title.substring(0,pos);
			var Cost2 = title.substring(pos+1);
			var dataValue = "referaction=SelectProxyCZByCost&Cost1=" + Cost1 + "&Cost2=" + Cost2;
			title = title + "&nbsp;万元";
		} else if (titleType == 'R') {
			//R是多少间房
			url = "/Fang3FangWeb/servlet/AllFangPanByRoom";
			var dataValue = "referaction=SelectProxyCZByRoom&Room=" + title;
			title = title + "室";
		}
	} else {
		//显示所有信息
		url = "/Fang3FangWeb/servlet/SearchProxyCZ";
		var dataValue = "referaction=SelectProxyQZ";
	}
	
	$.ajax({
		url: url,
		type: "POST",
		dataType: "xml",
		data: dataValue,
		cache: false,
		success: function(xml){
			var ProxyCZ = xml.getElementsByTagName("ProxyCZ");
			if(ProxyCZ.length > 0) {				
				for(var i = 0; i < ProxyCZ.length; i++) {
					var PCZID = ProxyCZ[i].getElementsByTagName("PCZID")[0].firstChild.nodeValue;
					var PropertyName = ProxyCZ[i].getElementsByTagName("PropertyName")[0].firstChild.nodeValue;
					var Address = ProxyCZ[i].getElementsByTagName("Address")[0].firstChild.nodeValue;
					var CityName = ProxyCZ[i].getElementsByTagName("CityName")[0].firstChild.nodeValue;
					var DistrictName = ProxyCZ[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue;
					var TownName = ProxyCZ[i].getElementsByTagName("TownName")[0].firstChild.nodeValue;
					var Room = ProxyCZ[i].getElementsByTagName("Room")[0].firstChild.nodeValue;
					var Hall = ProxyCZ[i].getElementsByTagName("Hall")[0].firstChild.nodeValue;
					var Toilet = ProxyCZ[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue;
					var Balcony = ProxyCZ[i].getElementsByTagName("Balcony")[0].firstChild.nodeValue;
					var Area = ProxyCZ[i].getElementsByTagName("Area")[0].firstChild.nodeValue;
					var Cost = ProxyCZ[i].getElementsByTagName("Cost")[0].firstChild.nodeValue;
					$("#ProxyCZUL").append('<li>\n<span class="Span1">\n<a href="Others_ProxyCZShowDetails.jsp?PCZID='+PCZID+'" title="' + PropertyName + '/' + Address + '"><span class="Strong">' + PropertyName + '</span>/' + Address + '</a>\n</span>\n<span class="Span2">' + CityName + '</span>\n<span class="Span3">' + DistrictName + '</span>\n<span class="Span4">' + TownName + '</span>\n<span class="Span5"><span style="color: #F00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #F00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #F00">' + Toilet + '</span>&nbsp;卫&nbsp;<span style="color: #F00">' + Balcony + '</span>&nbsp;阳台' + '</span>\n<span class="Span6"><span style="color: #F00">' + Area + '</span>&nbsp;m<sup>2</sup>/<span style="color: #F00">' + Cost + '</span>&nbsp;元' + '</span>\n</li>');
				}
			} else {
				$("#ProxyCZUL").append("<li style='text-align=center'>\n委托代理区暂无&nbsp;<span style='color: #f00'>" + title + "</span>&nbsp;的出租数据\n</li>");
			}
		}
	})
})