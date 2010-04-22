/*通过getUpdateNewsByID 取数据至表单元素中*/
$(document).ready(function() {  
alert("dsfsfds"); 
    getNewsByID();																																
});
function getNewsByID(){
    var url = window.location.href;
	var id = url.indexOf('=');         
	var img;
	if (id == -1) return "";
	id = url.substring(id + 1);
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=getUpdateNewsByID&InfoID=" + id,
		cache: false,
		success: function(xml){
			    var properties = $(xml).find("News")[0];			
			    $("#InfoID").val(id);        																																								  	
				
				var InfoTypeID = $(properties).find("InfoTypeID").text();                              
				var InfoTypeName = $(properties).find("InfoTypeName").text();
				$("#InfoTypeID").append("<option selected value = '" + InfoTypeID + "'>" + InfoTypeName + "</option>");   
				
				var InfoTitle = $(properties).find("InfoTitle").text();           																																								
				$("#InfoTitle").val(InfoTitle);  
				
				var InfoContent = $(properties).find("InfoContent").text();        																							
				$("#InfoContent").val(InfoContent);  
				
		}
	});	 
}
$(document).ready(function() {
	$('#updateNewsForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/		 
		success: function() {
			alert("恭喜您，你已经成功更新资讯信息。");			 
	        window.location = "AdminPage_News.jsp";
		},
		error: function() {
			alert("更新新闻失败，请检查相关必填项目。");	 
		}
    });     
});

function validate() {
	$("#InfoTitle").val(CheckInputValue($("#InfoTitle").val()));
	$("#InfoContent").val(CheckInputValue($("#InfoContent").val()));        //对某些表单进行过滤
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!($("#updateNewsForm").validate({
			rules: {
				InfoTypeID: "required", 
				InfoTitle: "required",                                                                                               
				InfoContent:"required"
				},
			messages: {
				InfoTypeID:"请选择资讯类型",                         
				InfoTitle: "请输入标题",
				InfoContent: "请输入内容"
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




