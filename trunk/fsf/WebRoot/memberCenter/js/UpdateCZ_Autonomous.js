/*通过getUpdateEstateByID 取数据至表单元素中*/
$(document).ready(function() {   
    UpdateCZ();	
    UpdateSubmit();
});

function UpdateCZ(){
    var url = window.location.href;
	var id = url.indexOf('=');          //取地址栏中‘＝’号作为词源ID
	var img;
	if (id == -1) return "";
	id = url.substring(id + 1);
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=getUpdateEstateByID&SellorRent=1&RequireSellRent=0&IsConsign=0&EstateMsgID=" + id,
		cache: false,
		success: function(xml){
			    var properties = $(xml).find("Estate")[0];			    			    
			    $("#EstateMsgID").val(id);           //ID为传递过来的ID		    
			   var PropertyName = $(properties).find("PropertyName").text();                   //取物业名称
			   $("#PropertyName").val(PropertyName);		    
				var FBDate = $(properties).find("FBDate").text();				                //发布日期 								
				var TotalArea = $(properties).find("TotalArea").text();                         //期望面积  〉＝
				$("#Area").val(TotalArea);			
				var UsableArea = $(properties).find("UsableArea").text();                     	//最大面积 〈＝
				$("#UseArea").val(UsableArea);				 
			
			   	//以下代码取户型相应信息	 
				var Room = $(properties).find("Room").text();                                   //室
				$("#Room").val(Room);
				var Hall = $(properties).find("Hall").text();                                   //厅
				$("#Hall").val(Hall);
				var Toilet = $(properties).find("Toilet").text();                               //卫
				$("#Toilet").val(Toilet);
				var Balcony = $(properties).find("Balcony").text();                             //阳台
				$("#Balcony").val(Balcony);			
				
				var Address = $(properties).find("Address").text();
				$("#Address").val(Address);
				
				var FloorNum = $(properties).find("FloorNum").text();                     //期望楼层  〉＝   
			  	$("#FloorNum").val(FloorNum);
		    	var FloorIs = $(properties).find("FloorIs").text();                         //期望楼层  〈＝   
				$("#FloorIs").val(FloorIs); 
				
				var DocumentNumber = $(properties).find("DocumentNumber").text();           //证件号码
	        	$("#DocumentNumber").val(DocumentNumber); 
				
				var ManagementFees = $(properties).find("ManagementFees").text();          //物业管理费(也用作表示 期望价格 〉＝)
	        	$("#ManagementFees").val(ManagementFees); 				
				var Cost=$(properties).find("Cost").text();                               //最大价格 〈＝
				$("#Cost").val(Cost); 
				
				
				 //取城市相关信息（当中包括：城市名称、地区名称、镇）
				 								var ProvinceID = $(properties).find("ProvinceID").text();                               
				var ProvinceName = $(properties).find("ProvinceName").text();                          //省份名称
				$("#ProvinceID").append("<option selected value = '" + ProvinceID + "'>" + ProvinceName + "</option>");	
				var CityID = $(properties).find("CityID").text();                               
				var CityName = $(properties).find("CityName").text();                          //城市名称
				$("#CityID").append("<option selected value = '" + CityID + "'>" + CityName + "</option>")	
							
				var DistrictID = $(properties).find("DistrictID").text();                         //地区名称
				var DistrictName = $(properties).find("DistrictName").text();
				$("#DistrictID").append("<option selected value = '" + DistrictID + "'>" + DistrictName + "</option>")
				 
				var TownID = $(properties).find("TownID").text();                                 //镇名称
				var TownName = $(properties).find("TownName").text();
				$("#TownID").append("<option selected value = '" + TownID + "'>" + TownName + "</option>")
				 
				var PropertyID = $(properties).find("PropertyID").text();
				var PropertyTypeName = $(properties).find("PropertyTypeName").text();
				$("#PropertyID").append("<option selected value = '" + PropertyID + "'>" + PropertyTypeName + "</option>")
				
				
				var DocumentID = $(properties).find("DocumentID").text();                //
				var DocumentTypeName = $(properties).find("DocumentTypeName").text();
				$("#DocumentTypeID").append("<option selected value = '" + DocumentID + "'>" + DocumentTypeName + "</option>");
			
				var PayWayID = $(properties).find("PayWayID").text();                                //付款方式
				var PayWayTypeName = $(properties).find("PayWayTypeName").text(); 
				$("#PayWayID").append("<option selected value = '" + PayWayID + "'>" + PayWayTypeName + "</option>")
				
				var RenovationStandardID = $(properties).find("RenovationStandardID").text();          //装修程度
				var RenovationStandardName = $(properties).find("RenovationStandardName").text();
				$("#RenovationStandardID").append("<option selected value = '" + RenovationStandardID + "'>" + RenovationStandardName + "</option>");
				
				var OrientationID = $(properties).find("OrientationID").text();                         //朝向
				var OrientationName = $(properties).find("OrientationName").text();
				$("#Orientation").append("<option selected value = '" + OrientationID + "'>" + OrientationName + "</option>");
				
				var DoneTime = $(properties).find("DoneTime").text();
				$("#DoneYear").val(DoneTime);
				
				
				var NearSchool = $(properties).find("NearSchool").text();                             //附近学校
				$("#NearSchool").val(NearSchool);
				
				var TrafficMes = $(properties).find("TrafficMes").text();                              //交通线路
				$("#Traffic").val(TrafficMes);
				
				var NearEnvironment = $(properties).find("NearEnvironment").text();                     //周边环境
				$("#NearEnvironment").val(NearEnvironment);

				
				//以下代码表示基本设备 ，并使用jQuery 来控制其属性： 1：选中状态； 0：未选中状态                  
				var Colder=$(properties).find("Colder").text();
			    var Shower=$(properties).find("Shower").text();
				var Television=$(properties).find("Television").text();
			    var Fridge=$(properties).find("Fridge").text();
				var Washer=$(properties).find("Washer").text();
				var Furnishing=$(properties).find("Furnishing").text();
			    var Bed=$(properties).find("Bed").text();
				var Cabinet=$(properties).find("Cabinet").text();
				var DressingRoom=$(properties).find("DressingRoom").text();
				var Sofa=$(properties).find("Sofa").text();
			    var GasCooker=$(properties).find("GasCooker").text();			     
			    if(Colder == 1) $("#Colder").attr("checked", true);
			    if(Shower == 1) $("#Shower").attr("checked", true);
			    if(Television == 1) $("#Television").attr("checked", true);
			    if(Fridge == 1) $("#Fridge").attr("checked", true);
				if(Washer == 1) $("#Washer").attr("checked", true);
			    
			    if(Bed == 1) $("#Bed").attr("checked", true);
			    if(Cabinet == 1) $("#Cabinet").attr("checked", true);
			    if(DressingRoom == 1) $("#DressingRoom").attr("checked", true);
				if(Sofa == 1) $("#Sofa").attr("checked", true);
			    if(GasCooker == 1) $("#GasCooker").attr("checked", true);
			    
				var Water=$(properties).find("Water").text();
			    var Electricity=$(properties).find("Electricity").text();
				var Gas=$(properties).find("Gas").text();
				var TVLine=$(properties).find("TVLine").text();
			    var TelephoneLine=$(properties).find("TelephoneLine").text();
				var ADSL=$(properties).find("ADSL").text();
				var Heating=$(properties).find("Heating").text();
				var DrinkingWater=$(properties).find("DrinkingWater").text();
				var BurglarMesh=$(properties).find("BurglarMesh").text();
				var SecurityDoor=$(properties).find("SecurityDoor").text();
				var Lift=$(properties).find("Lift").text();
				var Garage=$(properties).find("Garage").text();
			 
				 
			    if(Gas == 1) $("#Gas").attr("checked", true);
			    if(TVLine == 1) $("#TVLine").attr("checked", true);
				if(TelephoneLine == 1) $("#TelephoneLine").attr("checked", true);
			    if(ADSL == 1) $("#Adsl").attr("checked", true);
			    if(Heating == 1) $("#Heating").attr("checked", true);
			    if(DrinkingWater == 1) $("#DrinkingWater").attr("checked", true);
			    if(BurglarMesh== 1) $("#BurglarMesh").attr("checked", true);
				if(SecurityDoor == 1) $("#SecurityDoor").attr("checked", true);
			    if(Lift == 1) $("#Lift").attr("checked", true);
				if(Garage == 1) $("#Garage").attr("checked", true);
				
				
				var HouseChart=$(properties).find("HouseChart").text();        //户型图
				var Photo1=$(properties).find("Photo1").text();
				var Photo2=$(properties).find("Photo2").text();
				var Photo3=$(properties).find("Photo3").text();
				var Photo4=$(properties).find("Photo4").text();
				var Photo5=$(properties).find("Photo5").text();
				
				$("#photo1").empty();								
				$("#photo1").append(HouseChart+'&nbsp;');
				
				if($("#photo1").html()!='null &nbsp;'){				 
		           $("#HouseChart").append("<option selected value = '" + HouseChart + "'>" + HouseChart + ".jpg</option>");
		        }
		        
		        $("#photo1").empty();								
				$("#photo1").append(Photo1+'&nbsp;');		        
		        	 
				if($("#photo1").html()!='null &nbsp;'){	
		           $("#Photo").append("<option selected value = '" + Photo1 + "'>" + Photo1 + ".jpg</option>");
		        }
			   
			    $("#photo1").empty();								
				$("#photo1").append(Photo2+'&nbsp;');	
					
			    if($("#photo1").html()!='null &nbsp;'){	
		           $("#Photo").append("<option selected value = '" + Photo2 + "'>" + Photo2 + ".jpg</option>");
		        }
		        
		        $("#photo1").empty();								
				$("#photo1").append(Photo3+'&nbsp;');	
					
			    if($("#photo1").html()!='null &nbsp;'){	
		           $("#Photo").append("<option selected value = '" + Photo3 + "'>" + Photo3 + ".jpg</option>");
		        }
		        
		        
		        $("#photo1").empty();								
				$("#photo1").append(Photo4+'&nbsp;');	
		        if($("#photo1").html()!='null &nbsp;'){	
		           $("#Photo").append("<option selected value = '" + Photo4 + "'>" + Photo4 + ".jpg</option>");
		        }
		        
		         $("#photo1").empty();								
				$("#photo1").append(Photo5+'&nbsp;');	
		        if($("#photo1").html()!='null &nbsp;'){	
		           $("#Photo").append("<option selected value = '" + Photo5 + "'>" + Photo5 + ".jpg</option>");
		        }
		       
		        
		        var Introduction = $(properties).find("Introduction").text();                     //其他信息，如备注，个人说明 
                $("#Introduction").val(Introduction);
		    
		        var Contacter = $(properties).find("Contacter").text();                          //联系人
				$("#Contacter").val(Contacter); 				 
				
				var HomePhone = $(properties).find("HomePhone").text();                          //固定电话
				$("#HomePhone").val(HomePhone); 	
				
				var MobilePhone = $(properties).find("MobilePhone").text();                       //手机号码
				$("#MobilePhone").val(MobilePhone); 	
										
				var QQ = $(properties).find("QQ").text();
		        $("#photo1").empty();								
				$("#photo1").append(QQ+'&nbsp;');
				if($("#photo1").html()!='null &nbsp;'){	
		           $("#QQ").val(QQ);
		        }			
				
				var BuildingTypeID=$(properties).find("BuildingTypeID").text();				 //建筑类别类型
				$("#BuildingTypeID").val(BuildingTypeID);				 
				
				var Developer=$(properties).find("Developer").text();                        //开发商
				$("#photo1").empty();								
				$("#photo1").append(Developer+'&nbsp;');
				 if($("#photo1").html()!='null &nbsp;'){	
		           $("#Developer").val(Developer);
		        }
			
				var EstateTypeID=$(properties).find("EstateID").text();                      //产权性质类型
				$("#EstateTypeID").val(EstateTypeID);
				
				var EstateBelongID=$(properties).find("EstateBelongID").text();              //产权归属类型
				$("#EstateBelongID").val(EstateBelongID);
				
				var Rent=$(properties).find("Rent").text();                                  //是否出租
				$("#Rent").val(Rent);				 
				
				var RentTimeID=$(properties).find("RentTimeID").text();                       //最短租期类型
				$("#RentTimeID").val(RentTimeID);			
				


				var DepositID = $(properties).find("DepositID").text();          //装修程度
				var DepositName = $(properties).find("DepositName").text();
				$("#DepositID").append("<option selected value = '" + DepositID + "'>" + DepositName + "</option>");
				
				var VisitTime=$(properties).find("VisitTime").text();                        //看房时间
				$("#photo1").empty();								
				$("#photo1").append(VisitTime+'&nbsp;');
				if($("#photo1").html()!='null &nbsp;'){	
		           $("#VisitTime").val(VisitTime);
		        }
		        				
				var LiveTime=$(properties).find("LiveTime").text();			
					$("#liveTime").val(LiveTime); 
				//alert(LiveTime);
				
				var GarageMes = $(properties).find("GarageMes").text();			
				
				var MSN = $(properties).find("MSN").text();				 		 
				
				var Email = $(properties).find("Email").text();								 
				
				var EstateTypeDiff =$(properties).find("EstateTypeDiff").text();        //物业性质不同
				 
				
		       	var OverdueDate =$(properties).find("OverdueDate").text();               //信息有限期 : 天
		       		$("#DueDate").val(OverdueDate);		                              
				
		//	var Years =$(properties).find("Years").text();
		//		$("#Years").val(Years);	
		}
	});	 
}

