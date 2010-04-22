// JavaScript Document
$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#CZForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		iframe: true,
		success: function() {
			alert("恭喜您，您已经成功发布一条信息！");
			$('#CZForm').resetForm();
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
	$("#PropertyName").val(CheckInputValue($("#PropertyName").val()));
	$("#Address").val(CheckInputValue($("#Address").val()));
	$("#Contacter").val(CheckInputValue($("#Contacter").val()));
	$("#NearSchool").val(CheckInputValue($("#NearSchool").val()));
	$("#Traffic").val(CheckInputValue($("#Traffic").val()));
	$("#NearEnvironment").val(CheckInputValue($("#NearEnvironment").val()));
	$("#Introduction").val(CheckInputValue($("#Introduction").val()));
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if(!(
		$("#CZForm").validate({
			submitHandler: function() {
			},
			rules: {
				PropertyName: "required",
				CityID: "required",
				DistrictID: "required",
				TownID: "required",
				Area: {
					required: true,
					digits: true
				},
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
				Address: {
					required: true
				},
				FloorNum: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 30
				},
				FloorIs: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 30
				},
				DocumentType: "required",
				DocumentNumber: {
					required: true
				},
				ManagementFees: {
					required: true,
					digits: true
				},
				Cost: {
					required: true,
					digits: true
				},
				DepositWay: "required",
				Deposit: {
					required: true,
					digits: true
				},
				RentYear: {
					required: true,
					digits: true,
					minLength: 4,
					maxLength: 4,
					minValue: 1900,
					maxValue: 2200
				},
				RentMonth: {
					required: true,
					digits: true,
					minLength: 1,
					maxLength: 2,
					minValue: 1,
					maxValue: 12
				},
				RentDay: {
					required: true,
					digits: true,
					minLength: 1,
					maxLength: 2,
					minValue: 1,
					maxValue: 31
				},
				DoneYear: {
					digits: true,
					minLength: 4,
					maxLength: 4,
					minValue: 1900,
					maxValue: 2200
				},
				DoneMonth: {
					digits: true,
					minLength: 1,
					maxLength: 2,
					minValue: 1,
					maxValue: 12
				},
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
				Email: {
					email: true
				}
			},
			messages: {
				PropertyName: "请输入具体的物业名称",
				CityID: "请选择城市",
				DistrictID: "请选择地区",
				TownID: "请选择商圈",
				Area: {
					required: "请正确输入面积",
					digits: "必须是数字"
				},
				PropertyID: "请选择物业类型",
				Room: {
					required: "请输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Hall: {
					required: "请输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Toilet: {
					required: "请输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Balcony: {
					required: "请输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Address: "请输入楼盘的具体地址",
				FloorNum: {
					required: "请输入总楼层",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				FloorIs: {
					required: "请输入总楼层",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				DocumentType: "请选择证件类型，以便发生误会时我们进行调查，且保证不会公开",
				DocumentNumber: "请输入证件号码",
				ManagementFees: {
					required: "请输入物业管理费，如果不需要，请输入0",
					digits: "必须是数字"
				},
				Cost: {
					required: "请输入楼盘售价",
					digits: "必须是数字"
				},
				DepositWay: "请选择押金方式",
				Deposit: {
					required: "请输入押金价钱",
					digits: "必须是数字"
				},
				RentYear: {
					required: "请输入具体的起租年份",
					digits: "必须是数字",
					minLength: "请正确输入",
					maxLength: "请正确输入",
					minValue: "请正确输入年份",
					maxValue: "请正确输入年份"
				},
				RentMonth: {
					required: "请输入具体的起租月份",
					digits: "必须是数字",
					minLength: "请正确输入",
					maxLength: "请正确输入",
					minValue: "请正确输入月份",
					maxValue: "请正确输入月份"
				},
				RentDay: {
					required: "请输入具体的起租日期",
					digits: "必须是数字",
					minLength: "请正确输入",
					maxLength: "请正确输入",
					minValue: "请正确输入日期",
					maxValue: "请正确输入日期"
				},
				Contacter: "请正确输入您的真实姓名",
				DoneYear: {
					digits: "必须是数字",
					minLength: "请正确输入竣工年份",
					maxLength: "请正确输入竣工年份",
					minValue: "请正确输入竣工年份",
					maxValue: "请正确输入竣工年份"
				},
				DoneMonth: {
					digits: "必须是数字",
					minLength: "请正确输入竣工月份",
					maxLength: "请正确输入竣工月份",
					minValue: "请正确输入竣工月份",
					maxValue: "请正确输入竣工月份"
				},
				MobilePhone: {
					required: "请输入您的手机号码，方便我们与您联络",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				},
				HomePhone: {
					digits: "必须是数字"
				},
				Email: {
					email: "请正确输入您的电子邮箱"
				}
			}
		}).form()
	)) return false;
}