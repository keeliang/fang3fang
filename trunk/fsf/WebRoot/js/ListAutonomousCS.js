$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/SearchAutonomousCS",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectAutonomousCSByUserID",
		success: function(xml){
			var properties = $(xml).find("AutonomousCS");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var ACSID = $(properties[i]).find("ACSID").text();
					var PropertyName = $(properties[i]).find("PropertyName").text();
					var Address = $(properties[i]).find("Address").text();
					var Cost = $(properties[i]).find("Cost").text();
					var Contacter = $(properties[i]).find("Contacter").text();
					var FBDate = $(properties[i]).find("FBDate").text();
					
					$('<TR id="'+ACSID+'"><TD class="ListTD3em TableCenter">'+(i+1)+'</TD><TD class="TableCenter"><div noWrap class="ListTD18em TextOverFlow" style="width: 24em;">'+PropertyName+'/<span style="color: #888">'+Address+'</span></div></TD><TD class="TableCenter">'+Cost+'万元</TD><TD class="TableCenter">'+Contacter+'</TD><TD class="TableCenter">'+FBDate+'</TD><TD class="ListTD4em TableCenter"><a href="ToDo_AutonomousCSDetails.jsp?ACSID='+ACSID+'">修改</a></TD><TD class="ListTD4em TableCenter"><a class="Delete" href="#">删除</a></TD></TR>').appendTo("table");
				}
			} else {
				$('<TR><TD colspan="8" class="TableCenter">没查找到相应记录</TD></TR>').appendTo("table");
			}
			$("tr:odd").addClass("TableTDOdd");
			parent.SetCwinHeight();
			TableHover();
			
			$(".Delete").click(function() {
				me = $(this);
				$.post("/Fang3FangWeb/servlet/AutonomousDelete", {referaction:"DeleteAutonomousCS", ACSID:me.parent().parent().attr("id")}, function(d){
					me.parent().parent().css({display:'none'})
					alert("删除成功！");
				});
			});
			
		}
	});
});