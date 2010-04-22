$.meta.setType("attr", "validate");

$(document).ready(function() {
	var url = window.location.href;
	window.id = url.indexOf('=');
	if (window.id == -1) return "";
	window.id = url.substring(window.id + 1);
	
	$.ajax({
		url: "/Fang3FangWeb/servlet/Users",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectUserByAccountName&UserID=" + window.id,
		success: function(xml){
			var properties = $(xml).find("User")[0];
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			
			var UserID = $(properties).find("UserID").text();
			
			$("#UserID").val(UserID);
			$("#ShowUserID").append(UserID);
				
			var RoleName = $(properties).find("RoleName").text();
				//等等先做
			var AccountName = $(properties).find("AccountName").text();
				$("#AccountName").val(AccountName);
			var AccountPsw = $(properties).find("AccountPsw").text();
				$("#AccountPsw").val(AccountPsw);
			var Question = $(properties).find("Question").text();
				ChangeSelectedObj("Question", Question);
			var Answer = $(properties).find("Answer").text();
				$("#Answer").val(Answer);
			var Email = $(properties).find("Email").text();
				$("#Email").val(Email);
			var UserSex = $(properties).find("UserSex").text();
				if(UserSex == 1)
					$("#Man").attr("checked", "checked");
				else
					$("#Woman").attr("checked", "checked");
			var UserName = $(properties).find("UserName").text();
				$("#UserName").val(UserName);
			var MobilePhone = $(properties).find("MobilePhone").text();
				$("#MobilePhone").val(MobilePhone);
			var UserQQ = $(properties).find("UserQQ").text();
				$("#UserQQ").val(UserQQ);
			var Photo = $(properties).find("Photo").text();

			$('#UsersForm').ajaxForm({
				beforeSubmit: validate,
				iframe: true,
				success: function() {
					alert("恭喜您，您已经成功更新信息！");
					$('#UsersForm').resetForm();
				}
		    });
		    
			$("td[class!='TableTitle']").hover(function() {
				$(this).parent().addClass("TableTDSelect");
			},
			function() {
				$(this).parent().removeClass("TableTDSelect");
			});
	
		},
		error: function(obj, err) {
			alert(b);
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
		$("#RegisterForm").validate({
			rules: {
				AccountName: "required",
				AccountPsw: {
					required: true,
					minLength: 6,
					maxLength: 20
				},
				ReAccountPsw: {
					required: true,
					minLength: 6,
					maxLength: 20,
					equalTo: "#AccountPsw"
				},
				Question: {
					required: true
					
				},
				Answer: "required",
				Email: {
					required: true,
					email: true
				},
				UserName: {
					required: true
				},
				MobilePhone: {
					required: true,
					minLength: 11,
					maxLength: 11,
					digits: true
				},
				Verification: {
					required: true,
					minLength: 4,
					maxLength: 4
				}
			},
			messages: {
				AccountName: "请输入用户名",
				AccountPsw: "请输入密码，密码必须是6-20位的数字与字母组合",
				ReAccountPsw: "确认密码必须跟上面相同",
				Question: "请选择密码查询问题",
				Answer: "请输入密码查询问题的答案",
				Email: "请正确输入您的电子邮件",
				UserName: "请正确输入您的真实姓名，以便发布信息",
				MobilePhone: "请正确输入您的手机号码，以便发布信息",
				Verification: "请输入验证码"
			}
		}).form()
	)) return false;
}