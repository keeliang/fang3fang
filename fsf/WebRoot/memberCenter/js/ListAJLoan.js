$(document).ready(function() {	
	$("#ListAJLoanTable").empty();
	$("#ListAJLoanTable").append('<thead><TR><TH><b>编号</b></TH><TH><b>贷款人</b></TH><TH><b>抵押物名称</b></TH><TH><b>贷款金额</b></TH><TH><b>发布日期</b></TH></TR></thead>');
	$("#ListAJLoanTable").append('<TBODY></TBODY>');	
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectApplyForLoansInfo",
		success: function(xml){
			var properties = $(xml).find("AJLoanInfo");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var AjID = $(properties[i]).find("AjID").text();
					var RealName=$(properties[i]).find("RealName").text();                                                                                       
					var PropertyName=$(properties[i]).find("PropertyName").text();                                                       
					var LoanMoney=$(properties[i]).find("LoanMoney").text();                                     
					var FBDate=$(properties[i]).find("FBDate").text();              				                 
					$("#ListAJLoanTable tbody").append('<tr><td><a href="UpdateAJLoan.jsp?AjID='+AjID+'" title="'+AjID+'">'+AjID+'</a></TD><TD>'+RealName+'</TD>' +
							'<TD>'+PropertyName+'</TD><TD>'+LoanMoney+'</TD><TD>'+FBDate+'</TD>' +
							'<TD>&nbsp;</TD><TD><span class="float_right"><a href="/Fang3FangWeb/Access?AjID='+AjID+'&useraction=Estates&referaction=DeleteAJLoanInfo" class="cRed">【删除】</a></span></TD></TR>');					 
				
				}
			} else {
				   $("#ListAJLoanTable tbody").append('<tr><td colspan="5" align="center">没查找到相应记录</TD></TR>');				    
			}			 		 
		}
	});
});