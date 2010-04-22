$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/SearchProxyCZ",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectProxyCZByUserID",
		success: function(xml){
			var properties = $(xml).find("ProxyCZ");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var PCZID = $(properties[i]).find("PCZID").text();
					var PropertyName = $(properties[i]).find("PropertyName").text();
					var Address = $(properties[i]).find("Address").text();
					var Cost = $(properties[i]).find("Cost").text();
					var Contacter = $(properties[i]).find("Contacter").text();
					var FBDate = $(properties[i]).find("FBDate").text();
					
					$('<TR id="'+PCZID+'"><TD class="ListTD3em TableCenter">'+(i+1)+'</TD><TD class="TableCenter"><div noWrap class="ListTD18em TextOverFlow" style="width: 24em;">'+PropertyName+'/<span style="color: #888">'+Address+'</span></div></TD><TD class="TableCenter">'+Cost+'万元</TD><TD class="TableCenter">'+Contacter+'</TD><TD class="TableCenter">'+FBDate+'</TD><TD class="ListTD4em TableCenter"><a href="ToDo_ProxyCZDetails.jsp?PCZID='+PCZID+'">修改</a></TD><TD class="ListTD4em TableCenter"><a class="Delete" href="#">删除</a></TD></TR>').appendTo("table");
				}
			} else {
				$('<TR><TD colspan="8" class="TableCenter">没查找到相应记录</TD></TR>').appendTo("table");
			}
			$("tr:odd").addClass("TableTDOdd");
			parent.SetCwinHeight();
			TableHover();
			
			$(".Delete").click(function() {
				me = $(this);
				$.post("/Fang3FangWeb/servlet/ProxyDelete", {referaction:"DeleteProxyCZ", PCZID:me.parent().parent().attr("id")}, function(d){
					me.parent().parent().css({display:'none'})
					alert("删除成功！");
				});
			});
			
		}
	});
});