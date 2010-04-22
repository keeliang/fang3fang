$(document).ready(function() {
	LogicClass();
	AdClass();
	QuickSearch();
	FreeTrading();
	TradingCommission();
	MesSelected();
});

function LogicClass() {
	$("#LogicTab1").click(function() {
		$(this).addClass("select");
		$("#LogicTab2").removeClass("select");
		
		$(".LogicButton").find("a").each(function() {
			$(this).css("backgroundImage", "url('images/LogicBuyButton.gif')");
		})
		
		$(".LogicDirection").css("backgroundPosition", "0 top");
		$(".LogicText").text("您要买房，房上房为您提供数量丰富的业主房源信息，您也可以发布求购信息，让卖家找到您。");
		
		return false;
	});
	
	$("#LogicTab2").click(function() {
		$(this).addClass("select");
		$("#LogicTab1").removeClass("select");
		
		$(".LogicButton").find("a").each(function() {
			$(this).css("backgroundImage", "url('images/LogicSellButton.gif')");
		})
		
		$(".LogicDirection").css("backgroundPosition", "0 top");
		$(".LogicText").text("您想要免费卖房吗？您只需要免费注册为房上房的会员就可以做到了。");
		
		return false;
	});
	
	$(".LogicButton").find("a").each(function() {
		$(this).mouseover(function() {
			var LogicType = $(this).css("backgroundImage");
			var className = $(this).attr("class").substring(6);
			var textArea = $(".LogicText");
			
			if(LogicType.indexOf("Buy") != -1) {
				switch(className) {
					case "1": 
						$(".LogicDirection").css("backgroundPosition", "0 top");
						textArea.text("您要买房，房上房为您提供数量丰富的业主房源信息，您也可以发布求购信息，让卖家找到您。");
						break;
					case "2":
						$(".LogicDirection").css("backgroundPosition", "-674px top");
						textArea.text("您联络到卖家了，但要看房并如何与业主洽谈买卖房产，请您留意了。");
						break;
					case "3":
						$(".LogicDirection").css("backgroundPosition", "-1348px top");
						textArea.text("签署买卖合同时，有些问题需要您特别留意。您也可以邀请房上房经纪人上门签约。");
						break;
					case "4":
						$(".LogicDirection").css("backgroundPosition", "-2022px top");
						textArea.text("银行为您提供免费的交易资金监护服务。");
						break;
					case "5":
						$(".LogicDirection").css("backgroundPosition", "-2696px top");
						textArea.text("您买房缺资金吗？银行提供网上在线的按揭申请，为您提供优质的多组合的按揭贷款。");
						break;
					case "6":
						$(".LogicDirection").css("backgroundPosition", "-3370px top");
						textArea.text("房上房为您提供上门签署“三方合同”及银行按揭服务等，只需要很少的费用就可以为您省心省力。");
						break;
				}
			} else {
				switch(className) {
					case "1": 
						$(".LogicDirection").css("backgroundPosition", "0 top");
						textArea.text("您想要免费卖房吗？您只需要免费注册为房上房的会员就可以做到了。");
						break;
					case "2":
						$(".LogicDirection").css("backgroundPosition", "-674px top");
						textArea.text("免费的交易平台，为您提供卖家信息和专业的交易服务。");
						break;
					case "3":
						$(".LogicDirection").css("backgroundPosition", "-1348px top");
						textArea.text("签署买卖合同时，有些问题需要您特别留意。您也可以邀请房上房经纪人上门签约。");
						break;
					case "4":
						$(".LogicDirection").css("backgroundPosition", "-2022px top");
						textArea.text("银行为您提供免费的交易资金监护服务。");
						break;
					case "5":
						$(".LogicDirection").css("backgroundPosition", "-2696px top");
						textArea.text("您的房子还在按揭或抵押状态吗？那么出售前您需要进行赎屋。");
						break;
					case "6":
						$(".LogicDirection").css("backgroundPosition", "-3370px top");
						textArea.text("房上房为您提供上门签署“三方合同”及银行按揭服务等，只需要很少的费用就可以为您省心省力。");
						break;
				}
			}
		})
	})
}

function AdClass() {
	$(".column2 .frame").find("a").each(function() {
		$(this).click(function() {			
			$(".column2 .select").removeClass("select");
			$(this).parent().addClass("select");
			
			if( $(this).parent().hasClass("no1") ) {
				$(this).parent().parent().css("backgroundPosition", "0px top");
			}
			if( $(this).parent().hasClass("no2") ) {
				$(this).parent().parent().css("backgroundPosition", "-177px top");
			}
			if( $(this).parent().hasClass("no3") ) {
				$(this).parent().parent().css("backgroundPosition", "-354px top");
			}
			if( $(this).parent().hasClass("no4") ) {
				$(this).parent().parent().css("backgroundPosition", "-531px top");
			}
			return false;
		});
	})
}

