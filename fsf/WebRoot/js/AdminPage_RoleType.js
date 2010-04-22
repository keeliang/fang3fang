$(document).ready(function() {	
	$.ajax({
		//改
		url: "/Fang3FangWeb/servlet/RoleType",
		type: "POST",
		dataType: "xml",
		//改
		data: "referaction=SelectRoleType",
		cache: false,
		success: function(xml){
			var i;
			//改
			var properties = $(xml).find("RoleType");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			//改
			for(i = 0; i < $(properties).length; i++) {
				var RoleID = $(properties[i]).find("RoleID").text();
				var RoleName = $(properties[i]).find("RoleName").text();
				$(".TableContent").append('<TR id="' + RoleID + '"><TD>' + (i+1) + '</TD><TD> ' + RoleID + '</TD><TD>' + RoleName + '</TD><TD><button class="Delete">删除</button></TD></TR>');
			}
			afterSelect();
			
			$(".Add").click(function() {
				me = $(this);
				inputValue = me.parent().prevAll("td").find("input").val();
				//改
				var PayWayID;
				
				if(inputValue != "") {
					//改
					$.post("/Fang3FangWeb/servlet/RoleType", {referaction:"AddRoleType", RoleTypeName:inputValue}, function(d){
						alert("添加成功！");
						$.post("/Fang3FangWeb/servlet/RoleType", {referaction:"SelectRoleType"}, function(xml) {
							var properties = $(xml).find("RoleID");
			
							for(i = 0; i < $(properties).length; i++) {
								PayWayID = $(properties[i]).find("RoleID").text();
							}
							PayWayID = $.trim(PayWayID);
							$(".TableContent").append('<TR id="' + RoleID + '"><TD>' + (i) + '</TD><TD> ' + RoleID + '</TD><TD>' + me.parent().prevAll("td").find("input").val() + '</TD><TD><button class="Delete">删除</button></TD></TR>');
							
							$("#Last").remove();
							$(".UpdateText").val("请输入后再按添加");
								
							afterSelect();
							
							$(".Delete").click(function() {
									me = $(this);
									$.post("/Fang3FangWeb/servlet/RoleType", {referaction:"DeleteRoleType", RoleID:me.parent().parent().attr("id")}, function(d){
										alert("删除成功！");
										i--;
										me.parent().parent().css({display:'none'});
									});
							});
	
						})
					});
				} else {
					alert("请输入权限名称");
					$("input").focus();
				}
			});
			
			$(".Delete").click(function() {
				me = $(this);
				$.post("/Fang3FangWeb/servlet/RoleType", {referaction:"DeleteRoleType", RoleID:me.parent().parent().attr("id")}, function(d){
					alert("删除成功！");
						i--;
					me.parent().parent().css({display:'none'});
				});
			});
		}
	});			
});

function afterSelect() {
	//下面id同name要改
	$(".TableContent").append('<TR id="Last"><TD>自动生成</TD><TD>自动生成</TD><TD><input class="UpdateText" type="text" name="RoleTypeName" id="RoleTypeName" value="请输入后再按添加" style="border: 1px solid #adaf2f; color: #adaf2f;" /></TD><TD><button class="Add">添加</button></TD></TR>');
	$(".AdminTableStyle tr:even").addClass("TableTDEven");
	TableHover();
	parent.SetCwinHeight();
	
	$(".UpdateText").click(function() {
		$(this).val("");
		$(this).css("color", "#000");
	});
}