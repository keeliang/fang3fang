$(document).ready(function() { 
	$("#login").click(f_login);
});
function f_login(){
	var o = document.getElementById("loading");
	o.style.display = "block";
	var param = {
		dataType:'json',
		success:function(msg){
			o.style.display = "none";
			if(msg.message=="1"){
				window.location.href = contextPath+"/memberCenter/index.action";
			}else if(msg.message=="2"){
				alert("用户不存在");
			}else if(msg.message=="3"){
				alert("验证码错误");
			}else if(msg.message=="4"){
				alert("无效用户");
			}
		}
	}
	$("#formItem").ajaxSubmit(param);
}