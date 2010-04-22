// JavaScript Document
$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#AJForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		success: function() {
			alert("恭喜您，您已经成功发布一条信息！");
			$('#AJForm').resetForm();
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
	$("#UserName").val(CheckInputValue($("#UserName").val()));
	$("#PropertyName").val(CheckInputValue($("#PropertyName").val()));
	$("#Address").val(CheckInputValue($("#Address").val()));
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#AJForm").validate({
			rules: {
				UserName: "required",
				MobilePhone: {
					required: true,
					minLength: 11,
					maxLength: 11,
					digits: true
				},
				HomePhone: {
					digits: true
				},
				LoanMoney: {
					required: true,
					digits: true
				},
				LoanDueDate: {
					required: true,
					digits: true,
					minLength: 1,
					maxLength: 3
				},
				RepayWay: "required",
				LoanToUse: "required",
				CityID: "required",
				DistrictID: "required",
				TownID: "required",
				PropertyID: "required",
				PropertyName: "required",
				Address: "required",
				PropertyCost: {
					required: true,
					digits: true
				},
				DocumentCost: {
					required: true,
					digits: true
				},
				DoneYear: {
					required: true,
					digits: true,
					minLength: 4,
					maxLength: 4,
					minValue: 1900,
					maxValue: 2200
				},
				DoneMonth: {
					required: true,
					digits: true,
					minValue: 1,
					maxValue: 12
				},
				Area: {
					required: true,
					digits: true
				}
			},
			messages: {
				UserName: "请输入您的真实姓名",
				MobilePhone: {
					required: "请输入您的手机号码",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				},
				HomePhone: "请正确输入您的固定号码",
				LoanMoney: {
					required: "请输入您的贷款金额",
					digits: "贷款金额必须是数字"
				},
				LoanDueDate: {
					required: "请输入贷款期限",
					digits: "贷款期限必须是数字",
					minLength: "贷款的期限必须是0-100年",
					maxLength: "贷款的期限必须是0-100年"
				},
				RepayWay: "请选择您的还款方式",
				LoanToUse: "请选择您的借款用途",
				CityID: "请选择您抵押楼盘所在的城市",
				DistrictID: "请选择您抵押楼盘所在的区县",
				TownID: "请选择您抵押楼盘所在的商圈",
				PropertyID: "请选择您抵押楼盘的房产性质",
				PropertyName: "请正确输入您抵押楼盘的名称",
				Address: "请正确输入您抵押楼盘的地址",
				PropertyCost: {
					required: "请输入您抵押楼盘的购置价格",
					digits: "购置价格必须是数字"
				},
				DocumentCost: {
					required: "请输入您抵押楼盘的房产证登记价格",
					digits: "房产证登记价格必须是数字"
				},
				DoneYear: {
					required: "请输入您抵押楼盘的竣工时间",
					digits: "抵押楼盘的竣工时间必须是数字",
					minLength: "请正确输入年份",
					maxLength: "请正确输入年份",
					minValue: "请正确输入年份",
					maxValue: "请正确输入年份"
				},
				DoneMonth: {
					required: "请正确输入您抵押楼盘的竣工时间",
					digits: "抵押楼盘的竣工时间必须是数字",
					minValue: "请正确输入月份",
					maxValue: "请正确输入月份"
				},
				Area: {
					required: "请输入您抵押楼盘的建筑面积",
					digits: "建筑面积必须是数字"
				}
			}
		}).form()
	)) return false;
}