/*通过getUpdateEstateByID 取数据至表单元素中*/

$(document).ready(function() {   
    getAJInfoByID();																																
});
function getAJInfoByID(){
    var url = window.location.href;
	var id = url.indexOf('=');         
	var img;
	if (id == -1) return "";
	id = url.substring(id + 1);
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=getUpdateAJInfoByID&ajID=" + id,
		cache: false,
		success: function(xml){
			    var properties = $(xml).find("AJInfo")[0];			
			    $("#AJID").val(id);     
			    var Contacter = $(properties).find("Contacter").text();           																	
				$("#Contacter").val(Contacter);     																																								 //输出真实姓名	    	
				
				var DocumentID = $(properties).find("DocumentID").text();                              
				var DocumentTypeName = $(properties).find("DocumentTypeName").text();
				$("#DocumentTypeID").append("<option selected value = '" + DocumentID + "'>" + DocumentTypeName + "</option>");   						      //证件类型	
				
				var DocumentNumber = $(properties).find("DocumentNumber").text();																						//证件号码
				$("#DocumentNumber").val(DocumentNumber); 
				
				var WorkPlace=$(properties).find("WorkPlace").text();																												//工作单位 
				$("#WorkPlace").val(WorkPlace);	 	
				
				var MobilePhone=$(properties).find("MobilePhone").text();																									   //手机号码
				$("#MobilePhone").val(MobilePhone);
				
				var HomePhone=$(properties).find("HomePhone").text();																										  //固定电话 
				$("#HomePhone").val(HomePhone);		   
				
				var LoanMoney=$(properties).find("LoanMoney").text();																									     //贷款金额
				$("#LoanMoney").val(LoanMoney);		
				
				var LoanDueDate=$(properties).find("LoanDueDate").text();																									//贷款期限
				$("#LoanDueDate").val(LoanDueDate);		
				
				var RePayWayID = $(properties).find("RePayWayID").text();																									//还款方式 
				var RepayTypeName = $(properties).find("RepayTypeName").text(); 
				$("#RePayWayID").append("<option selected value = '" + RePayWayID + "'>" + RepayTypeName + "</option>");
				
				var LoanToUseTypeID = $(properties).find("LoanToUseTypeID").text();																					//贷款用途
				var LoanToUseTypeName = $(properties).find("LoanToUseTypeName").text(); 
				$("#LoanToUse").append("<option selected value = '" + LoanToUseTypeID + "'>" + LoanToUseTypeName + "</option>");
				
				var CityID = $(properties).find("CityID").text();																														//城市
				var CityName = $(properties).find("CityName").text();
				$("#CityID").append("<option selected value = '" + CityID + "'>" + CityName + "</option>");
				
				var DistrictID = $(properties).find("DistrictID").text();																												//城区
				var DistrictName = $(properties).find("DistrictName").text();
				$("#DistrictID").append("<option selected value = '" + DistrictID + "'>" + DistrictName + "</option>");
				 
				var TownID = $(properties).find("TownID").text();																													//镇
				var TownName = $(properties).find("TownName").text();
				$("#TownID").append("<option selected value = '" + TownID + "'>" + TownName + "</option>");
				
				var EstateID = $(properties).find("EstateID").text();																											//产权性质
				var EstateTypeName = $(properties).find("EstateTypeName").text();
				$("#EstateType_EstateID").append("<option selected value = '" + EstateID + "'>" + EstateTypeName + "</option>");
				
				var PropertyName = $(properties).find("PropertyName").text();																							//楼盘/小区名称		 
				$("#PropertyName").val(PropertyName);
				
				var Address = $(properties).find("Address").text();																											//抵押物所在地址
				$("#Address").val(Address);
				
				var EstateCost = $(properties).find("EstateCost").text();																										//抵押物购置时价格
				$("#EstateCost").val(EstateCost);
				
				var DocumentCost = $(properties).find("DocumentCost").text();																							//产房证登记价格
				$("#DocumentCost").val(DocumentCost);
				
				var DoneTime = $(properties).find("DoneTime").text();																										//竣工时间 
				$("#DoneYear").val(DoneTime);
				
				var Area = $(properties).find("Area").text();																										//竣工时间 
				$("#Area").val(Area);
				
				var UserSex = $(properties).find("UserSex").text();   
		
				var $radios = $('input:radio[name=userSex]');
		
					if(UserSex == 1) {
			        $radios.filter('[value=1]').attr('checked', true);
			    }else if(UserSex == 0) {
			        $radios.filter('[value=0]').attr('checked', true);
			    }
			    
			   
			    var isMarried = $(properties).find("IsMarried").text();
			    var $radiosM = $('input:radio[name=isMarried]');
					if(isMarried == 1) {
			        $radiosM.filter('[value=1]').attr('checked', true);
			    }else if(isMarried == 0) {
			        $radiosM.filter('[value=0]').attr('checked', true);
			    }
			    
					
	}
	});	 
}

