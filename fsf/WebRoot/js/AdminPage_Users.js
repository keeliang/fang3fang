$(document).ready(function() {	
	$.ajax({
		//改
		url: "/Fang3FangWeb/servlet/Users",
		type: "POST",
		dataType: "xml",
		//改
		data: "referaction=SelectUsers",
		cache: false,
		success: function(xml){
			var i;
			
			var UserID;
			//改
			var properties = $(xml).find("User");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			//改
			for(i = 0; i < $(properties).length; i++) {
				UserID = $(properties[i]).find("UserID").text();
				var UserName = $(properties[i]).find("UserName").text();
				var RoleName = $(properties[i]).find("RoleName").text();
				$(".TableContent").append('<TR id="'+UserID+'"><TD>'+(i+1)+'</TD><TD>'+UserID+'</TD><TD>'+UserName+'</TD><TD>'+RoleName+'</TD><TD><button class="Update" url="AdminPage_UpdateUsers.jsp?UserID=' + UserID + '">修改</button></TD><TD><button class="Delete">删除</button></TD></TR>');
			}
			afterSelect();
			
			$(".Update").click(function() {
				window.location = $(this).attr("url");
			});
			
			$(".Delete").click(function() {
					me = $(this);
					$.post("/Fang3FangWeb/servlet/Users", {referaction:"DelectUsers", UsersID:me.parent().parent().attr("id")}, function(d){
						alert("删除成功！");
						i--;
						me.parent().parent().css({display:'none'});
					});
			});
		}
	});			
});

function afterSelect() {
	$(".AdminTableStyle tr:even").addClass("TableTDEven");
	TableHover();
	parent.SetCwinHeight();
}