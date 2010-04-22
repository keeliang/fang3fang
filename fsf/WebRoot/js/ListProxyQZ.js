$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/ProxyQZ",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectProxyQZByUserID",
		success: function(xml){
			var properties = $(xml).find("ProxyQZ");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var PQZID = $(properties[i]).find("PQZID").text();
					var CityName = $(properties[i]).find("CityName").text();
					var DistrictName = $(properties[i]).find("DistrictName").text();
					var TownName = $(properties[i]).find("TownName").text();
					var PropertyTypeName = $(properties[i]).find("PropertyTypeName").text();
					var Cost1 = $(properties[i]).find("Cost1").text();
					var Cost2 = $(properties[i]).find("Cost2").text();
					var Contacter = $(properties[i]).find("Contacter").text();
					var FBDate = $(properties[i]).find("FBDate").text();
					$('<TR id="'+PQZID+'"><TD class="ListTD3em TableCenter">'+(i+1)+'</TD><TD class="TableCenter">'+CityName+'</TD><TD class="TableCenter">'+DistrictName+'</TD><TD class="TableCenter">'+TownName+'</TD><TD class="TableCenter">'+PropertyTypeName+'</TD><TD class="TableCenter">'+Cost1+'元/月&nbsp;至&nbsp;'+Cost2+'元/月</TD><TD class="TableCenter">'+Contacter+'</TD><TD class="TableCenter" style="width: 100px;" nowrap>'+FBDate+'</TD><TD class="ListTD4em TableCenter"><a href="ToDo_ProxyQZDetails.jsp?PQZID='+PQZID+'">修改</a></TD><TD class="ListTD4em TableCenter"><a class="Delete" href="#">删除</a></TD></TR>').appendTo("table");
				}
			} else {
				$('<TR><TD colspan="10" class="TableCenter">没查找到相应记录</TD></TR>').appendTo("table");
			}
			$("tr:odd").addClass("TableTDOdd");
			parent.SetCwinHeight();
			TableHover();
			
			$(".Delete").click(function() {
				me = $(this);
				$.post("/Fang3FangWeb/servlet/ProxyQZ", {referaction:"DeleteProxyQZ", PQZID:me.parent().parent().attr("id")}, function(d){
					alert("删除成功！");
					me.parent().parent().css({display:'none'})
				});
			});
			
		}
	});
});