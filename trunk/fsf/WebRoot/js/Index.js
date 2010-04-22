$(document).ready(function() {
	/*Loading*/
	$("#Loading").ajaxStart(function(){
		$(this).find("h1").text("数据正在加载中...");
		$(this).find("img").attr("src","images/Loading.gif");
		$(this).find("h2").text("正在处理您的请求,请不要刷新,稍候片刻...");
		$(this).show();
	});
	$("#Loading").ajaxSuccess(function(){
		$(this).hide();
	});
	$("#Loading").ajaxError(function() {
		$(this).find("h1").text("数据加载失败");
		$(this).find("img").attr("src","images/Error.png");
		$(this).find("h2").text("请检查网络或者隔一段时间再试...");
		setTimeout(function() {
			$("#Loading").hide();
		}, 500);
	});
	/*快速搜索栏*/
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
	/*搜索栏*/
	$("#SearchForm").load("AjaxPage/SearchTab.jsp #FangYuanDiv",function() {
		$("#Key").click(function() {
			if($(this).attr("value") == "关键字(地区/路段)") {
				$(this).toggleClass("GrayFont");
				$(this).toggleClass("BlackFont");
				$(this).attr("value", "");
			}
		});
		$("#Key").blur(function() {
			if($(this).attr("value") == "") {
				$(this).toggleClass("GrayFont");
				$(this).toggleClass("BlackFont");
				$(this).attr("value", "关键字(地区/路段)");
			}
		});
		DisplayCity();
		DisplayDistrictWithID("C001"),
		DisplayTownWithID("D001"),
		DisplayDistrict(),
		DisplayTown()
	});
	/*自主交易 和 委托代理 的 Top5*/
	$("#AutonomousContent").load("AjaxPage/AutonomousCS.jsp", {}, function() {
		$(this).fadeIn("normal");
	});
	$("#ProxyContent").load("AjaxPage/ProxyCS.jsp", {}, function() {
		$(this).fadeIn("normal");
	});
	/*Ajax标签*/
	$("#SearchTabFangYuan").click(function() {	SelectTabWithAjax('SearchBarHeadSub', this.id, 'SearchForm');	return false;	})
	$("#SearchTabDiPi").click(function() {	SelectTabWithAjax('SearchBarHeadSub', this.id, 'SearchForm');	return false;	})
	$("#SearchTabZhuZhai").click(function() {	SelectTabWithAjax('SearchBarHeadSub', this.id, 'SearchForm');	return false;	})
	$("#SearchTabShangPu").click(function() {	SelectTabWithAjax('SearchBarHeadSub', this.id, 'SearchForm');	return false;	})
	$("#SearchTabXieZiLou").click(function() {	SelectTabWithAjax('SearchBarHeadSub', this.id, 'SearchForm');	return false;	})
	$("#SearchTabBieShu").click(function() {	SelectTabWithAjax('SearchBarHeadSub', this.id, 'SearchForm');	return false;	})
	$("#SearchTabChangFang").click(function() {	SelectTabWithAjax('SearchBarHeadSub', this.id, 'SearchForm');	return false;	})
	
	$("#AutonomousCS").click(function() {	SelectTabWithAjax('AutonomousTabSub', this.id, 'AutonomousContent');	return false;	})
	$("#AutonomousCZ").click(function() {	SelectTabWithAjax('AutonomousTabSub', this.id, 'AutonomousContent');	return false;	})
	$("#AutonomousQS").click(function() {	SelectTabWithAjax('AutonomousTabSub', this.id, 'AutonomousContent');	return false;	})
	$("#AutonomousQZ").click(function() {	SelectTabWithAjax('AutonomousTabSub', this.id, 'AutonomousContent');	return false;	})
	
	$("#ProxyCS").click(function() {	SelectTabWithAjax('ProxyTabSub', this.id, 'ProxyContent');	return false;	})
	$("#ProxyCZ").click(function() {	SelectTabWithAjax('ProxyTabSub', this.id, 'ProxyContent');	return false;	})
	$("#ProxyQS").click(function() {	SelectTabWithAjax('ProxyTabSub', this.id, 'ProxyContent');	return false;	})
	$("#ProxyQZ").click(function() {	SelectTabWithAjax('ProxyTabSub', this.id, 'ProxyContent');	return false;	})
});
function SelectTabWithAjax(parentID, id, display) {
	$("#" + parentID).find("a").each(function() {
		$(this).parent().parent().find("a").removeClass("Current");
	})
	$("#"+id).addClass("Current");
	$("#"+id).blur();
	
	var href = $("#"+id).attr("href");
	if(href.substring(0,22)=="AjaxPage/SearchTab.jsp") {
		$("#"+display).load(href, function() {
			$("#Key").click(function() {
				if($(this).attr("value") == "关键字(地区/路段)") {
					$(this).toggleClass("GrayFont");
					$(this).toggleClass("BlackFont");
					$(this).attr("value", "");
				}
			},
			
			DisplayCity(),
			DisplayDistrictWithID("C001"),
			DisplayTownWithID("D001"),
			DisplayDistrict(),
			DisplayTown()
			
			);
			$("#Key").blur(function() {
				if($(this).attr("value") == "") {
					$(this).toggleClass("GrayFont");
					$(this).toggleClass("BlackFont");
					$(this).attr("value", "关键字(地区/路段)");
				}
			});
		})
	} else {
		$("#"+display).fadeOut("fast");
		$("#"+display).load(href, {}, function() {
			$("#"+display).fadeIn("normal");
		});
	}
}
function ChangeLogicDelay(obj) {
	setTimeout(function() {ChangeLogic(obj)},200);
}
function ChangeLogic(obj) {
	var lastLetter = parseInt(obj.substring(obj.length-1, obj.length));
	var fir3 = obj.substring(0, 3);
	var str;
	if(fir3 == "Buy") {
		switch(lastLetter) {
			case 1: str = "您要买房，房上房为您提供数量丰富的业主房源信息，您也可以发布求购信息，让卖家找到您。"; break;
			case 2: str = "您联络到卖家了，但要看房并如何与业主洽谈买卖房产，请您留意了。"; break;
			case 3: str = "签署买卖合同时，有些问题需要您特别留意。您也可以邀请房上房经纪人上门签约。"; break;
			case 4: str = "银行为您提供免费的交易资金监护服务。"; break;
			case 5: str = "您买房缺资金吗？银行提供网上在线的按揭申请，为您提供优质的多组合的按揭贷款。"; break;
			case 6: str = "房上房为您提供上门签署“三方合同”及银行按揭服务等，只需要很少的费用就可以为您省心省力。"; break;
		}
		$("#IWTBText").html(str);
		$("#IWTBTextBorder").css("background-position", (lastLetter - 1) * 634 * -1 + " top");
	}
	if(fir3 == "Sel") {
		switch(lastLetter) {
			case 1: str = "您想要免费卖房吗？您只需要免费注册为房上房的会员就可以做到了。"; break;
			case 2: str = "免费的交易平台，为您提供卖家信息和专业的交易服务。"; break;
			case 3: str = "签署买卖合同时，有些问题需要您特别留意。您也可以邀请房上房经纪人上门签约。"; break;
			case 4: str = "银行为您提供免费的交易资金监护服务。"; break;
			case 5: str = "您的房子还在按揭或抵押状态吗？那么出售前您需要进行赎屋。"; break;
			case 6: str = "房上房为您提供上门签署“三方合同”及银行按揭服务等，只需要很少的费用就可以为您省心省力。"; break;
		}
		$("#IWTSText").html(str);
		$("#IWTSTextBorder").css("backgroundPosition", (lastLetter-1) * 634 * -1 + " 0");
	}
}
function DisplayCity() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/CityType",
		type: "POST",
		data: "referaction=SelectCityType",
		success: function(xml){
			DisplayClear("CityID");
			var properties = xml.getElementsByTagName("CityType");
			for(var i = 0; i < properties.length; i++) {
				var CityID = $.trim(properties[i].getElementsByTagName("CityID")[0].firstChild.nodeValue);
				var CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
				$("#CityID").append("<option value = '" + CityID + "'>" + CityName + "</option>")
			}
		}
	});
}
function DisplayDistrict() {
	$("#CityID").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/servlet/DistrictType",
			type: "POST",
			data: "referaction=SelectDisByCityID&CityID=" + $("#CityID").val(),
			success: function(xml){
				DisplayClear("DistrictID");
				var properties = xml.getElementsByTagName("DistrictType");
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#DistrictID").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
				}
				if($("#CityID").val() == "C001")	DisplayTownWithID("D001");
				if($("#CityID").val() == "C002")	DisplayTownWithID("D013");
			}
		});
		DisplayQuickSearch($("#CityID").val());
	})
}
function DisplayDistrictWithID(CityID) {
	$.ajax({
		url: "/Fang3FangWeb/servlet/DistrictType",
		type: "POST",
		data: "referaction=SelectDisByCityID&CityID=" + CityID,
		success: function(xml){
			DisplayClear("DistrictID");
			var properties = xml.getElementsByTagName("DistrictType");
			for(var i = 0; i < properties.length; i++) {
				var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
				var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
				$("#DistrictID").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
			}
			if($("#CityID").val() == "C001")	DisplayTownWithID("D001");
			if($("#CityID").val() == "C002")	DisplayTownWithID("D013");
		}
	});
}
function DisplayTown() {
	$("#DistrictID").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/servlet/TownType",
			type: "POST",
			data: "referaction=SelectTownByDistrictID&DistrictID=" + $("#DistrictID").val(),
			success: function(xml){
				DisplayClear("TownID");
				var properties = xml.getElementsByTagName("TownType");
				for(var i = 0; i < properties.length; i++) {
					TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
					TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					$("#TownID").append("<option value = '" + TownID + "'>" + TownName + "</option>")
				}
			},
			error: function(xml){
        		alert("Error loading XML document " + xml);
        	}
		});
	})
}
function DisplayTownWithID(DistrictID) {
	$.ajax({
		url: "/Fang3FangWeb/servlet/TownType",
		type: "POST",
		data: "referaction=SelectTownByDistrictID&DistrictID=" + DistrictID,
		success: function(xml){
			DisplayClear("TownID");
			var properties = xml.getElementsByTagName("TownType");
			for(var i = 0; i < properties.length; i++) {
				TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
				TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
				$("#TownID").append("<option value = '" + TownID + "'>" + TownName + "</option>")
			}
		},
		error: function(xml){
       		alert("Error loading XML document " + xml);
       	}
	});
}
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
				$("#QuickSearchContent").append("<a href='GuestPage/Others_QuickSearchShowDetails.jsp?Title=D" + encodeURI(DistrictName) + "' class='Title'>[" + DistrictName + "]</a>&nbsp;&nbsp;");
				for(var j = 0; j < District.childNodes.length; j++) {
					TownName = $.trim(District.childNodes.item(j).firstChild.nodeValue);
					$("#QuickSearchContent").append("<a href='GuestPage/Others_QuickSearchShowDetails.jsp?Title=T" + encodeURI(TownName) + "'>" + TownName + "</a>&nbsp;&nbsp;&nbsp;");
				}
			}
		}
	});
}