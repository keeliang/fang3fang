$(document).ready(function() {
alert("dfads");
	$("#mytable").empty();
	$("#mytable").append('<tr><div id="mytable-th">已有资讯类型管理</div></tr>');
	//$("#mytable").append('<tbody></tbody>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectNewsType",
		success: function(xml){
		alert("ok");
			var properties = $(xml).find("NewsType");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var InfoTypeID = $(properties[i]).find("InfoTypeID").text();
					var InfoTypeName = $(properties[i]).find("InfoTypeName").text();
	 
					$("#mytable tbody").append('<tr><td>'+　InfoTypeName +'&nbsp;&nbsp;&nbsp;&nbsp;| <a href="updateNewsType.jsp?InfoTypeID='+InfoTypeID+'" title="'+InfoTypeID+'">修改</a> <a href="/Fang3FangWeb/Access?InfoTypeID='+InfoTypeID+'&useraction=Estates&referaction=DeleteNewsType" class="cRed">删除</a></td></tr>');				    			 						 
			} }
			else {
				   $("#mytable tbody").append('<tr><td colspan="5" align="center">没查找到相应记录</TD></TR>');				    
			}		 		 
		}
		
	});
});


