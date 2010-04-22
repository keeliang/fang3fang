$(document).ready(function() {
	$("#ListNewsTable").empty();
	$("#ListNewsTable").append('<tbody></tbody>');
	// $("#ListNewsTable tbody").append('<tr><td colspan="5" align="center">没查找到相应记录qaaaaaa</TD></TR>');				    
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectNews",
		success: function(xml){
		alert("ok");
			var properties = $(xml).find("News");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoID = $(properties[i]).find("InfoID").text();
					//alert(InfoID);
					var InfoTypeName = $(properties[i]).find("InfoTypeName").text();
					var InfoTitle = $(properties[i]).find("InfoTitle").text();                                                                                       
					var InfoContent = $(properties[i]).find("InfoContent").text();                                                       
					var InfoDate = $(properties[i]).find("InfoDate").text();
					var InfoUser = $(properties[i]).find("InfoUser").text(); 
					$("#ListNewsTable tbody").append('<tr><td width="65%"><b><a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">'+InfoTitle+'</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+InfoTypeName+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font COLOR="GRAY">'+InfoDate+'</font><br/>'+InfoContent+' |&nbsp;<a href="updateNews.jsp?InfoID='+InfoID+'" title="'+InfoID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoID='+InfoID+'&useraction=Estates&referaction=DeleteNews" class="cRed">删除</a></td></tr>');					 						 
			} }
			else {
				   $("#ListNewsTable tbody").append('<tr><td colspan="5" align="center">没查找到相应记录</TD></TR>');				    
			}		 		 
		}
		
	});
});


