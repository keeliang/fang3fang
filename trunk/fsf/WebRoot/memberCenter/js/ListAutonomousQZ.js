$(document).ready(function() {	
	$("#ListAutonomousQZTable").empty();
	$("#ListAutonomousQZTable").append('<thead><TR><TH><b>编号</b></TH><TH><b>城市</b></TH><TH><b>期望户型(室/厅/卫/阳台)</b></TH><TH><b>期望租价(元/月)</b></TH><TH><b>联系人</b></TH><TH><b>发布日期</b></TH></TR></thead>');
	$("#ListAutonomousQZTable").append('<TBODY></TBODY>');	
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectEstateByUserID&SellorRent=1&RequireSellRent=1&isConsign=0",
		success: function(xml){
			var properties = $(xml).find("Estate");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var EstateMsgID = $(properties[i]).find("EstateMsgID").text();
					var City=$(properties[i]).find("City").text();                               //取得城市    
					
					// 下列代码取得户型相关信息                                                                
					var Room=$(properties[i]).find("Room").text();                                        //室                               
					var Hall=$(properties[i]).find("Hall").text();                                        //厅
					var Toilet=$(properties[i]).find("Toilet").text();                                    //卫
					var Balcony=$(properties[i]).find("Balcony").text();                                  //阳台					
					var Cost = $(properties[i]).find("Cost").text();                                      //取得楼盘售价					
					var Contacter = $(properties[i]).find("Contacter").text();                            //取得联系人
					var FBDate = $(properties[i]).find("FBDate").text();					              //取得发布日期
					$("#ListAutonomousQZTable tbody").append('<tr><td><a href="UpdateAutonomousQZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+EstateMsgID+'">'+EstateMsgID+'</a></TD><TD>'+City+'</TD><TD>'+Room+'室'+Hall+'厅'+Toilet+'卫'+Balcony+'阳台</TD><TD>'+Cost+'</TD><TD>'+Contacter+'</TD><TD>'+FBDate+'</TD><TD>&nbsp;</TD><TD><span class="float_right"><a href="/Fang3FangWeb/Access?EstateMsgID='+EstateMsgID+'&useraction=Estates&referaction=DeleteEstate&SellorRent=1&RequireSellRent=1&IsConsign=0" class="cRed">【删除】</a></span></TD></TR>');					 
				}
			} else {
				   $("#ListAutonomousQZTable tbody").append('<tr><td colspan="5" align="center">没查找到相应记录</TD></TR>');				    
			}			 		 
		}
	});
});