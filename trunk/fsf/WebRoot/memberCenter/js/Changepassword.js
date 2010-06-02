$.meta.setType("attr", "validate");

$(document).ready(function() {
//alert("password");
	$('#ChangePasswordForm').ajaxForm({
//		beforeSubmit: validate,	/*提交前先控制*/
		success: function() {
			alert("修改密码成功！");
			window.location = "../memberCenter/index.jsp";
		},
		error: function() {
			alert("修改密码失败,请检查旧密码是否正确");
			$('#ChangePasswordForm').resetForm();
		}
    });	
    
    
});
function validate() {
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#ChangePasswordForm").validate({
			rules: {
				OldPassword: {
					required: true,
					minLength: 6,
					maxLength: 16
				},
				NewPassword: {
					required: true,
					minLength: 6,
					maxLength: 16
				},
				ReNewPassword: {
					required: true,
					minLength: 6,
					maxLength: 16,
					equalTo: "#NewPassword"
				}				 
			},
			messages: {
				OldPassword: "请输入旧密码",
				NewPassword: "请输入新密码",
				ReNewPassword: "确认新密码必须跟上面相同"				 
			}
		}).form()
	)) return false;
}