function QuickSearch() {
	$(".SearchBarTab ul a").click(function() {
		$(".SearchBarTab ul a.selected").removeClass("selected");
		var className = $(this).attr("class").substring(2);
		$(this).addClass("selected");
		
		switch(className) {
			case "1": 
				$(".SearchBarDirection").css("backgroundPosition", "0 top");
				break;
			case "2":
				$(".SearchBarDirection").css("backgroundPosition", "-954px top");
				break;
			case "3":
				$(".SearchBarDirection").css("backgroundPosition", "-1908px top");
				break;
			case "4":
				$(".SearchBarDirection").css("backgroundPosition", "-2862px top");
				break;
			case "5":
				$(".SearchBarDirection").css("backgroundPosition", "-3818px top");
				break;
			case "6":
				$(".SearchBarDirection").css("backgroundPosition", "-4770px top");
				break;
			case "7":
				$(".SearchBarDirection").css("backgroundPosition", "-5724px top");
				break;
		}
		
		return false;
	})
}

function FreeTrading() {
	$("#FreeTrading ul a").click(function() {
		$("#FreeTrading ul a.select").removeClass("select");
		var className = $(this).attr("class").substring(3);
		$(this).addClass("select");
		var html = "";
		
		switch(className) {
			case "1":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR class="HEAD"><TH class="no1">物业名称/地址</TH><TH class="no2">城市</TH><TH class="no3">区县</TH><TH class="no4">商圈</TH><TH class="no5">户型</TH><TH class="no6">面积</TH><TH class="no7">价格(万元/套)</TH><TH class="no8">发布日期</TH><TH><a href="#">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<TBODY></TBODY>');
				
				$.ajax({
				url: "/Fang3FangWeb/servlet/SearchEstateCS",
				type: "POST",
				dataType: "xml",
				data: "referaction=SelectEstateCSTop10&Type=1",
				success: function(xml) {
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						for(var i = 0; i < $(properties).length; i++) {
							var ECSID = $(properties[i]).find("ECSID").text();
							var PropertyName = $(properties[i]).find("PropertyName").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area = $(properties[i]).find("Area").text();
							var Cost = $(properties[i]).find("Cost").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#FreeTradingTable tbody").append('<TR class="BODY"><a href="#"><TD class="no1"><div class="ControlOverflow">'+PropertyName+'</div></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="RED">'+Room+'</span>房&nbsp;<span class="RED">'+Hall+'</span>厅&nbsp;<span class="RED">'+Toilet+'</span>卫</TD><TD class="no6"><span class="RED">'+Area+'</span>m<sup>2</sup></TD><TD class="no7"><span class="RED">'+Cost+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></a></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "2":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR class="HEAD"><TH class="no1">物业名称/地址</TH><TH class="no2">城市</TH><TH class="no3">区县</TH><TH class="no4">商圈</TH><TH class="no5">户型</TH><TH class="no6">面积</TH><TH class="no7">价格(元/月)</TH><TH class="no8">发布日期</TH><TH><a href="#">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/servlet/SearchEstateCZ",
				type: "POST",
				dataType: "xml",
				data: "referaction=SelectEstateCZTop10&Type=1",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var ECZID = $(properties[i]).find("ECZID").text();
							var PropertyName = $(properties[i]).find("PropertyName").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area = $(properties[i]).find("Area").text();
							var Cost = $(properties[i]).find("Cost").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#FreeTradingTable tbody").append('<TR class="BODY"><a href="#"><TD class="no1"><div class="ControlOverflow">'+PropertyName+'</div></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'+</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="RED">'+Room+'</span>房&nbsp;<span class="RED">'+Hall+'</span>厅&nbsp;<span class="RED">'+Toilet+'</span>卫</TD><TD class="no6"><span class="RED">'+Area+'</span>m<sup>2</sup></TD><TD class="no7"><span class="RED">'+Cost+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></a></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "3":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR class="HEAD"><TH class="no2">城市</TH><TH class="no3">区县</TH><TH class="no4">商圈</TH><TH class="no9">期望户型</TH><TH class="no9">面积范围</TH>	<TH class="no9">价格范围(万元/套)</TH><TH class="no8">发布日期</TH><TH><a href="#">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/servlet/EstateQG",
				type: "POST",
				dataType: "xml",
				data: "referaction=SelectEstateQGTop10&Type=1",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var EQGID = $(properties[i]).find("EQGID").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area1 = $(properties[i]).find("Area1").text();
							var Area2 = $(properties[i]).find("Area2").text();
							var Cost1 = $(properties[i]).find("Cost1").text();
							var Cost2 = $(properties[i]).find("Cost2").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#FreeTradingTable tbody").append('<TR><a href="#"><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no9"><span class="RED">'+Room+'</span>房&nbsp;<span class="RED">'+Hall+'</span>厅&nbsp;<span class="RED">'+Toilet+'</span>卫&nbsp;</TD><TD class="no9"><span class="RED">'+Area1+'</span>m<sup>2</sup>&nbsp;至&nbsp;<span class="RED">'+Area2+'</span>m<sup>2</sup></TD><TD class="no9"><span class="RED">'+Cost1+'</span>万&nbsp;至&nbsp;<span class="RED">'+Cost2+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></a></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "4":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR class="HEAD"><TH class="no2">城市</TH><TH class="no3">区县</TH><TH class="no4">商圈</TH><TH class="no9">期望户型</TH><TH class="no9">面积范围</TH>	<TH class="no9">价格范围(元/月)</TH><TH class="no8">发布日期</TH><TH><a href="#">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/servlet/EstateQZ",
				type: "POST",
				dataType: "xml",
				data: "referaction=SelectEstateQZTop10&Type=1",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var EQZID = $(properties[i]).find("EQZID").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area1 = $(properties[i]).find("Area1").text();
							var Area2 = $(properties[i]).find("Area2").text();
							var Cost1 = $(properties[i]).find("Cost1").text();
							var Cost2 = $(properties[i]).find("Cost2").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#FreeTradingTable tbody").append('<TR><a href="#"><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no9"><span class="RED">'+Room+'</span>房&nbsp;<span class="RED">'+Hall+'</span>厅&nbsp;<span class="RED">'+Toilet+'</span>卫&nbsp;</TD><TD class="no9"><span class="RED">'+Area1+'</span>m<sup>2</sup>&nbsp;至&nbsp;<span class="RED">'+Area2+'</span>m<sup>2</sup></TD><TD class="no9"><span class="RED">'+Cost1+'</span>万&nbsp;至&nbsp;<span class="RED">'+Cost2+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></a></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
		}
		
		return false;
	});
}

function TradingCommission() {
	$("#TradingCommission ul a").click(function() {
		$("#TradingCommission ul a.select").removeClass("select");
		var className = $(this).attr("class").substring(3);
		$(this).addClass("select");
		
		switch(className) {
			case "1":
				$("#TradingCommissionTable").empty();
				$("#TradingCommissionTable").append('<thead><TR class="HEAD"><TH class="no1">物业名称/地址</TH><TH class="no2">城市</TH><TH class="no3">区县</TH><TH class="no4">商圈</TH><TH class="no5">户型</TH><TH class="no6">面积</TH><TH class="no7">价格(万元/套)</TH><TH class="no8">发布日期</TH><TH><a href="#">我要发布</a></TH></TR></thead>');
				$("#TradingCommissionTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/servlet/SearchEstateCS",
				type: "POST",
				dataType: "xml",
				data: "referaction=SelectEstateCSTop10&Type=2",
				success: function(xml) {
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						for(var i = 0; i < $(properties).length; i++) {
							var ECSID = $(properties[i]).find("ECSID").text();
							var PropertyName = $(properties[i]).find("PropertyName").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area = $(properties[i]).find("Area").text();
							var Cost = $(properties[i]).find("Cost").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#TradingCommissionTable tbody").append('<TR class="BODY"><a href="#"><TD class="no1"><div class="ControlOverflow">'+PropertyName+'</div></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="RED">'+Room+'</span>房&nbsp;<span class="RED">'+Hall+'</span>厅&nbsp;<span class="RED">'+Toilet+'</span>卫</TD><TD class="no6"><span class="RED">'+Area+'</span>m<sup>2</sup></TD><TD class="no7"><span class="RED">'+Cost+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></a></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "2":
				$("#TradingCommissionTable").empty();
				$("#TradingCommissionTable").append('<thead><TR class="HEAD"><TH class="no1">物业名称/地址</TH><TH class="no2">城市</TH><TH class="no3">区县</TH><TH class="no4">商圈</TH><TH class="no5">户型</TH><TH class="no6">面积</TH><TH class="no7">价格(元/月)</TH><TH class="no8">发布日期</TH><TH><a href="#">我要发布</a></TH></TR></thead>');
				$("#TradingCommissionTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/servlet/SearchEstateCZ",
				type: "POST",
				dataType: "xml",
				data: "referaction=SelectEstateCZTop10&Type=2",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var ECZID = $(properties[i]).find("ECZID").text();
							var PropertyName = $(properties[i]).find("PropertyName").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area = $(properties[i]).find("Area").text();
							var Cost = $(properties[i]).find("Cost").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#TradingCommissionTable tbody").append('<TR class="BODY"><a href="#"><TD class="no1"><div class="ControlOverflow">'+PropertyName+'</div></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'+</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="RED">'+Room+'</span>房&nbsp;<span class="RED">'+Hall+'</span>厅&nbsp;<span class="RED">'+Toilet+'</span>卫</TD><TD class="no6"><span class="RED">'+Area+'</span>m<sup>2</sup></TD><TD class="no7"><span class="RED">'+Cost+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></a></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "3":
				$("#TradingCommissionTable").empty();
				$("#TradingCommissionTable").append('<thead><TR class="HEAD"><TH class="no2">城市</TH><TH class="no3">区县</TH><TH class="no4">商圈</TH><TH class="no9">期望户型</TH><TH class="no9">面积范围</TH>	<TH class="no9">价格范围(万元/套)</TH><TH class="no8">发布日期</TH><TH><a href="#">我要发布</a></TH></TR></thead>');
				$("#TradingCommissionTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/servlet/EstateQG",
				type: "POST",
				dataType: "xml",
				data: "referaction=SelectEstateQGTop10&Type=2",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var EQGID = $(properties[i]).find("EQGID").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area1 = $(properties[i]).find("Area1").text();
							var Area2 = $(properties[i]).find("Area2").text();
							var Cost1 = $(properties[i]).find("Cost1").text();
							var Cost2 = $(properties[i]).find("Cost2").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#TradingCommissionTable tbody").append('<TR><a href="#"><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no9"><span class="RED">'+Room+'</span>房&nbsp;<span class="RED">'+Hall+'</span>厅&nbsp;<span class="RED">'+Toilet+'</span>卫&nbsp;</TD><TD class="no9"><span class="RED">'+Area1+'</span>m<sup>2</sup>&nbsp;至&nbsp;<span class="RED">'+Area2+'</span>m<sup>2</sup></TD><TD class="no9"><span class="RED">'+Cost1+'</span>万&nbsp;至&nbsp;<span class="RED">'+Cost2+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></a></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "4":
				$("#TradingCommissionTable").empty();
				$("#TradingCommissionTable").append('<THEAD><TR class="HEAD"><TH class="no2">城市</TH><TH class="no3">区县</TH><TH class="no4">商圈</TH><TH class="no9">期望户型</TH><TH class="no9">面积范围</TH>	<TH class="no9">价格范围(元/月)</TH><TH class="no8">发布日期</TH><TH><a href="#">我要发布</a></TH></TR></THEAD>');
				$("#TradingCommissionTable").append('<TBODY></TBODY>');
				$.ajax({
				url: "/Fang3FangWeb/servlet/EstateQZ",
				type: "POST",
				dataType: "xml",
				data: "referaction=SelectEstateQZTop10&Type=2",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var EQZID = $(properties[i]).find("EQZID").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area1 = $(properties[i]).find("Area1").text();
							var Area2 = $(properties[i]).find("Area2").text();
							var Cost1 = $(properties[i]).find("Cost1").text();
							var Cost2 = $(properties[i]).find("Cost2").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#TradingCommissionTable tbody").append('<TR><a href="#"><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no9"><span class="RED">'+Room+'</span>房&nbsp;<span class="RED">'+Hall+'</span>厅&nbsp;<span class="RED">'+Toilet+'</span>卫&nbsp;</TD><TD class="no9"><span class="RED">'+Area1+'</span>m<sup>2</sup>&nbsp;至&nbsp;<span class="RED">'+Area2+'</span>m<sup>2</sup></TD><TD class="no9"><span class="RED">'+Cost1+'</span>万&nbsp;至&nbsp;<span class="RED">'+Cost2+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></a></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
		}
		
		return false;
	})
}

function MesSelected() {
	$(".BODY").hover(
		function(){
			$(this).css("backgroundColor", "#f8f3c3");
			$(this).css("cursor", "pointer");
		},
		function(){
			$(this).css("backgroundColor", "");
		}
	)
}