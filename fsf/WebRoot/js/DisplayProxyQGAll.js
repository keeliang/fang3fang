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
			var dataValue = "referaction=SelectProxyQGByDistrictName&DistrictName=" + title;
		} else if (titleType == 'T') {
			//T是商圈
			url = "/Fang3FangWeb/servlet/AllFangPanByTownName";
			var dataValue = "referaction=SelectProxyQGByTownName&TownName=" + title;
		} else if (titleType == 'C') {
			//C是价格
			url = "/Fang3FangWeb/servlet/AllFangPanByCost";			
			var pos = title.indexOf("-");
			var Cost1 = title.substring(0,pos);
			var Cost2 = title.substring(pos+1);
			var dataValue = "referaction=SelectProxyQGByCost&Cost1=" + Cost1 + "&Cost2=" + Cost2;
			title = title + "&nbsp;万元";
		} else if (titleType == 'R') {
			//R是多少间房
			url = "/Fang3FangWeb/servlet/AllFangPanByRoom";
			var dataValue = "referaction=SelectProxyQGByRoom&Room=" + title;
			title = title + "室";
		}
	} else {
		//显示所有信息
		url = "/Fang3FangWeb/servlet/ProxyQG";
		var dataValue = "referaction=SelectProxyQG";
	}
	
	$.ajax({
		url: url,
		type: "POST",
		dataType: "xml",
		data: dataValue,
		cache: false,
		success: function(xml){
			var ProxyQG = xml.getElementsByTagName("ProxyQG");
			if(ProxyQG.length > 0) {				
				for(var i = 0; i < ProxyQG.length; i++) {
					var PQGID = ProxyQG[i].getElementsByTagName("PQGID")[0].firstChild.nodeValue;
					var CityName = ProxyQG[i].getElementsByTagName("CityName")[0].firstChild.nodeValue;
					var DistrictName = ProxyQG[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue;
					var TownName = ProxyQG[i].getElementsByTagName("TownName")[0].firstChild.nodeValue;
					var Room = ProxyQG[i].getElementsByTagName("Room")[0].firstChild.nodeValue;
					var Hall = ProxyQG[i].getElementsByTagName("Hall")[0].firstChild.nodeValue;
					var Toilet = ProxyQG[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue;
					var Balcony = ProxyQG[i].getElementsByTagName("Balcony")[0].firstChild.nodeValue;
					var Area1 = ProxyQG[i].getElementsByTagName("Area1")[0].firstChild.nodeValue;
					var Area2 = ProxyQG[i].getElementsByTagName("Area2")[0].firstChild.nodeValue;
					var Cost1 = ProxyQG[i].getElementsByTagName("Cost1")[0].firstChild.nodeValue;
					var Cost2 = ProxyQG[i].getElementsByTagName("Cost2")[0].firstChild.nodeValue;
					$("#ProxyQGUL").append('<li>\n<a href="Others_ProxyQGShowDetails.jsp?PQGID='+PQGID+'">\n<span class="Span7"><span style="color: #f00">' + CityName + '</span>市&nbsp;&nbsp;<span style="color: #f00">' + DistrictName + '</span>区&nbsp;&nbsp;<span style="color: #f00">' + TownName + '</span>&nbsp;</span>\n</a>\n<span class="Span8"><span style="color: #f00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #f00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #f00">' + Toilet + '</span>&nbsp;卫&nbsp;<span style="color: #f00">' + Balcony + '</span>&nbsp;阳台</span>\n<span class="Span9"><span style="color: #f00">' + Area1 + '</span>&nbsp;m<sup>2</sup>&nbsp;至&nbsp;<span style="color: #f00">' + Area2 + '</span>&nbsp;m<sup>2</sup></span>\n<span class="Span10"><span style="color: #f00">' + Cost1 + '</span>&nbsp;万元&nbsp;至&nbsp;<span style="color: #f00">' + Cost2 + '</span>&nbsp;万元</span>\n</li>\n');
				}
			} else {
				$("#ProxyQGUL").append("<li style='text-align=center'>\n委托代理区暂无&nbsp;<span style='color: #f00'>" + title + "</span>&nbsp;的求购数据\n</li>");
			}
		}
	})
})