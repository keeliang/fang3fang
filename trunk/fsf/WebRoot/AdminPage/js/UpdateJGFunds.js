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
				
				var SellerDocumentTypeID = $(properties).find("SellerDocumentTypeID").text();           																					   	//卖房人证件类型															
				$("#SellerDocumentTypeID").val(SellerDocumentTypeID);     

			    var SellerDocumentNumber = $(properties).find("SellerDocumentNumber").text();           																				 	//证件号码															
				$("#SellerDocumentNumber").val(SellerDocumentTypeID);     
				
				var BuyerName = $(properties).find("BuyerName").text();           																														//买房人姓名												
				$("#BuyerName").val(BuyerName);  
				
				var BuyerDocumentTypeID = $(properties).find("BuyerDocumentTypeID").text();        																							//买房人证件类型
				$("#BuyerDocumentTypeID").val(BuyerDocumentTypeID);  
				
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
				
				
				
				
				
				/*
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
				*/
		}
	});	 
}