function UpdateSubmit(){
  $('#CZForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/		 
		success: function() {
			alert("恭喜您，您已经成功更新一条信息！");			 
			$.ajax({
		       url: "/Fang3FangWeb/Access",
		       type: "POST",
		       dataType: "xml",
		       data: "useraction=DeleteImage&referaction=DoneRegEstate",
		       success: function(xml){
		         $("#Photo").empty();
		         $("#HouseChart").empty();
		       }
	        });	
	        window.location = "ListAutonomousCZ.jsp";
		},
		error: function() {
			alert("更新房源失败,请检查相关必填项目");	 
		}
    });
}

function validate() {
	$("#PropertyName").val(CheckInputValue($("#PropertyName").val()));
	$("#Address").val(CheckInputValue($("#Address").val()));
	$("#Contacter").val(CheckInputValue($("#Contacter").val()));
	$("#NearSchool").val(CheckInputValue($("#NearSchool").val()));
    $("#Traffic").val(CheckInputValue($("#Traffic").val()));
	$("#NearEnvironment").val(CheckInputValue($("#NearEnvironment").val()));
	$("#Introduction").val(CheckInputValue($("#Introduction").val()));
/*
	如果验证失败，就返回false.
	jQuery Validate Plugin提供一个form()方法,改变Validate插件的处理方式.
	即验证成功就返回true,否则就返回false
*/
	if (!(
		$("#CZForm").validate({
			rules: {
				ProvinceID:"required",
				PropertyName: "required",
				CityID: "required",
				DistrictID: "required",
				TownID: "required",
				Area: {
					required: true,
					number: true
				},				 
				PropertyID: "required",
				Room: {
					required: true,
					digits: true,
					maxValue: 99
				},
				Hall: {
					required: true,
					digits: true,
					maxValue: 99
				},
				Toilet: {
					required: true,
					digits: true,
					maxValue: 99
				},
				Balcony: {
					required: true,
					digits: true,
					maxValue: 99
				},
				Address: {
					required: true
				},
				FloorNum: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 30
				},
				FloorIs: {
					required: true,
					digits: true,
					minValue: 0,
					maxValue: 30
				},
				DocumentTypeID: "required",
				DocumentNumber: {
					required: true
				},
				ManagementFees: {
					required: true,
					number: true					 
				},
				Cost: {
					required: true,
					number: true
				},
				PayWayID:"required",
				RenovationStandardID:"required",
				Orientation:"required",
				Contacter: "required",				 
				MobilePhone: {
					required: true,
					digits: true,
					minLength: 11,
					maxLength: 11
				},
				HomePhone: {
					digits: true
				},
				QQ: {
					digits: true
				}
			},
			messages: {
												ProvinceID:"请选择省份",
				PropertyName: "请输入具体的物业名称",
				CityID: "请选择",
				DistrictID: "请选择",
				TownID: "请选择",
				Area: {
					required: "请正确输入面积",
					number: "必须是数字"					 	
				},
				PropertyID: "请选择",
				Room: {
					required: "输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Hall: {
					required: "输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Toilet: {
					required: "输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Balcony: {
					required: "输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Address: "请输入楼盘的具体地址",
				FloorNum: {
					required: "请输入总",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				FloorIs: {
					required: "请输入所在楼",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				DocumentTypeID: "请选择",
				DocumentNumber: "请输入证件号码",
				ManagementFees: {
					required: "最少填0",
					number: "必须是数字"
				},
				Cost: {
					required: "请输入楼盘售价",
					number: "必须是数字"
				},
				PayWayID:"请选择付费方式",
				RenovationStandardID:"请选择装修标准",
				Orientation:"请选择朝向",
				Contacter: "请正确输入您的真实姓名",				 
				MobilePhone: {
					required: "请输入手机号码",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				},
				HomePhone: {
					digits: "必须是数字"
				},
				QQ: {
				    digits: "请输入QQ号，必须是数字"
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

