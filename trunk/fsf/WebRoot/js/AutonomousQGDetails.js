$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#QGForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		success: function() {
			alert("恭喜您，您已经成功更新信息！");
			$('#QGForm').resetForm();
		}
    });
    
	$("td[class!='TableTitle']").hover(function() {
		$(this).parent().addClass("TableTDSelect");
	},
	function() {
		$(this).parent().removeClass("TableTDSelect");
	});
	
	var url = window.location.href;
	window.id = url.indexOf('=');
	if (window.id == -1) return "";
	window.id = url.substring(window.id + 1);
	
	$.ajax({
		url: "/Fang3FangWeb/servlet/AutonomousQG",
		type: "GET",
		dataType: "xml",
		data: "referaction=SelectAutonomousQGByAQGID&AQGID=" + window.id,
		success: function(xml){
			var properties = $(xml).find("AutonomousQG")[0];
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			
			var AQGID = $(properties).find("AQGID").text();
			
			$("#AQGID").val(AQGID);
			$("#ShowQGID").append(AQGID);
				
			var CityName = $(properties).find("CityName").text();
			//一定要喺全局变量，以便DisplayDistrict()访问到
			window.DistrictName = $(properties).find("DistrictName").text();
			//一定要喺全局变量，以便DisplayDistrict()访问到	
			window.TownName = $(properties).find("TownName").text();
				
				//$(document).ready()嘅时候Ajax先读出City下拉框嘅列表，所以呢度可以选中读出嚟嘅值，记住佢相对应嘅CityID
				var CityID = ChangeSelectedObj("CityID", CityName);
				//将CityID传入去DisplayDistrict()方法里面，读出相对应嘅地区的ID同埋值，加载到District下拉框里面，之后选中上面读出嚟嘅DistrictName选项，再根据选择咗嘅DistrictName对应嘅DistrctID嚟执行最后一次Ajax，即喺DisplayTown(DistrictID)，读出相关商圈，最后再选中读出嚟嘅商圈
				/**
				 *	特大问题：
				 *		试过喺DisplayDistrict()方法里面返回DistrictID出嚟，但喺次次都返回到undefined，唔知点解
				 */
				DisplayDistrict(CityID);
				
			var PropertyTypeName = $(properties).find("PropertyTypeName").text();
				ChangeSelectedObj("PropertyID", PropertyTypeName);
				
			var Room = $(properties).find("Room").text();
				$("#Room").val(Room);
				
			var Hall = $(properties).find("Hall").text();
				$("#Hall").val(Hall);
				
			var Toilet = $(properties).find("Toilet").text();
				$("#Toilet").val(Toilet);
				
			var Balcony = $(properties).find("Balcony").text();
				$("#Balcony").val(Balcony);
					
			var Area1 = $(properties).find("Area1").text();
				$("#Area1").val(Area1);
					
			var Area2 = $(properties).find("Area2").text();
				$("#Area2").val(Area2);
				
			var Cost1 = $(properties).find("Cost1").text();
				$("#Cost1").val(Cost1);
				
			var Cost2 = $(properties).find("Cost2").text();
				$("#Cost2").val(Cost2);
				
			var FloorNum1 = $(properties).find("FloorNum1").text();
				$("#FloorNum1").val(FloorNum1);
				
			var FloorNum2 = $(properties).find("FloorNum2").text();
				$("#FloorNum2").val(FloorNum2);
				
			var RenovationStandardName = $(properties).find("RenovationStandardName").text();
				ChangeSelectedObj("RenovationStandardID", RenovationStandardName);

			var PayWayTypeName = $(properties).find("PayWayTypeName").text();
				ChangeSelectedObj("PayWayID", PayWayTypeName);
				
			var ExposureName = $(properties).find("ExposureName").text();
				ChangeSelectedObj("Orientation", ExposureName);
				
			var HouseAge = $(properties).find("HouseAge").text();
				$("#HouseAge").val(HouseAge);
				
			var Contacter = $(properties).find("Contacter").text();
				$("#Contacter").val(Contacter);
				
			var MobilePhone = $(properties).find("MobilePhone").text();
				$("#MobilePhone").val(MobilePhone);
				
			var HomePhone = $(properties).find("HomePhone").text();
				$("#HomePhone").val(HomePhone);
				
			var Email = $(properties).find("Email").text();
				$("#Email").val(Email);
				
			var Other = $(properties).find("Other").text();
				$("#Other").val(Other);

			var FBDate = $(properties).find("FBDate").text();
				$("#FBDate").append(FBDate);
		},
		error: function(a, b) {
			alert(b);
		}
	});
});

