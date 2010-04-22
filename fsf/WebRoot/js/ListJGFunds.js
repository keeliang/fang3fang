$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/SQJGFunds",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectSQJGFundsByUserID",
		success: function(xml){
			var properties = $(xml).find("SQJGFunds");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var JGID = $(properties[i]).find("JGID").text();
					var SellerName = $(properties[i]).find("SellerName").text();
					var BuyerName = $(properties[i]).find("BuyerName").text();
					var Address = $(properties[i]).find("Address").text();
					var Cost = $(properties[i]).find("Cost").text();
					var FBDate = $(properties[i]).find("FBDate").text();
					
					$('<TR id="'+JGID+'"><TD class="ListTD3em TableCenter">' + (i+1) + '</TD><TD class="TableCenter">' + SellerName + '</TD><TD class="TableCenter">' + BuyerName + '</TD><TD class="ListTD12em TableCenter"><div noWrap class="TextOverFlow" style="width: 14em;">' + Address + '</div></TD><TD class="TableCenter">' + Cost + '元</TD><TD class="TableCenter">' + FBDate + ' </TD><TD class="ListTD4em TableCenter"><a href="ToDo_JGFundsDetails.jsp?JGID='+JGID+'">修改</a></TD><TD class="ListTD4em TableCenter"><a class="Delete" href="#">删除</a></TD></TR>').appendTo("table");
				}
			} else {
				$('<TR><TD colspan="10" class="TableCenter">没查找到相应记录</TD></TR>').appendTo("table");
			}
			$("tr:odd").addClass("TableTDOdd");
			parent.SetCwinHeight();
			TableHover();
			
			$(".Delete").click(function() {
				me = $(this);
				$.post("/Fang3FangWeb/servlet/SQJGFunds", {referaction:"DeleteSQJGFunds", JGID:me.parent().parent().attr("id")}, function(d){
					alert("删除成功！");
					me.parent().parent().css({display:'none'})
				});
			});
			
		}
	});
});