$(document).ready(function() {
	//alert("现在是测试阶段helloworld");
	$('#AJForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/		 
		success: function() {
			alert("恭喜您，你已经成功更改按揭贷款相关信息。");			 
	        window.location = "ListAJLoan.jsp";
		},
		error: function() {
			alert("更改按揭贷款操作失败，请检查相关必填项目。");	 
		}
    });     
});

function validate() {
	$("#DocumentNumber").val(CheckInputValue($("#DocumentNumber").val()));
	$("#Contacter").val(CheckInputValue($("#Contacter").val()));        //对某些表单进行过滤
	$("#WorkPlace").val(CheckInputValue($("#WorkPlace").val()));
	$("#PropertyName").val(CheckInputValue($("#PropertyName").val()));
	$("#Address").val(CheckInputValue($("#Address").val()));
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#AJForm").validate({
			rules: {
				DocumentNumber: {                                       //证件号码                                                                 
					required: true
				},
				LoanMoney:{                                             //贷款金额
					required:true
				},
				MobilePhone: {                                           //手机号码                                                
					required: true,
					digits: true,
					minLength: 11,
					maxLength: 11
				},
				HomePhone: {                                             //固定电话 
					required:true,
					digits: true
				},
				LoanDueDate:{
					required:true,
					digits:true
				},
				CityID: "required",                                     //城市
				RePayWayID:"required",                                    //付款方式
				EstateCost:{                                            //购置价格       
					required:true,
					//digits:true
				},
				DocumentCost:{
					required:true,
					digits:true
				},
				Address: "required",
				DoneYear: {                                             //竣工时间（年）
					minLength: 6,
					maxLength: 6,
				},
				LoanToUse:"required",
				EstateType_EstateID:"required",                         //房产性质类型
				DistrictID: "required",                                 //区县
				TownID: "required",                                     //商圈
				PropertyName:"required",                                //楼盘/小区名称
				Contacter: "required",                                 //真实姓名
				DocumentTypeID: "required",                       //证件类型
				WorkPlace:"required"
				/*





				DocumentTypeID: "required",                             //证件类型

				LoanToUse:"required",                                   //借款用途
				Area: {                                                 //建筑面积
					required: true,
					digits: true
				},



				LoanDueDate:{                                           //贷款期限
					required:true,
					digits:true,
					minValue:0,
					maxValue:30
				},

				DocumentCost:{                                          //产房证登记价格
					requiredL:true,
					digits:true
				},





*/
			},
			messages: {
				LoanToUse:"请选择借款用途",
				EstateType_EstateID:"请选择房产性质类型",                         //房产性质类型
				RePayWayID:"请选择付费方式",
				Contacter: "请输入您的真实姓名",
				DocumentNumber: "请输入证件号码",
				DocumentTypeID: "请选择",
				WorkPlace:"请选择工作地点",
				HomePhone: {
					required:"请输入固定电话",
					digits: "必须是数字"
				},
				LoanMoney:{                                             //贷款金额
					required:"请输入贷款金额",
					//digits:"必须是数字"
				},

				LoanDueDate:{
					required:"请输入年限",
					digits:"必须是数字"
				},
				EstateCost:{                                            //购置价格       
					required:"请输入购置价格",
					//digits:"必须是数字"
				},
				DistrictID: "请选择",
				TownID: "请选择",
				DoneYear: {
					minLength: "请正确输入竣工年份",
					maxLength: "请正确输入竣工年份",
				},
				DocumentCost:{
					required:"请输入产房证登记价格",
					digits:"必须是数字"
				},
				Address: "请输入你的家庭详细地址",
				CityID:"请选择城市",
				PropertyName:"请输入楼盘/小区名称",                                //楼盘/小区名称
				MobilePhone: {
					required: "请输入手机号码",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				}
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



