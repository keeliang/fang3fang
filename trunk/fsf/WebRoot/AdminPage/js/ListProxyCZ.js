$(document).ready(function() {	
   alert("cz");
	$("#ListProxyCZTable").empty();
	$("#ListProxyCZTable").append('<thead><TR><TH><b>编号</b></TH><TH><b>物业名称</b></TH><TH><b>楼盘地址</b></TH><TH><b>租价(元/月)</b></TH><TH><b>委托联系人</b></TH><TH><b>发布日期</b></TH></TR></thead>');
	$("#ListProxyCZTable").append('<TBODY></TBODY>');	
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectEstateAdmin&SellorRent=1&RequireSellRent=0&isConsign=1",
		success: function(xml){
			var properties = $(xml).find("Estate");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var EstateMsgID = $(properties[i]).find("EstateMsgID").text();
					var PropertyName = $(properties[i]).find("PropertyName").text();
					var Address = $(properties[i]).find("Address").text();
					var Cost = $(properties[i]).find("Cost").text();
					var Contacter = $(properties[i]).find("Contacter").text();
					var FBDate = $(properties[i]).find("FBDate").text();					
					$("#ListProxyCZTable tbody").append('<tr><td><a href="UpdateProxyCZ.jsp?EstateMsgID='+EstateMsgID+'" title="'+EstateMsgID+'">'+EstateMsgID+'</a></TD><TD>'+PropertyName+'</TD><TD>'+Address+'</TD><TD>'+Cost+'</TD><TD>'+Contacter+'</TD><TD>'+FBDate+'</TD><TD>&nbsp;</TD><TD><span class="float_right"><a href="/Fang3FangWeb/Access?EstateMsgID='+EstateMsgID+'&useraction=Estates&referaction=DeleteEstate&SellorRent=1&RequireSellRent=0&IsConsign=1" class="cRed">【删除】</a></span></TD></TR>');					 
				}
			} else {
				   $("#ListProxyCZTable tbody").append('<tr><td colspan="5" align="center">没查找到相应记录</TD></TR>');				    
			}			 		 
		}
	});
});