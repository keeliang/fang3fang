// JavaScript Document
$.meta.setType("attr", "validate");

$(document).ready(function() { 
/*
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=estate&referaction=AddExpertUser",
		success: function(xml){
		
			var FileName = xml.getElementsByTagName("FileName");
			var imageID = $.trim(FileName[0].getElementsByTagName("imageID")[0].firstChild.nodeValue);	    			  	
			var filename = $.trim(FileName[0].getElementsByTagName("filename0")[0].firstChild.nodeValue);			
			if (filename!='null'){
		       $("#Photo").append("<option selected value = '" + imageID + "'>" + filename + "</option>");
		       
		       
		       
		       
		       
		       
		    }			 
		}
	});
	*/
		 
	$('#ExpertsRegisterForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		success: function() {
			alert("恭喜您，您已经注册成功！");
			window.location = "../memberCenter/index.jsp";
		},
		error: function() {
			alert("注册失败,请检查相关必填项目");	 
		}
    });	
    $('#selectfile').click(function() {
          window.location = "upload.jsp";
    });	    	 
});
function validate() {
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#UserRegisterForm").validate({
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
				company: {
					required: true					 
				},
				area: {
					required: true					 
				},
				Verification: {
					required: true,
					minLength: 4,
					maxLength: 4
				},
				Protocol:{
					required:true
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
				company: "请输入您的公司名称",
				area: "请输入您负责的区域",
				Verification: "请输入验证码",
				Protocol:"必须同意协议才可以注册"
			}
		}).form()
	)) return false;
}