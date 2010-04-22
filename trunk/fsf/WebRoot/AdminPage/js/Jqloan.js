$.meta.setType("attr", "validate");
$(document).ready(function() {
	alert("现在是测试阶段helloworld");
	$('#JGForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/		 
		success: function() {
			alert("恭喜您，您已经成功申请二手房交易资金监管！");			 
	        window.location = "ListJGFunds.jsp";
		},
		error: function() {
			alert("发布房源失败,请检查相关必填项目");	 
		}
    });     
});

function validate() {

	$("#SellerName").val(CheckInputValue($("#SellerName").val()));
	$("#SellerDocumentNumber").val(CheckInputValue($("#SellerDocumentNumber").val()));	
	$("#BuyerName").val(CheckInputValue($("#BuyerName").val()));	
	$("#BuyerDocumentNumber").val(CheckInputValue($("#BuyerDocumentNumber").val()));	
	$("#Address").val(CheckInputValue($("#Address").val()));
	$("#DocumentNumber").val(CheckInputValue($("#DocumentNumber").val()));	
	$("#Other").val(CheckInputValue($("#Other").val()));
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#JGForm").validate({
			rules: {
				SellerName:"required",
				SellerDocumentTypeID:"required",
				SellerDocumentNumber:"required",
				BuyerName:"required",
				BuyerDocumentTypeID:"required",
				BuyerDocumentNumber:"required",
				Address:"required",
				DocumentNumber:"required",
				Cost:{
					required:true,
					digits:true
				},
				MobilePhone: {                                           //手机号码                                                
					required: true,
					digits: true,
					minLength:5,
					maxLength:15
				},
				Other:"required"
			},
			messages: {
				SellerName:"请输入卖房人姓名",
				SellerDocumentTypeID:"请选择证件类型",
				SellerDocumentNumber:"请输入证件号码",
				BuyerName:"请输入买房人姓名",
				BuyerDocumentTypeID:"请选择证件类型",
				BuyerDocumentNumber:"请输入证件号码",
				Address:"请输入楼宇地址",
				DocumentNumber:"请输入证件号码",
				Cost:{
					required:"请输入资金监管金额",
					digits:"必须是数字"
				},
				MobilePhone: {
					required: "请输入电话号码",
					digits: "电话号码不多于15位的数字组合",
					minLength: "电话号码不多于15位的数字组合",
					maxLength: "电话号码不多于15位的数字组合"
				},
				Other:"请输入其它要求"
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
