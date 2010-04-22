$(document).ready(function() {	
	$.ajax({
		//改
		url: "/Fang3FangWeb/servlet/TownType",
		type: "POST",
		dataType: "xml",
		//改
		data: "referaction=SelectTownType",
		cache: false,
		success: function(xml){
			//注意，因为商圈有100几个，所以处理排版时间比较长，唔关传输速度事。。
			var i;
			//改
			var properties = $(xml).find("TownType");
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			//改
			for(i = 0; i < $(properties).length; i++) {
				var TownID = $(properties[i]).find("TownID").text();
				var DistrictID = $(properties[i]).find("DistrictID").text();
				var TownName = $(properties[i]).find("TownName").text();
				$(".TableContent").append('<TR id="' + TownID + '"><TD>' + (i+1) + '</TD><TD> ' + TownID + '</TD><TD> ' + DistrictID + '</TD><TD>' + TownName + '</TD><TD><button class="Delete">删除</button></TD></TR>');
			}
			afterSelect();
			
			$(".Add").click(function() {
				me = $(this);
				inputValue = me.parent().prevAll("td").find(":text").val();
				//改
				var TownID;
				
				if(inputValue != "") {
					//改
					$.post("/Fang3FangWeb/servlet/TownType", {referaction:"AddTownType", DistrictID:"D001", TownName:inputValue}, function(d){
						alert("添加成功！");
						$.post("/Fang3FangWeb/servlet/TownType", {referaction:"SelectTownType"}, function(xml) {
							var properties = $(xml).find("TownType");
			
							for(i = 0; i < $(properties).length; i++) {
								TownID = $(properties[i]).find("TownID").text();
								DistrictID = $(properties[i]).find("DistrictID").text();
							}
							DistrictID = $.trim(DistrictID);
							TownID = $.trim(TownID);
							$(".TableContent").append('<TR id="' + TownID + '"><TD>' + (i) + '</TD><TD> ' + TownID + '</TD><TD> ' + DistrictID + '</TD><TD>' + inputValue + '</TD><TD><button class="Delete">删除</button></TD></TR>');
							
							$("#Last").remove();
							$(".UpdateText").val("请输入后再按添加");
								
							afterSelect();
							
							$(".Delete").click(function() {
									me = $(this);
									$.post("/Fang3FangWeb/servlet/TownType", {referaction:"DeleteTownType", CityID:me.parent().parent().attr("id")}, function(d){
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
					$.post("/Fang3FangWeb/servlet/TownType", {referaction:"DeleteTownType", TownID:me.parent().parent().attr("id")}, function(d){
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
	$(".TableContent").append('<TR id="Last"><TD>自动生成</TD><TD>自动生成</TD><TD><select><option value="D001">荔湾</option><option value="D002">越秀</option><option value="D003">天河</option><option value="D004">海珠</option><option value="D005">黄埔</option><option value="D006">白云</option><option value="D007">番禺</option><option value="D008">从化</option><option value="D009">增城</option><option value="D010">南沙</option><option value="D011">花都</option><option value="D012">萝岗</option><option value="D013">福田</option><option value="D014">罗湖</option><option value="D015">盐田</option><option value="D017">宝安</option><option value="D018">龙岗</option></select></TD><TD><input class="UpdateText" type="text" name="TownName" id="TownName" value="请输入后再按添加" style="border: 1px solid #adaf2f; color: #adaf2f;" /></TD><TD><button class="Add">添加</button></TD></TR>');
	$(".AdminTableStyle tr:even").addClass("TableTDEven");
	TableHover();
	parent.SetCwinHeight();
	
	$(".UpdateText").click(function() {
		$(this).val("");
		$(this).css("color", "#000");
	});
}