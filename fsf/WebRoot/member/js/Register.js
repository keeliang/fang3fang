$(document).ready(function() { 
	$("#btnRegister").click(f_register);
});
function f_register(){
	if(!f_validate()){
		return ;
	}
	if(document.getElementById("confirmPassword").value!=document.getElementById("password").value){
		alert("确认密码和密码不一致");
		return;
	}
	var o = document.getElementById("loading");
	o.style.display = "block";
	var param = {
		dataType:'json',
		success:function(msg){
			o.style.display = "none";
			if(msg.message=="1"){
				alert("注册成功");
			}else if(msg.message=="2"){
				alert("验证码错误");
			}else if(msg.message=="3"){
				alert("["+document.getElementById("userCode").value+"]已存在，请重新输入新帐号");
				document.getElementById("userCode").value = "";
			}
		}
	}
	$("#formItem").ajaxSubmit(param);
}