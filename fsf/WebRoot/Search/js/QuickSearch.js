$(document).ready(function() {	 
	QuickSearch();	
	FreeTrading();
	TradingCommission();	
})

function QuickSearch() {    
    var url = window.location.href;	 
	var pos1 = url.indexOf('=');	 
	var pos2 = url.indexOf('&');	 
	if (pos1 == -1) return "";
	var moreTitle=url.substring(pos1 + 1);	 
	var title = url.substring(pos1 + 1,pos2);	 
	var SellorRent=url.substring(pos2 + 1);	 
	var titleType = title.substring(0, 1);
	title = title.substring(1);	 
	 
	var pos3 = SellorRent.indexOf('=');
	var value=SellorRent.substring(pos3 + 1).toString();
	 
	 
	$("#select110").val(value);
	 
 
	var WenHao = url.indexOf("?"); //取&后面的所有字符串，添加到所有“全部”的链接。
	if (WenHao == -1) return "";
	var toDetailsPageParam = url.substring(WenHao);
	$("a.More").each(function() {
		var beforeValue = $(this).attr("href");
		var afterValue = beforeValue + toDetailsPageParam;
		$(this).attr("href", afterValue);
	});
	
	if(titleType == 'D') {
	    $("#PropertyInfo").html("");
	    $("#PropertyInfo").append(decodeURI(title));
		url = "/Fang3FangWeb/Estate";		
		if ($("#select110").val()=='0'){
		    var dataValue = "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=0&SearchFlag=0&DistrictName=" + title;
		}else if ($("#select110").val()=='1'){
		    var dataValue = "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=1&SearchFlag=0&DistrictName=" + title;
		}
	} else if (titleType == 'C') {
	    if ($("#select110").val()=='0'){
	       $("#PropertyInfo").html("");
	       $("#PropertyInfo").append(title);
		   url = "/Fang3FangWeb/Estate";
		   var pos = title.indexOf("-");
		   var pos1 = title.indexOf("万");
		   var Cost1 = title.substring(0,pos);
		   var Cost2 = title.substring(pos+1,pos1);
		   if (title == '30万以下'){
		      Cost1 = 0;
		      Cost2 = 30;
		   }
		   if (title == '500万以上'){
		      Cost1 = 500;
		      Cost2 = 500000;
		   }
		   var dataValue = "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=0&SearchFlag=1&Cost1=" + Cost1 + "&Cost2=" + Cost2;
		}else if ($("#select110").val()=='1'){
		    $("#PropertyInfo").html("");
	       $("#PropertyInfo").append(title);
		   url = "/Fang3FangWeb/Estate";
		   var pos = title.indexOf("-");
		   var pos1 = title.indexOf("元");
		   var Cost1 = title.substring(0,pos);
		   var Cost2 = title.substring(pos+1,pos1);
		   if (title == '500元以下'){
		      Cost1 = 0;
		      Cost2 = 500;
		   }
		   if (title == '5000元以上'){
		      Cost1 = 5000;
		      Cost2 = 500000;
		   }
		   var dataValue = "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=1&SearchFlag=1&Cost1=" + Cost1 + "&Cost2=" + Cost2;
		} 
	}else if (titleType == 'A') {
	    $("#PropertyInfo").html("");
	    $("#PropertyInfo").append(title);
		url = "/Fang3FangWeb/Estate";
		var pos = title.indexOf("-");
		var pos1 = title.indexOf("平米");
		var Area1 = title.substring(0,pos);
		var Area2 = title.substring(pos+1,pos1);
		if (title == '40平米以下'){
		   Area1 = 0;
		   Area2 = 40;
		}
		if ($("#select110").val()=='0'){		
		   var dataValue = "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=0&SearchFlag=2&Area1=" + Area1 + "&Area2=" + Area2;
		}else if ($("#select110").val()=='1'){
		   var dataValue = "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=1&SearchFlag=2&Area1=" + Area1 + "&Area2=" + Area2;
		}
	} else if (titleType == 'R') {
	    $("#PropertyInfo").html("");
	    $("#PropertyInfo").append(title);
		url = "/Fang3FangWeb/Estate";
		switch (title){
		  case "一房":
		    var Room=1;
		    break;
		  case "二房":
		    var Room=2;
		    break;
		  case "三房":
		    var Room=3;
		    break;
		  case "四房":
		    var Room=4;
		    break;
		  case "五房":
		    var Room=5;
		    break;
		  case "五房以上":
		    var Room=6;
		    break;
		}		
		if ($("#select110").val()=='0'){	
		  var dataValue = "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=0&SearchFlag=3&Room=" + Room;
		}else if ($("#select110").val()=='1'){
		  var dataValue = "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=1&SearchFlag=3&Room=" + Room;
		} 
		 
	}else if (titleType == 'P') {
	    $("#PropertyInfo").html("");
	    $("#PropertyInfo").append(title);
		url = "/Fang3FangWeb/Estate";
		
		if ($("#select110").val()=='0'){	
		  var dataValue =  "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=0&SearchFlag=4&PropertyTypeName=" + title;
		}else if ($("#select110").val()=='1'){
		  var dataValue =  "useraction=Estate&referaction=SearchMessage&flag=0&newHouse=0&SellorRent=1&SearchFlag=4&PropertyTypeName=" + title;
		}
	}
	
	$.ajax({
		url: url,
		type: "POST",
		dataType: "xml",
		data: dataValue,
		cache: true,
		success: function(xml){
			if ($("#select110").val()=='0'){	
			   $("#FreeTrading div.active02").removeClass("active02");
			   $("#TradingCommission div.active02").removeClass("active02");
			   $("#aboutnav0211").addClass("active02");
			   $("#aboutnav0311").addClass("active02");
			   
			   $("#FreeTradingTable").empty();
			   $("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
			   $("#FreeTradingTable").append('<TBODY></TBODY>');
			   var properties = $(xml).find("MessageCS");
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
			   $("#SearchFreeMore").empty();
			   $("#SearchFreeMore").append('<a href="../freetrade/index.jsp?Title='+moreTitle+'" class="cOrange">更多...</a>');
			   
			   
			   $("#TradingCommissionTable").empty();
			   $("#TradingCommissionTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
			   $("#TradingCommissionTable").append('<tbody></tbody>');
			
			   var properties = $(xml).find("MessagePCS");
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
			   $("#SearchEntrustMore").empty();
			   $("#SearchEntrustMore").append('<a href="../entrustTrade/index.jsp?Title='+moreTitle+'" class="cOrange">更多...</a>');
			   
			   
			}else if ($("#select110").val()=='1'){
			   $("#FreeTrading div.active02").removeClass("active02");
			   $("#TradingCommission div.active02").removeClass("active02");
			   $("#aboutnav0212").addClass("active02");
			   $("#aboutnav0312").addClass("active02");
			   
			   $("#FreeTradingTable").empty();
			   $("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(元/月/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
			   $("#FreeTradingTable").append('<tbody></tbody>');
			   
			   var properties = $(xml).find("MessageCS");
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
							var Cost = $(properties[i]).find("Rent").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#FreeTradingTable tbody").append('<TR class="BODY"><td class="left"><a href="../freetrade/showCZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+PropertyName+'">'+PropertyName+'</a></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6">'+Area+'m<sup>2</sup></TD><TD class="no7">'+Cost+'元</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
			   } 
			   $("#SearchFreeMore").empty();
			   $("#SearchFreeMore").append('<a href="../freetrade/index.jsp?Title='+moreTitle+'" class="cOrange">更多...</a>');
			   
			   
			   $("#TradingCommissionTable").empty();
			   $("#TradingCommissionTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(元/月/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
			   $("#TradingCommissionTable").append('<tbody></tbody>');
			   
			   var properties = $(xml).find("MessagePCS");
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
							var Cost = $(properties[i]).find("Rent").text();
							var FBDate = $(properties[i]).find("FBDate").text();
							
							$("#TradingCommissionTable tbody").append('<TR class="BODY"><td class="left"><a href="../entrustTrade/showCZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+PropertyName+'">'+PropertyName+'</a></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6">'+Area+'m<sup>2</sup></TD><TD class="no7">'+Cost+'元</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
				}		   
			   $("#SearchEntrustMore").empty();
			   $("#SearchEntrustMore").append('<a href="../entrustTrade/index.jsp?Title='+moreTitle+'" class="cOrange">更多...</a>');
			   
		   }			 
		}
	});	
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