$(document).ready(function() {
	var url = window.location.href;
	
	var title = url.indexOf('=');
	if (title == -1) return "";
	title = url.substring(title + 1);
	var titleType = title.substring(0, 1);
	title = title.substring(1);
	
	var WenHao = url.indexOf("?"); //取&后面的所有字符串，添加到所有“全部”的链接。
	if (WenHao == -1) return "";
	var toDetailsPageParam = url.substring(WenHao);
	$("a.More").each(function() {
		var beforeValue = $(this).attr("href");
		var afterValue = beforeValue + toDetailsPageParam;
		$(this).attr("href", afterValue);
	});
	
	if(titleType == 'D') {
		url = "/Fang3FangWeb/servlet/AllFangPanByDistrictNameTop10";
		var dataValue = "DistrictName=" + title;
	} else if (titleType == 'T') {
		url = "/Fang3FangWeb/servlet/AllFangPanByTownNameTop10";
		var dataValue = "TownName=" + title;
	} else if (titleType == 'C') {
		url = "/Fang3FangWeb/servlet/AllFangPanByCostTop10";
		var pos = title.indexOf("-");
		var Cost1 = title.substring(0,pos);
		var Cost2 = title.substring(pos+1);
		var dataValue = "Cost1=" + Cost1 + "&Cost2=" + Cost2;
		title = title + "&nbsp;万元";
		if(Cost1 = 150) 
			title = Cost1 + "&nbsp;万元以上";
	} else if (titleType == 'R') {
		url = "/Fang3FangWeb/servlet/AllFangPanByRoomTop10";
		var dataValue = "Room=" + title;
		title = title + "室";
	}
	$.ajax({
		url: url,
		type: "POST",
		dataType: "xml",
		data: dataValue,
		cache: false,
		success: function(xml){
			//document.write(xml);
			/*自主交易*/
			/*出售*/
			var AutonomousCS = xml.getElementsByTagName("AutonomousCS");
			if(AutonomousCS.length > 0) {
				var AutonomousCSLength = AutonomousCS.length;
				if(AutonomousCSLength > 10) AutonomousCSLength = 10;
				
				for(var i = 0; i < AutonomousCSLength; i++) {
					var ACSID = AutonomousCS[i].getElementsByTagName("ACSID")[0].firstChild.nodeValue;
					var PropertyName = AutonomousCS[i].getElementsByTagName("PropertyName")[0].firstChild.nodeValue;
					var Address = AutonomousCS[i].getElementsByTagName("Address")[0].firstChild.nodeValue;
					var CityName = AutonomousCS[i].getElementsByTagName("CityName")[0].firstChild.nodeValue;
					var DistrictName = AutonomousCS[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue;
					var TownName = AutonomousCS[i].getElementsByTagName("TownName")[0].firstChild.nodeValue;
					var Room = AutonomousCS[i].getElementsByTagName("Room")[0].firstChild.nodeValue;
					var Hall = AutonomousCS[i].getElementsByTagName("Hall")[0].firstChild.nodeValue;
					var Toilet = AutonomousCS[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue;
					var Balcony = AutonomousCS[i].getElementsByTagName("Balcony")[0].firstChild.nodeValue;
					var Area = AutonomousCS[i].getElementsByTagName("Area")[0].firstChild.nodeValue;
					var Cost = AutonomousCS[i].getElementsByTagName("Cost")[0].firstChild.nodeValue;
					$("#AutonomousCSUL").append('<li>\n<span class="Span1">\n<a href="Others_AutonomousCSShowDetails.jsp?ACSID='+ACSID+'" title="' + PropertyName + '/' + Address + '"><span class="Strong">' + PropertyName + '</span>/' + Address + '</a>\n</span>\n<span class="Span2">' + CityName + '</span>\n<span class="Span3">' + DistrictName + '</span>\n<span class="Span4">' + TownName + '</span>\n<span class="Span5"><span style="color: #F00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #F00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #F00">' + Toilet + '</span>&nbsp;厕&nbsp;<span style="color: #F00">' + Balcony + '</span>&nbsp;阳台' + '</span>\n<span class="Span6"><span style="color: #F00">' + Area + '</span>&nbsp;m<sup>2</sup>/<span style="color: #F00">' + Cost + '</span>&nbsp;万元' + '</span>\n</li>');
				}
			} else {
				$("#AutonomousCSUL").append("<li style='text-align=center'>\n自主交易区暂无&nbsp;<span style='color: #f00'>" + decodeURI(title) + "</span>&nbsp;的出售数据\n</li>");
			}
			/*出租*/
			var AutonomousCZ = xml.getElementsByTagName("AutonomousCZ");
			if(AutonomousCZ.length > 0) {
				var AutonomousCZLength = AutonomousCZ.length;
				if(AutonomousCZLength > 10) AutonomousCZLength = 10;
				
				for(var i = 0; i < AutonomousCZLength; i++) {
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
					$("#AutonomousCZUL").append('<li>\n<span class="Span1">\n<a href="Others_AutonomousCZShowDetails.jsp?ACZID='+ACZID+'" title="' + PropertyName + '/' + Address + '"><span class="Strong">' + PropertyName + '</span>/' + Address + '</a>\n</span>\n<span class="Span2">' + CityName + '</span>\n<span class="Span3">' + DistrictName + '</span>\n<span class="Span4">' + TownName + '</span>\n<span class="Span5"><span style="color: #F00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #F00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #F00">' + Toilet + '</span>&nbsp;厕&nbsp;<span style="color: #F00">' + Balcony + '</span>&nbsp;阳台' + '</span>\n<span class="Span6"><span style="color: #F00">' + Area + '</span>&nbsp;m<sup>2</sup>/<span style="color: #F00">' + Cost + '</span>&nbsp;元' + '</span>\n</li>');
				}
			} else {
				$("#AutonomousCZUL").append("<li style='text-align=center'>\n自主交易区暂无&nbsp;<span style='color: #f00'>" + decodeURI(title) + "</span>&nbsp;的出租数据\n</li>");
			}
			/*求购*/
			var AutonomousQG = xml.getElementsByTagName("AutonomousQG");
			if(AutonomousQG.length > 0) {
				var AutonomousQGLength = AutonomousQG.length;
				if(AutonomousQGLength > 10) AutonomousQGLength = 10;
				
				for(var i = 0; i < AutonomousQGLength; i++) {
					var AQGID = AutonomousQG[i].getElementsByTagName("AQGID")[0].firstChild.nodeValue;
					var CityName = AutonomousQG[i].getElementsByTagName("CityName")[0].firstChild.nodeValue;
					var DistrictName = AutonomousQG[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue;
					var TownName = AutonomousQG[i].getElementsByTagName("TownName")[0].firstChild.nodeValue;
					var Room = AutonomousQG[i].getElementsByTagName("Room")[0].firstChild.nodeValue;
					var Hall = AutonomousQG[i].getElementsByTagName("Hall")[0].firstChild.nodeValue;
					var Toilet = AutonomousQG[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue;
					var Balcony = AutonomousQG[i].getElementsByTagName("Balcony")[0].firstChild.nodeValue;
					var Area1 = AutonomousQG[i].getElementsByTagName("Area1")[0].firstChild.nodeValue;
					var Area2 = AutonomousQG[i].getElementsByTagName("Area2")[0].firstChild.nodeValue;
					var Cost1 = AutonomousQG[i].getElementsByTagName("Cost1")[0].firstChild.nodeValue;
					var Cost2 = AutonomousQG[i].getElementsByTagName("Cost2")[0].firstChild.nodeValue;
					$("#AutonomousQGUL").append('<li>\n<a href="Others_AutonomousQGShowDetails.jsp?AQGID='+AQGID+'">\n<span class="Span7"><span style="color: #f00">' + CityName + '</span>市&nbsp;&nbsp;<span style="color: #f00">' + DistrictName + '</span>区&nbsp;&nbsp;<span style="color: #f00">' + TownName + '</span>&nbsp;</span>\n</a>\n<span class="Span8"><span style="color: #f00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #f00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #f00">' + Toilet + '</span>&nbsp;厕&nbsp;<span style="color: #f00">' + Balcony + '</span>&nbsp;阳台</span>\n<span class="Span9"><span style="color: #f00">' + Area1 + '</span>&nbsp;m<sup>2</sup>&nbsp;至&nbsp;<span style="color: #f00">' + Area2 + '</span>&nbsp;m<sup>2</sup></span>\n<span class="Span10"><span style="color: #f00">' + Cost1 + '</span>&nbsp;万元&nbsp;至&nbsp;<span style="color: #f00">' + Cost2 + '</span>&nbsp;万元</span>\n</li>\n');
				}
			} else {
				$("#AutonomousQGUL").append("<li style='text-align=center'>\n自主交易区暂无&nbsp;<span style='color: #f00'>" + decodeURI(title) + "</span>&nbsp;的求购数据\n</li>");
			}
			/*求租*/
			var AutonomousQZ = xml.getElementsByTagName("AutonomousQZ");
			if(AutonomousQZ.length > 0) {
				var AutonomousQZLength = AutonomousQZ.length;
				if(AutonomousQZLength > 10) AutonomousQZLength = 10;
				
				for(var i = 0; i < AutonomousQZLength; i++) {
					var AQZID = AutonomousQZ[i].getElementsByTagName("AQZID")[0].firstChild.nodeValue;
					var CityName = AutonomousQZ[i].getElementsByTagName("CityName")[0].firstChild.nodeValue;
					var DistrictName = AutonomousQZ[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue;
					var TownName = AutonomousQZ[i].getElementsByTagName("TownName")[0].firstChild.nodeValue;
					var Room = AutonomousQZ[i].getElementsByTagName("Room")[0].firstChild.nodeValue;
					var Hall = AutonomousQZ[i].getElementsByTagName("Hall")[0].firstChild.nodeValue;
					var Toilet = AutonomousQZ[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue;
					var Balcony = AutonomousQZ[i].getElementsByTagName("Balcony")[0].firstChild.nodeValue;
					var Area1 = AutonomousQZ[i].getElementsByTagName("Area1")[0].firstChild.nodeValue;
					var Area2 = AutonomousQZ[i].getElementsByTagName("Area2")[0].firstChild.nodeValue;
					var Cost1 = AutonomousQZ[i].getElementsByTagName("Cost1")[0].firstChild.nodeValue;
					var Cost2 = AutonomousQZ[i].getElementsByTagName("Cost2")[0].firstChild.nodeValue;
					$("#AutonomousQZUL").append('<li>\n<a href="Others_AutonomousQZShowDetails.jsp?AQZID='+AQZID+'">\n<span class="Span7"><span style="color: #f00">' + CityName + '</span>市&nbsp;&nbsp;<span style="color: #f00">' + DistrictName + '</span>区&nbsp;&nbsp;<span style="color: #f00">' + TownName + '</span>&nbsp;</span>\n</a>\n<span class="Span8"><span style="color: #f00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #f00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #f00">' + Toilet + '</span>&nbsp;厕&nbsp;<span style="color: #f00">' + Balcony + '</span>&nbsp;阳台</span>\n<span class="Span9"><span style="color: #f00">' + Area1 + '</span>&nbsp;m<sup>2</sup>&nbsp;至&nbsp;<span style="color: #f00">' + Area2 + '</span>&nbsp;m<sup>2</sup></span>\n<span class="Span10"><span style="color: #f00">' + Cost1 + '</span>&nbsp;元&nbsp;至&nbsp;<span style="color: #f00">' + Cost2 + '</span>&nbsp;元</span>\n</li>\n');
				}
			} else {
				$("#AutonomousQZUL").append("<li style='text-align=center'>\n自主交易区暂无&nbsp;<span style='color: #f00'>" + decodeURI(title) + "</span>&nbsp;的求租数据\n</li>");
			}
			/*委托代理*/
			/*出售*/
			var ProxyCS = xml.getElementsByTagName("ProxyCS");
			if(ProxyCS.length > 0) {
				var ProxyCSLength = ProxyCS.length;
				if(ProxyCSLength > 10) ProxyCSLength = 10;
				
				for(var i = 0; i < ProxyCSLength; i++) {
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
					$("#ProxyCSUL").append('<li>\n<span class="Span1">\n<a href="Others_ProxyCSShowDetails.jsp?PCSID='+PCSID+'" title="' + PropertyName + '/' + Address + '"><span class="Strong">' + PropertyName + '</span>/' + Address + '</a>\n</span>\n<span class="Span2">' + CityName + '</span>\n<span class="Span3">' + DistrictName + '</span>\n<span class="Span4">' + TownName + '</span>\n<span class="Span5"><span style="color: #F00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #F00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #F00">' + Toilet + '</span>&nbsp;厕&nbsp;<span style="color: #F00">' + Balcony + '</span>&nbsp;阳台' + '</span>\n<span class="Span6"><span style="color: #F00">' + Area + '</span>&nbsp;m<sup>2</sup>/<span style="color: #F00">' + Cost + '</span>&nbsp;万元' + '</span>\n</li>');
				}
			} else {
				$("#ProxyCSUL").append("<li style='text-align=center'>\n委托代理区暂无&nbsp;<span style='color: #f00'>" + decodeURI(title) + "</span>&nbsp;的出售数据\n</li>");
			}
			/*出租*/
			var ProxyCZ = xml.getElementsByTagName("ProxyCZ");
			if(ProxyCZ.length > 0) {
				var ProxyCZLength = ProxyCZ.length;
				if(ProxyCZLength > 10) ProxyCZLength = 10;
				
				for(var i = 0; i < ProxyCZLength; i++) {
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
					$("#ProxyCZUL").append('<li>\n<span class="Span1">\n<a href="Others_ProxyCZShowDetails.jsp?PCZID='+PCZID+'" title="' + PropertyName + '/' + Address + '"><span class="Strong">' + PropertyName + '</span>/' + Address + '</a>\n</span>\n<span class="Span2">' + CityName + '</span>\n<span class="Span3">' + DistrictName + '</span>\n<span class="Span4">' + TownName + '</span>\n<span class="Span5"><span style="color: #F00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #F00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #F00">' + Toilet + '</span>&nbsp;厕&nbsp;<span style="color: #F00">' + Balcony + '</span>&nbsp;阳台' + '</span>\n<span class="Span6"><span style="color: #F00">' + Area + '</span>&nbsp;m<sup>2</sup>/<span style="color: #F00">' + Cost + '</span>&nbsp;元' + '</span>\n</li>');
				}
			} else {
				$("#ProxyCZUL").append("<li style='text-align=center'>\n委托代理区暂无&nbsp;<span style='color: #f00'>" + decodeURI(title) + "</span>&nbsp;的出租数据\n</li>");
			}
			/*求购*/
			var ProxyQG = xml.getElementsByTagName("ProxyQG");
			if(ProxyQG.length > 0) {
				var ProxyQGLength = ProxyQG.length;
				if(ProxyQGLength > 10) ProxyQGLength = 10;
				
				for(var i = 0; i < ProxyQGLength; i++) {
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
					$("#ProxyQGUL").append('<li>\n<a href="Others_ProxyQGShowDetails.jsp?PQGID='+PQGID+'">\n<span class="Span7"><span style="color: #f00">' + CityName + '</span>市&nbsp;&nbsp;<span style="color: #f00">' + DistrictName + '</span>区&nbsp;&nbsp;<span style="color: #f00">' + TownName + '</span>&nbsp;</span>\n</a>\n<span class="Span8"><span style="color: #f00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #f00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #f00">' + Toilet + '</span>&nbsp;厕&nbsp;<span style="color: #f00">' + Balcony + '</span>&nbsp;阳台</span>\n<span class="Span9"><span style="color: #f00">' + Area1 + '</span>&nbsp;m<sup>2</sup>&nbsp;至&nbsp;<span style="color: #f00">' + Area2 + '</span>&nbsp;m<sup>2</sup></span>\n<span class="Span10"><span style="color: #f00">' + Cost1 + '</span>&nbsp;万元&nbsp;至&nbsp;<span style="color: #f00">' + Cost2 + '</span>&nbsp;万元</span>\n</li>\n');
				}
			} else {
				$("#ProxyQGUL").append("<li style='text-align=center'>\n委托代理区暂无&nbsp;<span style='color: #f00'>" + decodeURI(title) + "</span>&nbsp;的求购数据\n</li>");
			}
			/*求租*/
			var ProxyQZ = xml.getElementsByTagName("ProxyQZ");
			if(ProxyQZ.length > 0) {
				var ProxyQZLength = ProxyQZ.length;
				if(ProxyQZLength > 10) ProxyQZLength = 10;
				
				for(var i = 0; i < ProxyQZLength; i++) {
					var PQZID = ProxyQZ[i].getElementsByTagName("PQZID")[0].firstChild.nodeValue;
					var CityName = ProxyQZ[i].getElementsByTagName("CityName")[0].firstChild.nodeValue;
					var DistrictName = ProxyQZ[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue;
					var TownName = ProxyQZ[i].getElementsByTagName("TownName")[0].firstChild.nodeValue;
					var Room = ProxyQZ[i].getElementsByTagName("Room")[0].firstChild.nodeValue;
					var Hall = ProxyQZ[i].getElementsByTagName("Hall")[0].firstChild.nodeValue;
					var Toilet = ProxyQZ[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue;
					var Balcony = ProxyQZ[i].getElementsByTagName("Balcony")[0].firstChild.nodeValue;
					var Area1 = ProxyQZ[i].getElementsByTagName("Area1")[0].firstChild.nodeValue;
					var Area2 = ProxyQZ[i].getElementsByTagName("Area2")[0].firstChild.nodeValue;
					var Cost1 = ProxyQZ[i].getElementsByTagName("Cost1")[0].firstChild.nodeValue;
					var Cost2 = ProxyQZ[i].getElementsByTagName("Cost2")[0].firstChild.nodeValue;
					$("#ProxyQZUL").append('<li>\n<a href="Others_ProxyQZShowDetails.jsp?PQZID='+PQZID+'">\n<span class="Span7"><span style="color: #f00">' + CityName + '</span>市&nbsp;&nbsp;<span style="color: #f00">' + DistrictName + '</span>区&nbsp;&nbsp;<span style="color: #f00">' + TownName + '</span>&nbsp;</span>\n</a>\n<span class="Span8"><span style="color: #f00">' + Room + '</span>&nbsp;室&nbsp;<span style="color: #f00">' + Hall + '</span>&nbsp;厅&nbsp;<span style="color: #f00">' + Toilet + '</span>&nbsp;厕&nbsp;<span style="color: #f00">' + Balcony + '</span>&nbsp;阳台</span>\n<span class="Span9"><span style="color: #f00">' + Area1 + '</span>&nbsp;m<sup>2</sup>&nbsp;至&nbsp;<span style="color: #f00">' + Area2 + '</span>&nbsp;m<sup>2</sup></span>\n<span class="Span10"><span style="color: #f00">' + Cost1 + '</span>&nbsp;元&nbsp;至&nbsp;<span style="color: #f00">' + Cost2 + '</span>&nbsp;元</span>\n</li>\n');
				}
			} else {
				$("#ProxyQZUL").append("<li style='text-align=center'>\n委托代理区暂无&nbsp;<span style='color: #f00'>" + decodeURI(title) + "</span>&nbsp;的求租数据\n</li>");
			}
		},
		error: function(a, b) {
			alert(b);
		}
	});
	
	$("#AutonomousCSA").click(function() {
		$.scrollTo($("#AutonomousCS"), 400);
		return false;
	});
	$("#AutonomousCZA").click(function() {
		$.scrollTo($("#AutonomousCZ"), 400);
		return false;
	});
	$("#AutonomousQGA").click(function() {
		$.scrollTo($("#AutonomousQG"), 400);
		return false;
	});
	$("#AutonomousQZA").click(function() {
		$.scrollTo($("#AutonomousQZ"), 400);
		return false;
	});
	$(".BackToAutonomous").click(function() {
		$.scrollTo($("#AutonomousButtonGroup"), 400);
		return false;
	});
	$("#ProxyCSA").click(function() {
		$.scrollTo($("#ProxyCS"), 400);
		return false;
	});
	$("#ProxyCZA").click(function() {
		$.scrollTo($("#ProxyCZ"), 400);
		return false;
	});
	$("#ProxyQGA").click(function() {
		$.scrollTo($("#ProxyQG"), 400);
		return false;
	});
	$("#ProxyQZA").click(function() {
		$.scrollTo($("#ProxyQZ"), 400);
		return false;
	});
	$(".BackToProxy").click(function() {
		$.scrollTo($("#ProxyButtonGroup"), 400);
		return false;
	});
	$("#ChangeToProxy").click(function() {
		$("#Autonomous").hide("fast");
		$("#Proxy").show("normal");
		return false;
	});
	$("#ChangeToAutonomous").click(function() {
		$("#Proxy").hide("fast");
		$("#Autonomous").show("normal");
		return false;
	});
})