function validate() {
	$("#Contacter").val(CheckInputValue($("#Contacter").val()));
	$("#Other").val(CheckInputValue($("#Other").val()));
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#QGForm").validate({
			rules: {
				CityID: "required",
				DistrictID: "required",
				TownID: "required",
				PropertyID: "required",
				Room: {
					required: true,
					digits: true,
					maxValue: 99
				},
				Hall: {
					required: true,
					digits: true,
					maxValue: 99
				},
				Toilet: {
					required: true,
					digits: true,
					maxValue: 99
				},
				Balcony: {
					required: true,
					digits: true,
					maxValue: 99
				},
				Area1: {
					required: true,
					digits: true,
					minValue: 0
				},
				Area2: {
					required: true,
					digits: true,
					minValue: 0
				},
				FloorNum1: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 30
				},
				FloorNum2: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 30
				},
				Cost1: {
					required: true,
					digits: true,
					minValue: 0
				},
				Cost2: {
					required: true,
					digits: true,
					minValue: 0
				},
				Contacter: "required",
				MobilePhone: {
					required: true,
					digits: true,
					minLength: 11,
					maxLength: 11
				},
				HouseAge: {
					digits: true
				},
				HomePhone: {
					digits: true
				},
				Email: {
					email: true
				}
			},
			messages: {
				CityID: "请选择城市",
				DistrictID: "请选择地区",
				TownID: "请选择商圈",
				PropertyID: "请选择物业类型",
				
				Room: {
					required: "请输入您的期望户型",
					digits: "户型必须是数字",
					maxValue: "请正确填写您的期望户型"
				},
				Hall: {
					required: "请输入您的期望户型",
					digits: "户型必须是数字",
					maxValue: "请正确填写您的期望户型"
				},
				Toilet: {
					required: "请输入您的期望户型",
					digits: "户型必须是数字",
					maxValue: "请正确填写您的期望户型"
				},
				Balcony: {
					required: "请输入您的期望户型",
					digits: "户型必须是数字",
					maxValue: "请正确填写您的期望户型"
				},
				Area1: {
					required: "请输入您期望的面积范围",
					digits: "面积范围必须是数字",
					minValue: "面积范围不可以少于0"
				},
				Area2: {
					required: "请输入您期望的面积范围",
					digits: "面积范围必须是数字",
					minValue: "面积范围不可以少于0"
				},
				FloorNum1: {
					required: "请输入您期望的楼层范围",
					digits: "楼层必须是数字",
					minValue: "楼层不可以少于0",
					maxValue: "请正确输入您期望的楼层"
				},
				FloorNum2: {
					required: "请输入您期望的楼层范围",
					digits: "楼层必须是数字",
					minValue: "楼层不可以少于0",
					maxValue: "请正确输入您期望的楼层"
				},
				Cost1: {
					required: "请输入您期望的售价范围",
					digits: "售价范围必须是数字",
					minValue: "售价范围不可以少于0"
				},
				Cost2: {
					required: "请输入您期望的售价范围",
					digits: "售价范围必须是数字",
					minValue: "售价范围不可以少于0"
				},
				Contacter: "请输入您的真实姓名",
				MobilePhone: {
					required: "请输入您的手机号码，方便我们与您联络",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				},
				HouseAge: "房屋年限必须为数字",
				HomePhone: {
					digits: "固定电话必须为数字"
				},
				Email: {
					email: "请正确输入您的电子邮箱"
				}
			}
		}).form()
	)) return false;
}