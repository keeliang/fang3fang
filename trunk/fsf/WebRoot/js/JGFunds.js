// JavaScript Document
$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#JGForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		success: function() {
			alert("恭喜您，您已经成功发布一条信息！");
			$('#JGForm').resetForm();
		}
	});

	$("td[class!='TableTitle']").hover(function() {
		$(this).parent().addClass("TableTDSelect");
	},
	function() {
		$(this).parent().removeClass("TableTDSelect");
	});
	$("#Return").click(function() {
		window.history.forward();
	});
});
function validate() {
	$("#SellerName").val(CheckInputValue($("#SellerName").val()));
	$("#BuyerName").val(CheckInputValue($("#BuyerName").val()));
	$("#Address").val(CheckInputValue($("#Address").val()));
	$("#Other").val(CheckInputValue($("#Other").val()));
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#JGForm").validate({
			rules: {
				SellerName: "required",
				BuyerName: "required",
				Address: "required",
				Cost: {
					required: true,
					digits: true
				},
				MobilePhone: {
					required: true,
					digits: true,
					minLength: 11,
					maxLength: 11
				},
				SellerDocumentNumber: {
					digits: true
				},
				BuyerDocumentNumber: {
					digits: true
				},
				DocumentNumber: {
					digits: true
				}
			},
			messages: {
				SellerName: "请正确输入卖房人的真实姓名",
				BuyerName: "请正确输入买房人的真实姓名",
				Address: "请正确输入交易的楼宇地址",
				Cost: {
					required: "请输入资金监管的金额",
					digits: "资金监管的金额必须是数字"
				},
				MobilePhone: {
					required: "请输入您的手机号码，方便我们与您联络",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				},
				SellerDocumentNumber: {
					digits: "卖房人证件号码必须是数字"
				},
				BuyerDocumentNumber: {
					digits: "买房人证件号码必须是数字"
				},
				DocumentNumber: {
					digits: "房地产证号码必须是数字"
				}
			}
		}).form()
	)) return false;
}