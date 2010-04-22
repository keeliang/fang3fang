$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/SQAJLoan",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectSQAJLoanByUserID",
		success: function(xml){
			var properties = $(xml).find("SQAJLoan");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var AJID = $(properties[i]).find("AJID").text();
					var UserName = $(properties[i]).find("UserName").text();
					var PropertyName = $(properties[i]).find("PropertyName").text();
					var LoanMoney = $(properties[i]).find("LoanMoney").text();
					var FBDate = $(properties[i]).find("FBDate").text();
					
					$('<TR id="' + AJID + '"><TD class="ListTD3em TableCenter ListTable1">' + (i+1) + '</TD><TD class="TableCenter">' + UserName + '</TD><TD class="ListTD12em TableCenter"><DIV noWrap class="TextOverFlow" style="width: 14em;">' + PropertyName + '</DIV></TD><TD class="TableCenter">' + LoanMoney + '元</TD><TD class="TableCenter">' + FBDate + '</TD><TD class="ListTD4em TableCenter"><a href="ToDo_AJLoanDetails.jsp?AJID=' + AJID + '">修改</a></TD><TD class="ListTD4em TableCenter"><a class="Delete" href="#">删除</a></TD></TR>').appendTo("table");
				}
			} else {
				$('<TR><TD colspan="9" class="TableCenter">没查找到相应记录</TD></TR>').appendTo("table");
			}
			$("tr:odd").addClass("TableTDOdd");
			parent.SetCwinHeight();
			TableHover();
			
			$(".Delete").click(function() {
				me = $(this);
				$.post("/Fang3FangWeb/servlet/SQAJLoan", {referaction:"DeleteSQAJLoan", AJID:me.parent().parent().attr("id")}, function(d){
					alert("删除成功！");
					me.parent().parent().css({display:'none'})
				});
			});
		},
		error: function(xml, err) {
			alert(err);
		}
	});
});