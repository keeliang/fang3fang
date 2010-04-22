$.meta.setType("attr", "validate");

$(document).ready(function() {
	//alert("现在是测试阶段helloworld");
	$('#AJForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/		 
		success: function() {
			alert("恭喜您，你已经成功申请按揭贷款。");			 
	        window.location = "ListAJLoan.jsp";
		},
		error: function() {
			alert("申请按揭贷款失败，请检查相关必填项目。");	 
		}
    });     
});

function validate() {
	$("#DocumentNumber").val(CheckInputValue($("#DocumentNumber").val()));
	$("#Contacter").val(CheckInputValue($("#Contacter").val()));        //对某些表单进行过滤
	$("#WorkPlace").val(CheckInputValue($("#WorkPlace").val()));
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
				DocumentNumber: {                                       //证件号码                                                                 
					required: true
				},
				LoanMoney:{                                             //贷款金额
					required:true,
					digits:true
				},
				MobilePhone: {                                           //手机号码                                                
					required: true,
					digits: true,
					minLength: 11,
					maxLength: 11
				},
				HomePhone: {                                             //固定电话 
					required:true,
					digits: true
				},
				LoanDueDate:{
					required:true,
					digits:true
				},
				CityID: "required",                                     //城市
				RePayWayID:"required",                                    //付款方式
				EstateCost:{                                            //购置价格       
					required:true,
					digits:true
				},
				DocumentCost:{
					required:true,
					digits:true
				},
				Address: "required",
				DoneYear: {                                             //竣工时间（年）
					digits: true,
					minLength: 4,
					maxLength: 4,
					minValue: 1900,
					maxValue: 2200
				},
				LoanToUse:"required",
				EstateType_EstateID:"required",                         //房产性质类型
				DistrictID: "required",                                 //区县
				TownID: "required",                                     //商圈
				DoneMonth: {                                            //竣工时间（月）
					digits: true,			
					minLength: 1,
					maxLength: 2,
					minValue: 1,
					maxValue: 12
				},
				PropertyName:"required",                                //楼盘/小区名称
				Contacter: "required",                                 //真实姓名
				DocumentTypeID: "required",                       //证件类型
				WorkPlace:"required"
				/*





				DocumentTypeID: "required",                             //证件类型

				LoanToUse:"required",                                   //借款用途
				Area: {                                                 //建筑面积
					required: true,
					digits: true
				},



				LoanDueDate:{                                           //贷款期限
					required:true,
					digits:true,
					minValue:0,
					maxValue:30
				},

				DocumentCost:{                                          //产房证登记价格
					requiredL:true,
					digits:true
				},





*/
			},
			messages: {
				LoanToUse:"请选择借款用途",
				EstateType_EstateID:"请选择房产性质类型",                         //房产性质类型
				RePayWayID:"请选择付费方式",
				Contacter: "请输入您的真实姓名",
				DocumentNumber: "请输入证件号码",
				DocumentTypeID: "请选择",
				WorkPlace:"请选择工作地点",
				HomePhone: {
					required:"请输入固定电话",
					digits: "必须是数字"
				},
				LoanMoney:{                                             //贷款金额
					required:"请输入贷款金额",
					digits:"必须是数字"
				},

				LoanDueDate:{
					required:"请输入年限",
					digits:"必须是数字"
				},
				EstateCost:{                                            //购置价格       
					required:"请输入购置价格",
					digits:"必须是数字"
				},
				DistrictID: "请选择",
				TownID: "请选择",
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
				DocumentCost:{
					required:"请输入产房证登记价格",
					digits:"必须是数字"
				},
				Address: "请输入你的家庭详细地址",
				CityID:"请选择城市",
				PropertyName:"请输入楼盘/小区名称",                                //楼盘/小区名称
				MobilePhone: {
					required: "请输入手机号码",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
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
