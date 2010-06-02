$(document).ready(function() { 
	$("#btnRegister").click(f_register);
});
function f_register(){
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
			}
		}
	}
	$("#formItem").ajaxSubmit(param);
}