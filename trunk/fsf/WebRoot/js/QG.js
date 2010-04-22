// JavaScript Document
$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#QGForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		success: function() {
			alert("恭喜您，您已经成功发布一条信息！");
			$('#QGForm').resetForm();
		}
	});
	
	$("td[class!='TableTitle']").hover(function() {
		$(this).parent().addClass("TableTDSelect");
	},
	function() {
		$(this).parent().removeClass("TableTDSelect");
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