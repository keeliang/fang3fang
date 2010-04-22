// JavaScript Document
$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#RegisterForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		success: function() {
			alert("恭喜您，您已经注册成功！");
			window.location = "ToDo_Framework.jsp";
		},
		error: function() {
			alert("注册失败");
			$('#RegisterForm').resetForm();
		}
    });
	
	$("td[class!='TableTitle']").hover(function() {
		$(this).parent().addClass("TableTDSelect");
	},
	function() {
		$(this).parent().removeClass("TableTDSelect");
	}).click(function() {
		$(this).find("input").focus();
	});
	$("#Return").click(function() {
		window.history.forward();
	});
});
function validate() {
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#RegisterForm").validate({
			rules: {
				UserName: "required",
				UserPsw: {
					required: true,
					minLength: 6,
					maxLength: 16
				},
				ReUserPsw: {
					required: true,
					minLength: 6,
					maxLength: 16,
					equalTo: "#UserPsw"
				},
				Question: {
					required: true					
				},
				Answer: "required",
				Email: {
					required: true,
					email: true
				},
				RealName: {
					required: true
				},
				MobilePhone: {
					required: true,					 
					digits: true
				},
				Verification: {
					required: true,
					minLength: 4,
					maxLength: 4
				}
			},
			messages: {
				UserName: "请输入用户名",
				UserPsw: "请输入密码",
				ReUserPsw: "确认密码必须跟上面相同",
				Question: "请选择密码查询问题",
				Answer: "请输入密码查询问题的答案",
				Email: "请正确输入您的电子邮件",
				RealName: "请正确输入您的真实姓名，以便发布信息",
				MobilePhone: "请正确输入您的手机号码，以便发布信息",
				Verification: "请输入验证码"
			}
		}).form()
	)) return false;
}