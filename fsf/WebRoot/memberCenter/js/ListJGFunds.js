$(document).ready(function() {	
	$("#ListJGFundsTable").empty();
	$("#ListJGFundsTable").append('<thead><TR><TH><b>编号</b></TH><TH><b>卖房人</b></TH><TH><b>买房人</b></TH><TH><b>交易楼宇地址</b></TH><TH><b>监管金额</b></TH><TH><b>发布日期</b></TH></TR></thead>');
	$("#ListJGFundsTable").append('<TBODY></TBODY>');	
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectJGFundsInfo",
		success: function(xml){
			var properties = $(xml).find("JGFund");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {				
				for(var i = 0; i < $(properties).length; i++) {
					var JGID = $(properties[i]).find("JGID").text();
					var SellerName=$(properties[i]).find("SellerName").text();                                                                                       
					var BuyerName=$(properties[i]).find("BuyerName").text();                                                       
					var Address=$(properties[i]).find("Address").text();        
					var Cost=$(properties[i]).find("Cost").text();                                   
					var FBDate=$(properties[i]).find("FBDate").text();              				                 
					$("#ListJGFundsTable tbody").append('<TR><td><a href="UpdateJGFunds.jsp?JGID='+JGID+'" title="'+JGID+'">'+JGID+'</a></TD><TD><TD>'+SellerName+'</TD><TD>'+BuyerName+'</TD><TD>'+Address+'</TD><TD>'+Cost+'</TD><TD>'+FBDate+'</TD><TD><span class="float_right"><a href="/Fang3FangWeb/Access?JGID='+JGID+'&useraction=Estates&referaction=DeleteJGFundsInfo" class="cRed">【删除】</a></span></TD></TR>');					 						 
				
				}
			} else {
				   $("#ListJGFundsTable tbody").append('<tr><td colspan="5" align="center">没查找到相应记录</TD></TR>');				    
			}			 		 
		}
	});
});