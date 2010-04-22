$(document).ready(function() {	
	$.ajax({
		//改
		url: "/Fang3FangWeb/servlet/CityType",
		type: "POST",
		dataType: "xml",
		//改
		data: "referaction=SelectCityType",
		cache: false,
		success: function(xml){
			var i;
			//改
			var properties = $(xml).find("CityType");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			//改
			for(i = 0; i < $(properties).length; i++) {
				var CityID = $(properties[i]).find("CityID").text();
				var CityName = $(properties[i]).find("CityName").text();
				$(".TableContent").append('<TR id="' + CityID + '"><TD>' + (i+1) + '</TD><TD> ' + CityID + '</TD><TD>' + CityName + '</TD><TD><button class="Delete">删除</button></TD></TR>');
			}
			afterSelect();
			
			$(".Add").click(function() {
				me = $(this);
				inputValue = me.parent().prevAll("td").find("input").val();
				//改
				var CityID;
				
				if(inputValue != "") {
					//改
					$.post("/Fang3FangWeb/servlet/CityType", {referaction:"AddCityType", CityName:inputValue}, function(d){
						alert("添加成功！");
						$.post("/Fang3FangWeb/servlet/CityType", {referaction:"SelectCityType"}, function(xml) {
							var properties = $(xml).find("CityType");
			
							for(i = 0; i < $(properties).length; i++) {
								CityID = $(properties[i]).find("CityID").text();
							}
							CityID = $.trim(CityID);
							$(".TableContent").append('<TR id="' + CityID + '"><TD>' + (i) + '</TD><TD> ' + CityID + '</TD><TD>' + me.parent().prevAll("td").find("input").val() + '</TD><TD><button class="Delete">删除</button></TD></TR>');
							
							$("#Last").remove();
							$(".UpdateText").val("请输入后再按添加");
								
							afterSelect();
							
							$(".Delete").click(function() {
									me = $(this);
									$.post("/Fang3FangWeb/servlet/CityType", {referaction:"DeleteCityType", CityID:me.parent().parent().attr("id")}, function(d){
										alert("删除成功！");
										i--;
										me.parent().parent().css({display:'none'});
									});
							});
	
						})
					});
				} else {
					alert("请输入城市名称");
					$("input").focus();
				}
			});
			
			$(".Delete").click(function() {
					me = $(this);
					$.post("/Fang3FangWeb/servlet/CityType", {referaction:"DeleteCityType", CityID:me.parent().parent().attr("id")}, function(d){
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
	$(".TableContent").append('<TR id="Last"><TD>自动生成</TD><TD>自动生成</TD><TD><input class="UpdateText" type="text" name="CityName" id="CityName" value="请输入后再按添加" style="border: 1px solid #adaf2f; color: #adaf2f;" /></TD><TD><button class="Add">添加</button></TD></TR>');
	$(".AdminTableStyle tr:even").addClass("TableTDEven");
	TableHover();
	parent.SetCwinHeight();
	
	$(".UpdateText").click(function() {
		$(this).val("");
		$(this).css("color", "#000");
	});
}