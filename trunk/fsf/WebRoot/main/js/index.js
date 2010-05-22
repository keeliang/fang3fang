$(document).ready(function() {
	//LogicClass();
	//AdClass();	 
	//FreeTrading();
	//TradingCommission();
	//MesSelected();
	//DisplayMessage();
	//selectInfoTop10();
	//InfoTop10Move();
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

function FreeTrading() {
	$("#FreeTrading div").click(function() {
		$("#FreeTrading div.active02").removeClass("active02");
		var className = $(this).attr("id").substring(11);
		$(this).addClass("active02");
		var html = "";
		
		switch(className) {
			case "1":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<TBODY></TBODY>');
				
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstateTop10&SellorRent=0&RequireSellRent=0&IsConsign=0&newHouse=0",
				success: function(xml) {
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						for(var i = 0; i < $(properties).length; i++) {
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();
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
							
							$("#FreeTradingTable tbody").append('<TR class="BODY"><td class="left"><a href="../freetrade/show.jsp?EstateMsgID='+EstateMsgID+'" title="'+PropertyName+'">'+PropertyName+'</a></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6">'+Area+'m<sup>2</sup></TD><TD class="no7">'+Cost+'万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
						
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "2":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(元/月/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstateTop10&SellorRent=1&RequireSellRent=0&IsConsign=0&newHouse=0",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();
							var PropertyName = $(properties[i]).find("PropertyName").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area = $(properties[i]).find("Area").text();
							var Cost = $(properties[i]).find("Rent").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#FreeTradingTable tbody").append('<TR class="BODY"><td class="left"><a href="../freetrade/showCZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+PropertyName+'">'+PropertyName+'</a></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6">'+Area+'m<sup>2</sup></TD><TD class="no7">'+Cost+'元</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "3":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">期望户型</TH><TH class="trade_tableW05">面积范围</TH><TH class="trade_tableW06">价格范围(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstateTop10&&SellorRent=0&RequireSellRent=1&IsConsign=0&newHouse=0",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();							 
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area1 = $(properties[i]).find("Area1").text();
							var Area2 = $(properties[i]).find("Area").text();									 
							var Cost1 = $(properties[i]).find("Cost1").text();	
							var Cost2 = $(properties[i]).find("Cost").text();							 
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#FreeTradingTable tbody").append('<TR class="BODY"><TD class="no2"><a href="../freetrade/showQG.jsp?EstateMsgID='+EstateMsgID+'" title="'+CityName+'">'+CityName+'</a></TD><TD class="no3"><a href="../freetrade/showQG.jsp?EstateMsgID='+EstateMsgID+'" title="'+DistrictName+'">'+DistrictName+'</a></TD><TD class="no4"><a href="../freetrade/showQG.jsp?EstateMsgID='+EstateMsgID+'" title="'+TownName+'">'+TownName+'</a></TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6"><span class="RED">'+Area1+'</span>m<sup>2</sup>&nbsp;至&nbsp;<span class="RED">'+Area2+'</span>m<sup>2</sup></TD><TD class="no7"><span class="RED">'+Cost1+'</span>万&nbsp;至&nbsp;<span class="RED">'+Cost2+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "4":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">期望户型</TH><TH class="trade_tableW05">面积范围</TH><TH class="trade_tableW06">价格范围(元/月/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstateTop10&&SellorRent=1&RequireSellRent=1&IsConsign=0&newHouse=0",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();							 
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area1 = $(properties[i]).find("Area1").text();
							var Area2 = $(properties[i]).find("Area").text();									 
							var Cost1 = $(properties[i]).find("Cost1").text();	
							var Cost2 = $(properties[i]).find("Rent").text();							 
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#FreeTradingTable tbody").append('<TR class="BODY"><TD class="no2"><a href="../freetrade/showQZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+CityName+'">'+CityName+'</a></TD><TD class="no3"><a href="../freetrade/showQZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+DistrictName+'">'+DistrictName+'</a></TD><TD class="no4"><a href="../freetrade/showQZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+TownName+'">'+TownName+'</a></TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6"><span class="RED">'+Area1+'</span>m<sup>2</sup>&nbsp;至&nbsp;<span class="RED">'+Area2+'</span>m<sup>2</sup></TD><TD class="no7"><span class="RED">'+Cost1+'</span>元&nbsp;至&nbsp;<span class="RED">'+Cost2+'</span>元</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
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
	$("#TradingCommission div").click(function() {
		$("#TradingCommission div.active02").removeClass("active02");
		var className = $(this).attr("id").substring(11);
		$(this).addClass("active02");
		
		switch(className) {
			case "1":
				$("#TradingCommissionTable").empty();
				$("#TradingCommissionTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#TradingCommissionTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstateTop10&SellorRent=0&RequireSellRent=0&IsConsign=1&newHouse=0",
				success: function(xml) {
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						for(var i = 0; i < $(properties).length; i++) {
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();
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
							$("#TradingCommissionTable tbody").append('<TR class="BODY"><td class="left"><a href="../entrustTrade/show.jsp?EstateMsgID='+EstateMsgID+'" title="'+PropertyName+'">'+PropertyName+'</a></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6">'+Area+'m<sup>2</sup></TD><TD class="no7">'+Cost+'万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "2":
				$("#TradingCommissionTable").empty();
				$("#TradingCommissionTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(元/月/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#TradingCommissionTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstateTop10&SellorRent=1&RequireSellRent=0&IsConsign=1&newHouse=0",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();
							var PropertyName = $(properties[i]).find("PropertyName").text();
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area = $(properties[i]).find("Area").text();
							var Cost = $(properties[i]).find("Rent").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#TradingCommissionTable tbody").append('<TR class="BODY"><td class="left"><a href="../entrustTrade/showCZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+PropertyName+'">'+PropertyName+'</a></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6">'+Area+'m<sup>2</sup></TD><TD class="no7">'+Cost+'元</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "3":
				$("#TradingCommissionTable").empty();
				$("#TradingCommissionTable").append('<thead><TR><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">期望户型</TH><TH class="trade_tableW05">面积范围</TH><TH class="trade_tableW06">价格范围(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#TradingCommissionTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstateTop10&SellorRent=0&RequireSellRent=1&IsConsign=1&newHouse=0",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {							 
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();							 
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area1 = $(properties[i]).find("Area1").text();
							var Area2 = $(properties[i]).find("Area").text();									 
							var Cost1 = $(properties[i]).find("Cost1").text();	
							var Cost2 = $(properties[i]).find("Cost").text();							 
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#TradingCommissionTable tbody").append('<TR class="BODY"><TD class="no2"><a href="../entrustTrade/showQG.jsp?EstateMsgID='+EstateMsgID+'" title="'+CityName+'">'+CityName+'</a></TD><TD class="no3"><a href="../entrustTrade/showQG.jsp?EstateMsgID='+EstateMsgID+'" title="'+DistrictName+'">'+DistrictName+'</a></TD><TD class="no4"><a href="../entrustTrade/showQG.jsp?EstateMsgID='+EstateMsgID+'" title="'+TownName+'">'+TownName+'</a></TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6"><span class="RED">'+Area1+'</span>m<sup>2</sup>&nbsp;至&nbsp;<span class="RED">'+Area2+'</span>m<sup>2</sup></TD><TD class="no7"><span class="RED">'+Cost1+'</span>万&nbsp;至&nbsp;<span class="RED">'+Cost2+'</span>万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
							 
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				break;
			case "4":
				$("#TradingCommissionTable").empty();
				$("#TradingCommissionTable").append('<thead><TR><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">期望户型</TH><TH class="trade_tableW05">面积范围</TH><TH class="trade_tableW06">价格范围(元/月/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#TradingCommissionTable").append('<TBODY></TBODY>');
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstateTop10&SellorRent=1&RequireSellRent=1&IsConsign=1&newHouse=0",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						for(i = 0; i < $(properties).length; i++) {
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();							 
							var CityName = $(properties[i]).find("CityName").text();
							var DistrictName = $(properties[i]).find("DistrictName").text();
							var TownName = $(properties[i]).find("TownName").text();
							var Room = $(properties[i]).find("Room").text();
							var Hall = $(properties[i]).find("Hall").text();
							var Toilet = $(properties[i]).find("Toilet").text();
							var Area1 = $(properties[i]).find("Area1").text();
							var Area2 = $(properties[i]).find("Area").text();									 
							var Cost1 = $(properties[i]).find("Cost1").text();	
							var Cost2 = $(properties[i]).find("Rent").text();							 
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#TradingCommissionTable tbody").append('<TR class="BODY"><TD class="no2"><a href="../entrustTrade/showQZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+CityName+'">'+CityName+'</a></TD><TD class="no3"><a href="../entrustTrade/showQZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+DistrictName+'">'+DistrictName+'</a></TD><TD class="no4"><a href="../entrustTrade/showQZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+TownName+'">'+TownName+'</a></TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6"><span class="RED">'+Area1+'</span>m<sup>2</sup>&nbsp;至&nbsp;<span class="RED">'+Area2+'</span>m<sup>2</sup></TD><TD class="no7"><span class="RED">'+Cost1+'</span>元&nbsp;至&nbsp;<span class="RED">'+Cost2+'</span>元</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>'); 
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

function DisplayMessage(){
  $.ajax({
		url: "/Fang3FangWeb/Estate",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estate&referaction=SelectMessage&flag=0&newHouse=0",
		success: function(xml){
			$("#FreeTradingTable").empty();
			$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
			$("#FreeTradingTable").append('<TBODY></TBODY>');
			
			var properties = $(xml).find("MessageCS");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
						
			for(var i = 0; i < ($(properties).length)-2; i++) {
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();
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
							
							$("#FreeTradingTable tbody").append('<TR class="BODY"><td class="left"><a href="../freetrade/show.jsp?EstateMsgID='+EstateMsgID+'" title="'+PropertyName+'">'+PropertyName+'</a></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6">'+Area+'m<sup>2</sup></TD><TD class="no7">'+Cost+'万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
			}
			
			
			$("#TradingCommissionTable").empty();
			$("#TradingCommissionTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
			$("#TradingCommissionTable").append('<tbody></tbody>');
			
			var properties = $(xml).find("MessagePCS");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
						
			for(var i = 0; i <($(properties).length)-2; i++) {
							var EstateMsgID = $(properties[i]).find("EstateMsgID").text();
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
							$("#TradingCommissionTable tbody").append('<TR class="BODY"><td class="left"><a href="../entrustTrade/show.jsp?EstateMsgID='+EstateMsgID+'" title="'+PropertyName+'">'+PropertyName+'</a></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6">'+Area+'m<sup>2</sup></TD><TD class="no7">'+Cost+'万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
			}
			
			 
		}
	});	
}


/*发布商铺信息-弹出窗口*/
function showMsg(id){
		openWindowOnCenter("../rent/showBox.jsp?rentInfo_id=" + id,"addmessage",400,300) ;
	}


function add(){
		//openWindowOnCenter("addBox.jsp" ,"add" , 400, 300) ;
	window.open("../rent/addBox.jsp","addBox",  "height=400, width=400, top=190,left=500,toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no,directories=no") 

	}
	
	
	
	/*左侧图文滚动*/
	
	var nn;
nn=1;
setTimeout('change_img()',3000);
function change_img()
{
if(nn>4) nn=1
setTimeout('setFocus1('+nn+')',3000);
nn++;
tt=setTimeout('change_img()',3000);
}
function setFocus1(i)
{
selectLayer1(i);
}
function selectLayer1(i)
{
switch(i)
{
case 1:
document.getElementById("focusPic1").style.display="block";
document.getElementById("focusPic2").style.display="none";
document.getElementById("focusPic3").style.display="none";
document.getElementById("focusPic4").style.display="none";
document.getElementById("focusPic1nav").style.display="block";
document.getElementById("focusPic2nav").style.display="none";
document.getElementById("focusPic3nav").style.display="none";
document.getElementById("focusPic4nav").style.display="none";
break;
case 2:
document.getElementById("focusPic1").style.display="none";
document.getElementById("focusPic2").style.display="block";
document.getElementById("focusPic3").style.display="none";
document.getElementById("focusPic4").style.display="none";
document.getElementById("focusPic1nav").style.display="none";
document.getElementById("focusPic2nav").style.display="block";
document.getElementById("focusPic3nav").style.display="none";
document.getElementById("focusPic4nav").style.display="none";
break;
case 3:
document.getElementById("focusPic1").style.display="none";
document.getElementById("focusPic2").style.display="none";
document.getElementById("focusPic3").style.display="block";
document.getElementById("focusPic4").style.display="none";
document.getElementById("focusPic1nav").style.display="none";
document.getElementById("focusPic2nav").style.display="none";
document.getElementById("focusPic3nav").style.display="block";
document.getElementById("focusPic4nav").style.display="none";

break;
case 4:
document.getElementById("focusPic1").style.display="none";
document.getElementById("focusPic2").style.display="none";
document.getElementById("focusPic3").style.display="none";
document.getElementById("focusPic4").style.display="block";
document.getElementById("focusPic1nav").style.display="none";
document.getElementById("focusPic2nav").style.display="none";
document.getElementById("focusPic3nav").style.display="none";
document.getElementById("focusPic4nav").style.display="block";
break;
}
}
	

      
        


	/*TOP10 新闻*/
	function selectInfoTop10(){
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=ShowInfoTop10",
				success: function(xml) {
	$("#lili").empty();
				var properties = $(xml).find("Infos");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						for(var i = 0; i < $(properties).length; i++) {
							var InfoTitle = $(properties[i]).find("InfoTitle").text();
							var InfoContent = $(properties[i]).find("InfoContent").text();
							var InfoID = $(properties[i]).find("InfoID").text();
							
											
							
				$("#lili span").hover( 
				//$("#lili li a").css("color","red");
			function() { $(this).children(".undis").show();  },
			function() {$(this).children(".undis").toggle(); }
		);			
		
			$("#lili").append('<li><span><a href="../Info/show.jsp">'+InfoTitle.substr(0, 14)+'</a><p class="undis">'+InfoContent.substr(0, 25)+'...</p></span></li>');
				
				$("#lili span").hover( 
				
			function() { $(this).children(".undis").show();  $(this).children(".info_more").show(); },
			function() {$(this).children(".undis").toggle(); }
		);
			
						}
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				
				}

	



/*新闻Top 旺铺Top“交互式”*/	


//	$(function(){
	
	
		
	
	
function InfoTop10Move(){

	$("#p1").hover( 
			function() {// $(this).children(".undis").show();  
			

	$("#lili2 #p1").hover( 
			function() { $(this).children(".undis").show();  


			},
			function() {$(this).children(".undis").toggle(); 
			}
		);




}
)};
