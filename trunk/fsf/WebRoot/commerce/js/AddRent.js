$(document).ready(function() { 
	
	$('#AddRentForm').ajaxForm({
	//	beforeSubmit: validate,	//提交前先控制	 
		success: function() {
			alert("您已经成功发布转让/招租信息！");			 
	        window.location = "index.jsp";
		},
		error: function() {
			alert("发布信息失败,请检查相关必填项目");	 
		}
    }); 
       	 
});


/*function validate() {



$("#Title").val(CheckInputValue($("#Title").val()));
	$("#Content").val(CheckInputValue($("#Content").val()));
	$("#Address").val(CheckInputValue($("#Address").val()));	
	$("#ContactPerson").val(CheckInputValue($("#ContactPerson").val()));	
	$("#Phone").val(CheckInputValue($("#Phone").val()));
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false

	if (!(
		$("#AddRentForm").validate({
			rules: {
				Title:"required",
				StoreTypeID:"required",
				Content:"required",
				TownID:"required",
				Address:"required",
				ContactPerson:"required",
				Phone: {                                                                                         
					required: true,
					digits: true,
					minLength:5,
					maxLength:15
				}
			},
			messages: {
				Title:"请输入标题",
				StoreTypeID:"请选择旺铺类型",
				Content:"请输入内容",
				TownID:"请选择商圈",
				Address:"请输入地址",
				ContactPerson:"请输入联系人",
				Phone: {
					required: "请输入手机号码",
					digits: "手机号码不多于15位的数字组合",
					minLength: "手机号码不多于15位的数字组合",
					maxLength: "手机号码不多于15位的数字组合"
				}
			}
		}).form()
	)) return false;
}*/