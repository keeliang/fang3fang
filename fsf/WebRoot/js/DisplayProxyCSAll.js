$(document).ready(function() {
	var url = window.location.href;
	
	var title = url.indexOf('=');
	
	if (title != -1) {
		//根据特定信息筛选，比如传过来的是Title=D萝岗，那么就筛选出“地区”为“萝岗”的自主交易区的所有出售信息！！
		title = url.substring(title + 1);
		var titleType = title.substring(0, 1);
		title = title.substring(1);
		
		if(titleType == 'D') {
			//D是地区
			url = "/Fang3FangWeb/servlet/AllFangPanByDistrictName";
			var dataValue = "referaction=SelectProxyCSByDistrictName&DistrictName=" + title;
		} else if (titleType == 'T') {
			//T是商圈
			url = "/Fang3FangWeb/servlet/AllFangPanByTownName";
			var dataValue = "referaction=SelectProxyCSByTownName&TownName=" + title;
		} else if (titleType == 'C') {
			//C是价格
			url = "/Fang3FangWeb/servlet/AllFangPanByCost";			
			var pos = title.indexOf("-");
			var Cost1 = title.substring(0,pos);
			var Cost2 = title.substring(pos+1);
			var dataValue = "referaction=SelectProxyCSByCost&Cost1=" + Cost1 + "&Cost2=" + Cost2;
			title = title + "&nbsp;万元";
		} else if (titleType == 'R') {
			//R是多少间房
			url = "/Fang3FangWeb/servlet/AllFangPanByRoom";
			var dataValue = "referaction=SelectProxyCSByRoom&Room=" + title;
			title = title + "室";
		}
	} else {
		//显示所有信息
		url = "/Fang3FangWeb/servlet/SearchProxyCS";
		var dataValue = "referaction=SelectProxyCS";
	}
	
	$.ajax({
		url: url,
		type: "POST",
		dataType: "xml",
		data: dataValue,
		cache: false,
		success: function(xml){
			var ProxyCS = xml.getElementsByTagName("ProxyCS");
			if(ProxyCS.length > 0) {				
				for(var i = 0; i < ProxyCS.length; i++) {
					var PCSID = ProxyCS[i].getElementsByTagName("PCSID")[0].firstChild.nodeValue;
					var PropertyName = ProxyCS[i].getElementsByTagName("PropertyName")[0].firstChild.nodeValue;
					var Address = ProxyCS[i].getElementsByTagName("Address")[0].firstChild.nodeValue;
					var CityName = ProxyCS[i].getElementsByTagName("CityName")[0].firstChild.nodeValue;
					var DistrictName = ProxyCS[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue;
					var TownName = ProxyCS[i].getElementsByTagName("TownName")[0].firstChild.nodeValue;
					var Room = ProxyCS[i].getElementsByTagName("Room")[0].firstChild.nodeValue;
					var Hall = ProxyCS[i].getElementsByTagName("Hall")[0].firstChild.nodeValue;
					var Toilet = ProxyCS[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue;
					var Balcony = ProxyCS[i].getElementsByTagName("Balcony")[0].firstChild.nodeValue;
					var Area = ProxyCS[i].getElementsByTagName("Area")[0].firstChild.nodeValue;
					var Cost = ProxyCS[i].getElementsByTagName("Cost")[0].firstChild.nodeValue;
					$("#ProxyCSUL").append('<li>\n<span class="Span1">\n<a href="Others_ProxyCSShowDetails.jsp?PCSID='+PCSID+'" title="' + PropertyName + '/' + Address + '"><span class="Strong">' + PropertyName + '</span>/' + Address + '</a>\n</span>\n<span class="Span2">' + CityName + '</span>\n<span class="Span3">' + DistrictName + '</span>\n<span class="Span4">' + TownName + '</span>\n<span class="Span5"><span style="color: #F00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #F00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #F00">' + Toilet + '</span>&nbsp;卫&nbsp;<span style="color: #F00">' + Balcony + '</span>&nbsp;阳台' + '</span>\n<span class="Span6"><span style="color: #F00">' + Area + '</span>&nbsp;m<sup>2</sup>/<span style="color: #F00">' + Cost + '</span>&nbsp;万元' + '</span>\n</li>');
				}
			} else {
				$("#ProxyCSUL").append("<li style='text-align=center'>\n委托代理区暂无&nbsp;<span style='color: #f00'>" + title + "</span>&nbsp;的出售数据\n</li>");
			}
		}
	})
})