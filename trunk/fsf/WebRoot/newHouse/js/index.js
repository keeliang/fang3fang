$(document).ready(function() {			
	FreeTrading();
	TradingCommission();	　
	MesSelected();
	DisplayMessage();
});
function FreeTrading(){
	$("#FreeTrading div").click(function() {
		$("#FreeTrading div.active02").removeClass("active02");
		var className = $(this).attr("id").substring(11);
		$(this).addClass("active02");
		var html = "";
		switch(className){
			case "1":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<TBODY></TBODY>');
				
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstate&SellorRent=0&RequireSellRent=0&IsConsign=0&newHouse=1",
				success: function(xml) {
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						var maxitems=$(properties).length;			 
						$("#Cache").removeData("items");  			
			            $("#Cache").data("items",properties);
			
			            $("#Pagination").pagination(maxitems, {
					         num_edge_entries: 2,
					         num_display_entries: 7,
                             callback: pageselectCallback1
                         });
                         
                         $("#Trade_des").empty();
                         $("#Trade_des").append('<p>如果没有找到您要的出售房源，请点击<a href="#" class="cRed"><u>这里</u></a>重新设置查找条件，或发布一条求购信息，让房源来找您，现在就<a href="../memberCenter/index.jsp" class="cRed"><u>发布求购</u></a>。</p>');
						
						if  (maxitems>10){  
						
						  for(var i = 0; i < 9; i++) {
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
						}else{
						   for(var i = 0; i <maxitems; i++) {
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
							
							$("#FreeTradingTable tbody").append('<TR class="BODY"><td class="left"><a href="../freetrade/show.jsp?EstateMsgID='+EstateMsgID+'">'+PropertyName+'</a></TD><TD class="no2">'+CityName+'</TD><TD class="no3">'+DistrictName+'</TD><TD class="no4">'+TownName+'</TD><TD class="no5"><span class="cRed">'+Room+'</span>房<span class="cRed">'+Hall+'</span>厅 <span class="cRed">'+Toilet+'</span>卫</TD><TD class="no6">'+Area+'m<sup>2</sup></TD><TD class="no7">'+Cost+'万</TD><TD class="no8">'+FBDate+'</TD><TD>&nbsp;</TD></TR>');
						  }
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
				data: "useraction=Estates&referaction=SelectEstate&SellorRent=1&RequireSellRent=0&IsConsign=0&newHouse=1",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						var maxitems=$(properties).length;			 
						$("#Cache").removeData("items");  			
			            $("#Cache").data("items",properties);
			
			            $("#Pagination").pagination(maxitems, {
					         num_edge_entries: 2,
					         num_display_entries: 7,
                             callback: pageselectCallback1
                         });
                         $("#Trade_des").empty();
                         $("#Trade_des").append('<p>如果没有找到您要的出租房源，请点击<a href="#" class="cRed"><u>这里</u></a>重新设置查找条件，或发布一条求租信息，让房源来找您，现在就<a href="../memberCenter/index.jsp" class="cRed"><u>发布求租</u></a>。</p>');
                         
						if  (maxitems>10){  
						  for(var i = 0; i < 9; i++) {
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
						}else{
						  for(var i = 0; i < maxitems; i++) {
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
				data: "useraction=Estates&referaction=SelectEstate&SellorRent=0&RequireSellRent=1&IsConsign=0&newHouse=1",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						var maxitems=$(properties).length;			 
						$("#Cache").removeData("items");  			
			            $("#Cache").data("items",properties);
			
			            $("#Pagination").pagination(maxitems, {
					         num_edge_entries: 2,
					         num_display_entries: 7,
                             callback: pageselectCallback1
                         });
                         
                         $("#Trade_des").empty();
                         $("#Trade_des").append('<p>如果没有找到您要的求购信息，请点击<a href="#" class="cRed"><u>这里</u></a>重新设置查找条件，或发布一条出售信息，让求购人来找您，现在就<a href="../memberCenter/index.jsp" class="cRed"><u>发布出售</u></a>。</p>');
                         
                        if  (maxitems>10){   
						  for(var i = 0; i < 9; i++) {
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
						}else{
						  for(var i = 0; i < maxitems; i++) {
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
				data: "useraction=Estates&referaction=SelectEstate&SellorRent=1&RequireSellRent=1&IsConsign=0&newHouse=1",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						var maxitems=$(properties).length;			 
						$("#Cache").removeData("items");  			
			            $("#Cache").data("items",properties);
			
			            $("#Pagination").pagination(maxitems, {
					         num_edge_entries: 2,
					         num_display_entries: 7,
                             callback: pageselectCallback1
                         });
                         
                         $("#Trade_des").empty();
                         $("#Trade_des").append('<p>如果没有找到您要的求租信息，请点击<a href="#" class="cRed"><u>这里</u></a>重新设置查找条件，或发布一条出租信息，让求租人来找您，现在就<a href="../memberCenter/index.jsp" class="cRed"><u>发布出租</u></a>。</p>');
                       
                        if  (maxitems>10){    
						  for(var i = 0; i < 9; i++) {
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
						}else{
						  for(var i = 0; i < maxitems; i++) {
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
		var html = "";
		
		switch(className) {
			case "1":
				$("#TradingCommissionTable").empty();
				$("#TradingCommissionTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#TradingCommissionTable").append('<TBODY></TBODY>');
				
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstate&SellorRent=0&RequireSellRent=0&IsConsign=1&newHouse=1",
				success: function(xml) {
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						var maxitems=$(properties).length;			 
						$("#Cache").removeData("items");  			
			            $("#Cache").data("items",properties);
			
			            $("#Pagination").pagination(maxitems, {
					         num_edge_entries: 2,
					         num_display_entries: 7,
                             callback: pageselectCallback1
                         });
                         
                         $("#Trade_des").empty();
                         $("#Trade_des").append('<p>如果没有找到您要的出售房源，请点击<a href="#" class="cRed"><u>这里</u></a>重新设置查找条件，或发布一条求购信息，让房源来找您，现在就<a href="../memberCenter/index.jsp" class="cRed"><u>发布求购</u></a>。</p>');
						
						
						if  (maxitems>10){  
						
						  for(var i = 0; i < 9; i++) {
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
						}else{
						   for(var i = 0; i <maxitems; i++) {
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
				data: "useraction=Estates&referaction=SelectEstate&SellorRent=1&RequireSellRent=0&IsConsign=1&newHouse=1",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						var maxitems=$(properties).length;			 
						$("#Cache").removeData("items");  			
			            $("#Cache").data("items",properties);
			
			            $("#Pagination").pagination(maxitems, {
					         num_edge_entries: 2,
					         num_display_entries: 7,
                             callback: pageselectCallback1
                         });
                       
                         $("#Trade_des").empty();
                         $("#Trade_des").append('<p>如果没有找到您要的出租房源，请点击<a href="#" class="cRed"><u>这里</u></a>重新设置查找条件，或发布一条求租信息，让房源来找您，现在就<a href="../memberCenter/index.jsp" class="cRed"><u>发布求租</u></a>。</p>');
                         
                         
						if  (maxitems>10){  
						  for(var i = 0; i < 9; i++) {
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
						}else{
						  for(var i = 0; i < maxitems; i++) {
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
				data: "useraction=Estates&referaction=SelectEstate&SellorRent=0&RequireSellRent=1&IsConsign=1&newHouse=1",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						var maxitems=$(properties).length;			 
						$("#Cache").removeData("items");  			
			            $("#Cache").data("items",properties);
			
			            $("#Pagination").pagination(maxitems, {
					         num_edge_entries: 2,
					         num_display_entries: 7,
                             callback: pageselectCallback1
                         });
                         
                         $("#Trade_des").empty();
                         $("#Trade_des").append('<p>如果没有找到您要的求购信息，请点击<a href="#" class="cRed"><u>这里</u></a>重新设置查找条件，或发布一条出售信息，让求购人来找您，现在就<a href="../memberCenter/index.jsp" class="cRed"><u>发布出售</u></a>。</p>');
                         
                        
                        if  (maxitems>10){   
						  for(var i = 0; i < 9; i++) {
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
						}else{
						  for(var i = 0; i < maxitems; i++) {
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
				$("#TradingCommissionTable").append('<tbody></tbody>');
				$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectEstate&SellorRent=1&RequireSellRent=1&IsConsign=1&newHouse=1",
				success: function(xml) {
						var i;
						var properties = $(xml).find("Message");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						var maxitems=$(properties).length;			 
						$("#Cache").removeData("items");  			
			            $("#Cache").data("items",properties);
			
			            $("#Pagination").pagination(maxitems, {
					         num_edge_entries: 2,
					         num_display_entries: 7,
                             callback: pageselectCallback1
                         });
                        
                         $("#Trade_des").empty();
                         $("#Trade_des").append('<p>如果没有找到您要的求租信息，请点击<a href="#" class="cRed"><u>这里</u></a>重新设置查找条件，或发布一条出租信息，让求租人来找您，现在就<a href="../memberCenter/index.jsp" class="cRed"><u>发布出租</u></a>。</p>');
                       
                        if  (maxitems>10){    
						  for(var i = 0; i < 9; i++) {
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
						}else{
						  for(var i = 0; i < maxitems; i++) {
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

function MesSelected(){
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
		data: "useraction=Estate&referaction=SelectMessage&flag=1&newHouse=1",
		success: function(xml){
			$("#FreeTradingTable").empty();
			$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
			$("#FreeTradingTable").append('<TBODY></TBODY>');
			
			var properties = $(xml).find("MessageCS");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			 
			var maxitems=$(properties).length;	
					 
			$("#Cache").removeData("items");  						
			$("#Cache").data("items",properties);
			
			$("#Pagination").pagination(maxitems, {
					num_edge_entries: 2,
					num_display_entries: 7,
                    callback: pageselectCallback
            });
            
             
             if  (maxitems>10){             
                    for(var i = 0; i < 9; i++) {
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
			}else{
			      for(var i = 0; i < maxitems; i++) {
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
			}
			
			
		}
	});
}
function pageselectCallback(page_id, jq){
	var properties=$("#Cache").data("items");
    var maxitems=$(properties).length;	
    if  (maxitems>(page_id*10)+10){ 	 
        $('#Searchresult').text("显示结果 "+((page_id*10)+1)+"-"+((page_id*10)+10));
    }else{
        $('#Searchresult').text("显示结果 "+((page_id*10)+1)+"-"+maxitems);
    }
    $("#FreeTradingTable").empty();
	$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
	$("#FreeTradingTable").append('<TBODY></TBODY>');
	    if  (maxitems>(page_id*10)+10){ 
    
             for(var i = (page_id*10); i < (page_id*10)+9; i++) {
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
	 }
	 else{
	      for(var i = (page_id*10); i < maxitems; i++) {
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
	 }
}
function pageselectCallback1(page_id, jq){
	var properties=$("#Cache").data("items");
      var maxitems=$(properties).length;
      
       if  (maxitems>(page_id*10)+10){ 	      
            $('#Searchresult').text("显示结果 "+((page_id*10)+1)+"-"+((page_id*10)+10));
        }else{
            $('#Searchresult').text("显示结果 "+((page_id*10)+1)+"-"+maxitems);
        }
         var className = $("#FreeTrading div").attr("id").substring(11);
         switch(className){
         				case "1": 
			    
			    $("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<TBODY></TBODY>');				
				
			   
			   
               if  (maxitems>(page_id*10)+10){ 
			      for(var i = (page_id*10); i < (page_id*10)+9; i++) {
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
				}else{
				    for(var i = (page_id*10); i < maxitems; i++) {
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
				}
				case "2":
				$("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW01">物业名称/地址</TH><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">户型</TH><TH class="trade_tableW05">面积</TH><TH class="trade_tableW04">价格(元/月/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<tbody></tbody>');
				
				 
				  
                  if  (maxitems>(page_id*10)+10){ 
				      for(var i = (page_id*10); i < (page_id*10)+9; i++) {
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
				   }else{
				       for(var i = (page_id*10); i < maxitems; i++) {
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
				   }
				   case "3":
				   $("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">期望户型</TH><TH class="trade_tableW05">面积范围</TH><TH class="trade_tableW06">价格范围(万元/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<tbody></tbody>');
				
				
				 
                 if  (maxitems>(page_id*10)+10){ 
				     for(var i = (page_id*10); i < (page_id*10)+9; i++) {
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
			     }else{
			         for(var i = (page_id*10); i < maxitems; i++) {
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
			     }
			     case "4":
			    $("#FreeTradingTable").empty();
				$("#FreeTradingTable").append('<thead><TR><TH class="trade_tableW02">城市</TH><TH class="trade_tableW02">区县</TH><TH class="trade_tableW03">商圈</TH><TH class="trade_tableW04">期望户型</TH><TH class="trade_tableW05">面积范围</TH><TH class="trade_tableW06">价格范围(元/月/套)</TH><TH class="trade_tableW06">发布日期</TH><TH class="trade_tableW07"><a href="../memberCenter/index.jsp" class="cOrange">我要发布</a></TH></TR></thead>');
				$("#FreeTradingTable").append('<tbody></tbody>');
				
				
				 
                 if  (maxitems>(page_id*10)+10){ 
				     for(var i = (page_id*10); i < (page_id*10)+9; i++) {
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
				  }else{
				      for(var i = (page_id*10); i < maxitems; i++) {
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
				  } 		
         }
}