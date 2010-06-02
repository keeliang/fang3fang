$.meta.setType("attr", "validate");

$(document).ready(function() {
//	alert("你好INFO");
    	$('#ChangeMemberInfoForm').ajaxForm({
	//	beforeSubmit: validate,	/*提交前先控制*/
		success: function() {
			alert("修改个人信息成功！");
			window.location = "../memberCenter/index.jsp";
		},
		error: function() {
			alert("修改个人信息失败.");
			$('#ChangeMemberInfoForm').resetForm();
		}
    });	
});
 function validate() {
	
		if (!(
		$("#ChangeMemberInfoForm").validate({
			rules: {
				 Other:{
				 	required:true
				 },
				address:{
				 	required:true
				 },
				email:{
				 	required:true
				 },
				FamilyPhone1:{
				 	required:true
				 },
				MobilePhone:{
				 	required:true
				 },
				WorkPlace:{
				 	required:true
				 },
				DocumentNumber:{
				 	required:true
				 },
				DocumentTypeID:{
				 	required:true
				 },
				 RealName:{
				 	required:true
				 }
			},
			messages: {
				Other:"请输入其它说明",	
				address:"请输入地址",
				email:"请输入邮箱地址",
				FamilyPhone1:"请输入固定电话",	
				MobilePhone:"请输入你的手机号码",
				WorkPlace:"请输入工作单位 ",
				DocumentTypeID:"请选择证件类型",
				DocumentNumber:"请输入证件号码",
				RealName:"请输入真实姓名"
			}
		}).form()
	)) return false;
}


