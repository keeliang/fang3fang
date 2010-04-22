$(document).ready(function() {
alert("已有旺铺类型管理");
	$("#mytable").empty();
	$("#mytable").append('<tr><div id="mytable-th">已有旺铺类型管理</div></tr>');
	//$("#mytable").append('<tbody></tbody>');
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectShopType",
		success: function(xml){
		alert("ok");
			var properties = $(xml).find("ShopType");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})			
			if($(properties).length > 0) {
				for(var i = 0; i < $(properties).length; i++) {
					var StoreTypeID = $(properties[i]).find("StoreTypeID").text();
					var StoreTypeName = $(properties[i]).find("StoreTypeName").text();
	 
					$("#mytable tbody").append('<tr><td>'+　StoreTypeName +'&nbsp;&nbsp;&nbsp;&nbsp;| <a href="updateShopType.jsp?StoreTypeID='+StoreTypeID+'" title="'+StoreTypeID+'">修改</a> <a href="/Fang3FangWeb/Access?StoreTypeID='+StoreTypeID+'&useraction=Estates&referaction=DeleteShopType" class="cRed">删除</a></td></tr>');				    			 						 
			} }
			else {
				   $("#mytable tbody").append('<tr><td colspan="5" align="center">没查找到相应记录</TD></TR>');				    
			}		 		 
		}
		
	});
});


