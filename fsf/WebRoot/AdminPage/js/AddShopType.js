$.meta.setType("attr", "validate");
$(document).ready(function() {
    //alert("dsjkfksld");
	$('#AddShopTypeForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/		

 
		success: function() {
			alert("恭喜您，你已经成功添加旺铺类型信息。");	

		 
	        window.location = "AdminPage_ShopType.jsp";
		},
		error: function() {
			alert("添加旺铺类型失败，请检查相关必填项目。");	 
		}
    });     
});

function validate() {
	$("#StoreTypeName").val(CheckInputValue($("#StoreTypeName").val

()));       //对某些表单进行过滤
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理

方式.
	即验证成功就返回true,否则就返回false
*/
	if (!($("#AddShopTypeForm").validate({
			rules: {
				StoreTypeName: "required"
				},
			messages: {
				StoreTypeName:"请输入资讯类型"           

             
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
