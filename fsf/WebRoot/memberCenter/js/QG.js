$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#QGForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/		 
		success: function() {
			alert("恭喜您，您已经成功发布一条信息！");			 
	        window.location = "ListAutonomousQG.jsp";
		},
		error: function() {
			alert("发布房源失败,请检查相关必填项目");	 
		}
    });});

function validate() {	 
	
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#QGForm").validate({
			rules: {
				ProvinceID:"required",
				CityID: "required",
				DistrictID: "required",
				TownID: "required",
				PropertyID: "required",
				Room: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 99
				},
				Hall: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 99
				},
				Toilet: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 99
				},
				Balcony: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 99
				},
				UseArea: {
					required: true,
					digits: true,
					minValue: 0					 
				},
				Area: {
					required: true,
					digits: true				 
				},
				FloorIs: {
					required: true,
					digits: true,
					minValue: 0					 
				},
				FloorNum:{
				    required: true,
					digits: true,					 
					maxValue: 30
				},
				ManagementFees:{
				  required: true,
					digits: true,
					minValue: 0					
				},
				Cost: {
					required: true,
					digits: true,
					minValue: 0					 		 
				},
				PayWayID:"required",
				RenovationStandardID:"required",
				Orientation:"required",
				Contacter: "required",
				MobilePhone: {
					required: true,
					digits: true,
					minLength: 11,
					maxLength: 11
				},
				HomePhone: {
					digits: true
				},
				QQ: {
					digits: true
				}							 
			},
			messages: {
				ProvinceID:"请选择省份",
			    CityID: "请选择城市",
				DistrictID: "请选择地区",
				TownID: "请选择商圈",
				PropertyID: "请选择物业类型",
				Room: {
					required: "请输入",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				Hall: {
					required: "请输入",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				Toilet: {
					required: "请输入",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				Balcony: {
					required: "请输入",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				UseArea: {
					required: "请输入最小面积",
					digits: "必须是数字",
					minValue: "不能小于0"					 
				},
				Area: {
					required: "请输入最大面积",
					digits: "必须是数字"				 
				},
				FloorIs: {
				    required: "请输入最低楼层",
					digits: "必须是数字",
					minValue: "不能小于0"					 
				},
				FloorNum:{
				    required: "请输入最高楼层",
					digits: "必须是数字"					 
				},
				ManagementFees:{
				    required: "请输入最低价格",
					digits: "必须是数字",
					minValue: "不能小于0"					 
				},
				Cost: {
				    required: "请输入最高价格",
					digits: "必须是数字",
					minValue: "不能小于0"						 
				},
				PayWayID:"请选择付费方式",
				RenovationStandardID:"请选择装修标准",
				Orientation:"请选择朝向",	 						 
				Contacter: "请正确输入您的真实姓名",
				MobilePhone: {
					required: "请输入手机号码",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				},
				HomePhone: {
					digits: "必须是数字"
				},
				QQ: {
				    digits: "请输入QQ号，必须是数字"
				}		 
			}
		}).form()
	)) return false;
}

function CheckInputValue(str) {
	str = str.replace(/&/g, "&amp;");
	str = str.replace(/</g, "&lt;");
	str = str.replace(/>/g, "&gt;");
	str = str.replace(/\s/g, "&nbsp;");
	return str;	
}
