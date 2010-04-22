$(document).ready(function() {	
	$.ajax({
		//改
		url: "/Fang3FangWeb/servlet/DistrictType",
		type: "POST",
		dataType: "xml",
		//改
		data: "referaction=SelectDistrictType",
		cache: false,
		success: function(xml){
			var i;
			//改
			var properties = $(xml).find("DistrictType");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			//改
			for(i = 0; i < $(properties).length; i++) {
				var DistrictID = $(properties[i]).find("DistrictID").text();
				var CityID = $(properties[i]).find("CityID").text();
				var DistrictName = $(properties[i]).find("DistrictName").text();
				$(".TableContent").append('<TR id="' + DistrictID + '"><TD>' + (i+1) + '</TD><TD> ' + DistrictID + '</TD><TD> ' + CityID + '</TD><TD>' + DistrictName + '</TD><TD><button class="Delete">删除</button></TD></TR>');
			}
			afterSelect();
			
			$(".Add").click(function() {
				me = $(this);
				inputValue = me.parent().prevAll("td").find(":text").val();
				//改
				var DistrictID;
				
				if(inputValue != "") {
					//改
					$.post("/Fang3FangWeb/servlet/DistrictType", {referaction:"AddDistrictType", CityID:"C001", DistrictName:inputValue}, function(d){
						alert("添加成功！");
						$.post("/Fang3FangWeb/servlet/DistrictType", {referaction:"SelectDistrictType"}, function(xml) {
							var properties = $(xml).find("DistrictType");
			
							for(i = 0; i < $(properties).length; i++) {
								DistrictID = $(properties[i]).find("DistrictID").text();
								CityID = $(properties[i]).find("CityID").text();
							}
							CityID = $.trim(CityID);
							DistrictID = $.trim(DistrictID);
							$(".TableContent").append('<TR id="' + DistrictID + '"><TD>' + (i) + '</TD><TD> ' + DistrictID + '</TD><TD> ' + CityID + '</TD><TD>' + inputValue + '</TD><TD><button class="Delete">删除</button></TD></TR>');
							
							$("#Last").remove();
							$(".UpdateText").val("请输入后再按添加");
								
							afterSelect();
							
							$(".Delete").click(function() {
									me = $(this);
									$.post("/Fang3FangWeb/servlet/DistrictType", {referaction:"DeleteDistrictType", CityID:me.parent().parent().attr("id")}, function(d){
										alert("删除成功！");
										i--;
										me.parent().parent().css({display:'none'});
									});
							});
	
						})
					});
				} else {
					alert("请输入地区名称");
					$(":text").focus();
				}
			});
			
			$(".Delete").click(function() {
					me = $(this);
					$.post("/Fang3FangWeb/servlet/DistrictType", {referaction:"DeleteDistrictType", DistrictID:me.parent().parent().attr("id")}, function(d){
						alert("删除成功！");
						i--;
						me.parent().parent().css({display:'none'});
					});
			});
		}
	});			
});

function afterSelect() {
	//下面id同name要改，注意！！下面嘅select下拉框写死咗。。
	$(".TableContent").append('<TR id="Last"><TD>自动生成</TD><TD>自动生成</TD><TD><select><option value="C001">广州</option><option value="C002">深圳</option></select></TD><TD><input class="UpdateText" type="text" name="DistrictName" id="DistrictName" value="请输入后再按添加" style="border: 1px solid #adaf2f; color: #adaf2f;" /></TD><TD><button class="Add">添加</button></TD></TR>');
	$(".AdminTableStyle tr:even").addClass("TableTDEven");
	TableHover();
	parent.SetCwinHeight();
	
	$(".UpdateText").click(function() {
		$(this).val("");
		$(this).css("color", "#000");
	});
}