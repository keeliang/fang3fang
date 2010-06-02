/*通过getUpdateEstateByID 取数据至表单元素中*/
$(document).ready(function() {   
    getJGInfoByID();																																
});
function getJGInfoByID(){
    var url = window.location.href;
	var id = url.indexOf('=');         
	var img;
	if (id == -1) return "";
	id = url.substring(id + 1);
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=getJGInfoByID&jgID=" + id,
		cache: false,
		success: function(xml){
			    var properties = $(xml).find("JGInfo")[0];			
			    $("#JGID").val(id);     
			    var SellerName = $(properties).find("SellerName").text();           																	
				$("#SellerName").val(SellerName);     																																								 //卖房人真实姓名	    	
				
				var SellerDocumentTypeID = $(properties).find("SellerDocumentTypeID").text();                              																	//卖房人证件类型
				var SellerDocumentTypeName = $(properties).find("SellerDocumentTypeName").text();
				$("#SellerDocumentTypeID").append("<option selected value = '" + SellerDocumentTypeID + "'>" + SellerDocumentTypeName + "</option>");   						     
				
			    var SellerDocumentNumber = $(properties).find("SellerDocumentNumber").text();           																				 	//证件号码															
				$("#SellerDocumentNumber").val(SellerDocumentNumber);     
				
				var BuyerName = $(properties).find("BuyerName").text();           																														//买房人姓名												
				$("#BuyerName").val(BuyerName);  
								
				var BuyerDocumentTypeID = $(properties).find("BuyerDocumentTypeID").text();                              																	//买房人证件类型
				var BuyerDocumentTypeName = $(properties).find("BuyerDocumentTypeName").text();
				$("#BuyerDocumentTypeID").append("<option selected value = '" + BuyerDocumentTypeID + "'>" + BuyerDocumentTypeName + "</option>");   			
				
				var BuyerDocumentNumber = $(properties).find("BuyerDocumentNumber").text();           																				 	//证件号码															
				$("#BuyerDocumentNumber").val(BuyerDocumentNumber);    
				
				var Address = $(properties).find("Address").text();																																			//交易楼宇地址
				$("#Address").val(Address);
				
				var DocumentNumber = $(properties).find("DocumentNumber").text();																												//交易楼宇地址
				$("#DocumentNumber").val(DocumentNumber);
				
				var Cost = $(properties).find("Cost").text();																																		            	//资金监管金额
				$("#Cost").val(Cost);
				
				var MobilePhone=$(properties).find("MobilePhone").text();																									  							 //手机号码
				$("#MobilePhone").val(MobilePhone);
				
				var Other=$(properties).find("Other").text();																									 													  //其它要求
				$("#Other").val(Other);

		}
	});	 
}

$(document).ready(function() {
	//alert("现在是测试阶段helloworld");
	$('#JGForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/		 
		success: function() {
			alert("恭喜您，更改二手房交易资金监管成功！");			 
	        window.location = "ListJGFunds.jsp";
		},
		error: function() {
			alert("更改二手房交易资金监管失败，请检查相关选项！！");	 
		}
    });     
});

function validate() {

	$("#SellerName").val(CheckInputValue($("#SellerName").val()));
	$("#SellerDocumentNumber").val(CheckInputValue($("#SellerDocumentNumber").val()));	
	$("#BuyerName").val(CheckInputValue($("#BuyerName").val()));	
	$("#BuyerDocumentNumber").val(CheckInputValue($("#BuyerDocumentNumber").val()));	
	$("#Address").val(CheckInputValue($("#Address").val()));
	$("#DocumentNumber").val(CheckInputValue($("#DocumentNumber").val()));	
	$("#Other").val(CheckInputValue($("#Other").val()));
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#JGForm").validate({
			rules: {
				SellerName:"required",
				SellerDocumentTypeID:"required",
				SellerDocumentNumber:"required",
				BuyerName:"required",
				BuyerDocumentTypeID:"required",
				BuyerDocumentNumber:"required",
				Address:"required",
				DocumentNumber:"required",
				MobilePhone: {                                           //手机号码                                                
					required: true,
					digits: true,
					minLength:5,
					maxLength:15
				},
				Other:"required"
			},
			messages: {
				SellerName:"请输入卖房人姓名",
				SellerDocumentTypeID:"请选择证件类型",
				SellerDocumentNumber:"请输入证件号码",
				BuyerName:"请输入买房人姓名",
				BuyerDocumentTypeID:"请选择证件类型",
				BuyerDocumentNumber:"请输入证件号码",
				Address:"请输入楼宇地址",
				DocumentNumber:"请输入证件号码",
				MobilePhone: {
					required: "请输入电话号码",
					digits: "电话号码不多于15位的数字组合",
					minLength: "电话号码不多于15位的数字组合",
					maxLength: "电话号码不多于15位的数字组合"
				},
				Other:"请输入其它要求"
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



