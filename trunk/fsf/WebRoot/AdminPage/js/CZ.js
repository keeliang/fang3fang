$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#CZForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/		 
		success: function() {
			alert("恭喜您，您已经成功发布一条信息！");			 
			$.ajax({
		       url: "/Fang3FangWeb/Access",
		       type: "POST",
		       dataType: "xml",
		       data: "useraction=DeleteImage&referaction=DoneRegEstate",
		       success: function(xml){
		         $("#Photo").empty();
		       }
	        });	
	        window.location = "ListAutonomousCZ.jsp";
		},
		error: function() {
			alert("发布房源失败,请检查相关必填项目");	 
		}
    });
    $('#Return').click(function() {             
           history.go(-1);
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
	if (!(
		$("#CZForm").validate({
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
				DocumentTypeID: "required",
				DocumentNumber: {
					required: true
				},
				ManagementFees: {
					required: true,
					digits: true
				},
				Rent: {
					required: true,
					digits: true
				},
				DepositID: "required",
				RentYear:{
				    digits: true,
					minLength: 4,
					maxLength: 4,
					minValue: 1900,
					maxValue: 2200
				},
				RentMonth:{
				    digits: true,
					minLength: 1,
					maxLength: 2,
					minValue: 1,
					maxValue: 12
				},
				RentDate:{
				    digits: true,
					minLength: 1,
					maxLength: 2,
					minValue: 1,
					maxValue: 31
				},
				PayWayID:"required",
				RenovationStandardID:"required",
				Orientation:"required",
				Contacter: "required",
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
					required: "输入",
					digits: "数字值",
					maxValue: "请正确输入"
				},
				Hall: {
					required: "输入",
					digits: "数字值",
					maxValue: "请正确输入"
				},
				Toilet: {
					required: "输入",
					digits: "数字值",
					maxValue: "请正确输入"
				},
				Balcony: {
					required: "输入",
					digits: "数字值",
					maxValue: "请正确输入"
				},
				Address: "请输入楼盘的具体地址",
				FloorNum: {
					required: "请输入总楼层",
					digits: "数字值",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				FloorIs: {
					required: "请输入所在楼层",
					digits: "数字值",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				DocumentTypeID: "请选择证件类型",
				DocumentNumber: "请输入证件号码",
				ManagementFees: {
					required: "最少填0",
					digits: "必须是数字"
				},
				Rent: {
					required: "请输入租价",
					digits: "数字值"
				},
				DepositID:"请选择押金方式",
				RentYear: {
					digits: "请正确输入年份",
					minLength: "请正确输入年份",
					maxLength: "请正确输入年份",
					minValue: "请正确输入年份",
					maxValue: "请正确输入年份"
				},
				RentMonth: {
					digits: "请正确输入月份",
					minLength: "请正确输入月份",
					maxLength: "请正确输入月份",
					minValue: "请正确输入月份",
					maxValue: "请正确输入月份"
				},
				RentDate: {
					digits: "请正确输入日期",
					minLength: "请正确输入日期",
					maxLength: "请正确输入日期",
					minValue: "请正确输入日期",
					maxValue: "请正确输入日期"
				},				
				PayWayID:"请选择付费方式",
				RenovationStandardID:"请选择装修标准",
				Orientation:"请选择朝向",
				Contacter: "请正确输入您的真实姓名",
				DoneYear: {
					digits: "请正确输入竣工年份",
					minLength: "请正确输入竣工年份",
					maxLength: "请正确输入竣工年份",
					minValue: "请正确输入竣工年份",
					maxValue: "请正确输入竣工年份"
				},
				DoneMonth: {
					digits: "请正确输入竣工月份",
					minLength: "请正确输入竣工月份",
					maxLength: "请正确输入竣工月份",
					minValue: "请正确输入竣工月份",
					maxValue: "请正确输入竣工月份"
				},
				MobilePhone: {
					required: "请输入手机号码",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				},
				HomePhone: {
					digits: "数字值"
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
