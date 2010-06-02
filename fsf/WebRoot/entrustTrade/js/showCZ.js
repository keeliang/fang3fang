$(document).ready(function() {   
    ShowDetailCZ();	 
	LeaveWord(); 
});

function ShowDetailCZ(){
    var url = window.location.href;
	var id = url.indexOf('=');
	var img;
	if (id == -1) return "";
	id = url.substring(id + 1);
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectEstateByID&SellorRent=1&RequireSellRent=0&IsConsign=1&EstateMsgID=" + id,
		cache: false,
		success: function(xml){
			    var properties = $(xml).find("Estate")[0];			    
			    
			    var EstateMsgID=$(properties).find("EstateMsgID").text();
				var PropertyName = $(properties).find("PropertyName").text();
				var FBDate = $(properties).find("FBDate").text();				 
				
				$("#TypeInfo").empty();
				$("#TypeInfo").append('出租信息');
				
				$("#PropertyInfo").empty();
				$("#PropertyInfo").append(PropertyName);
				
				$("#EstateInfo").empty();
				$("#EstateInfo").append('<span class="float_right">发布日期：'+FBDate+'</span><span class="cOrange font14"><b>'+PropertyName+'基本信息</b></span> <img src="images/freeTrade_down.jpg" width="13" height="13" align="absmiddle" />');
				
				$("#PropertyName").empty();
				$("#PropertyName").append('<span class="cOrange">'+PropertyName+'</span>');
				
				var EstateMsgID = $(properties).find("EstateMsgID").text();
				$("#EstateMsgID").empty();
				$("#EstateMsgID").append('<span id="estateid" class="cOrange">'+EstateMsgID+'</span>');
				
				var CityName = $(properties).find("CityName").text();
				$("#CityName").empty();
				$("#CityName").append(CityName);
				
				var DistrictName = $(properties).find("DistrictName").text();
				$("#DistrictName").empty();
				$("#DistrictName").append(DistrictName);
				
				var TownName = $(properties).find("TownName").text();
				$("#TownName").empty();
				$("#TownName").append(TownName);
				
				var PropertyTypeName = $(properties).find("PropertyTypeName").text();
				$("#PropertyTypeName").empty();
				$("#PropertyTypeName").append(PropertyTypeName);
				
				var Address = $(properties).find("Address").text();
				$("#Address").empty();
				$("#Address").append(Address);
				
				var DoneTime = $(properties).find("DoneTime").text();
				$("#DoneTime").empty();
				$("#DoneTime").append(DoneTime+'&nbsp;');
				if($("#DoneTime").html()=='null &nbsp;'){
				   $("#DoneTime").empty();			   
				   $("#DoneTime").append('&nbsp;');
				}
				
				
				var BuildingTypeName=$(properties).find("BuildingTypeName").text();
				$("#BuildingTypeName").empty();
				$("#BuildingTypeName").append(BuildingTypeName);				
				
				var Room = $(properties).find("Room").text();
				var Hall = $(properties).find("Hall").text();
				var Toilet = $(properties).find("Toilet").text();
				var Balcony = $(properties).find("Balcony").text();
				$("#HouseType").empty();
				$("#HouseType").append(Room+'室'+Hall+'厅'+Toilet+'卫'+Balcony+'阳台');
				
				var OrientationName=$(properties).find("OrientationName").text();
				$("#OrientationName").empty();
				$("#OrientationName").append(OrientationName);
				
				var FloorNum = $(properties).find("FloorNum").text();
				var FloorIs = $(properties).find("FloorIs").text();
				$("#Floor").empty();
				$("#Floor").append('在第&nbsp;'+FloorIs+'&nbsp;层（共&nbsp;'+FloorNum+'&nbsp;层）');
				
				var Lift = $(properties).find("Lift").text();
				$("#Lift").empty();
				if(Lift == 1){
				   $("#Lift").append("有电梯");
				}else{
				   $("#Lift").append("无电梯");
				}
				
				var Developer=$(properties).find("Developer").text();
				$("#Developer").empty();
				$("#Developer").append(Developer+'&nbsp;');				 
				if($("#Developer").html()=='null &nbsp;'){
				   $("#Developer").empty();			   
				   $("#Developer").append('&nbsp;');
				} 		
				 
				var DocumentNumber = $(properties).find("DocumentNumber").text();
				$("#DocumentNum").empty();
				$("#DocumentNum").append(DocumentNumber+'&nbsp;');
				if($("#DocumentNum").html()=='null &nbsp;'){
				   $("#DocumentNum").empty();			   
				   $("#DocumentNum").append('&nbsp;');
				} 			 
				
				var EstateTypeName=$(properties).find("EstateTypeName").text();
				$("#EstateTypeName").empty();
				$("#EstateTypeName").append(EstateTypeName);
				
				var Cost=$(properties).find("Cost").text();
				$("#Cost").empty();
				$("#Cost").append('<span class="cOrange">'+Cost+'</span> 万元/套');					
				 
				var TotalArea = $(properties).find("TotalArea").text();
				$("#TotalArea").empty();
				$("#TotalArea").append(TotalArea + '平方米');
				
				var UsableArea = $(properties).find("UsableArea").text();
				$("#UsableArea").empty();				 
				if (UsableArea==0){
				       $("#UsableArea").append('&nbsp;');
				}else{
				       $("#UsableArea").append(UsableArea + '平方米');
				}   
				 
				
				var UnitCost= parseInt(Cost*10000/TotalArea);
				$("#UnitCost").empty();
				$("#UnitCost").append('<span class="cOrange">'+UnitCost + '</span> 元/平方米 <a href="#" class="cRed03">[按建筑面积计算]</a>');
				
				var ManagementFees = $(properties).find("ManagementFees").text();
				$("#ManagementFees").empty();
				 
				if (ManagementFees==0){
				      $("#ManagementFees").append('&nbsp;');
				}else{
				     $("#ManagementFees").append('<span class="cOrange">'+ ManagementFees + '</span> 元/平方米·月');
				}
				 
				
				var EstateBelongName=$(properties).find("EstateBelongName").text();
				$("#EstateBelongName").empty();
				$("#EstateBelongName").append(EstateBelongName);
				
				var Rent=$(properties).find("Rent").text();
				$("#Rent").empty();				 
				if (Rent==0 ){
				       $("#Rent").append('&nbsp;');
				}else{
				     $("#Rent").append('<span class="cOrange">'+Rent+'</span> 元/月');
				}
				 
				
				var RentTimeName=$(properties).find("RentTimeName").text();
				$("#RentTimeName").empty();				 
				if (Rent==0 ){
				      $("#RentTimeName").append('&nbsp;');
				}else{
				     $("#RentTimeName").append(RentTimeName+'起租');
				}				 
				
				var DepositName=$(properties).find("DepositName").text();
				$("#DepositName").empty();				 
				if (Rent==0 ){
				      $("#DepositName").append('&nbsp;');
			    }else{
				     $("#DepositName").append(DepositName);
				}
				 
				var PayWayTypeName=$(properties).find("PayWayTypeName").text(); 
				$("#PayRentTypeName").empty();				 
				if (Rent==0 ){
				     $("#PayRentTypeName").append('&nbsp;');
				}else{
				  	$("#PayRentTypeName").append(PayWayTypeName);			  
			    }				 
				
				var VisitTime=$(properties).find("VisitTime").text();
				$("#VisitTime").empty();
				$("#VisitTime").append(VisitTime+'&nbsp;');
				if($("#VisitTime").html()=='null &nbsp;'){
				   $("#VisitTime").empty();			   
				   $("#VisitTime").append('&nbsp;');
				}
								 
				
				var LiveTime=$(properties).find("LiveTime").text();
				$("#LiveTime").empty();
				$("#LiveTime").append(LiveTime+'&nbsp;');
				if($("#LiveTime").html()=='null &nbsp;'){
				   $("#LiveTime").empty();			   
				   $("#LiveTime").append('&nbsp;');
				}
								
			    var RenovationStandardName = $(properties).find("RenovationStandardName").text();
			    $("#RenovationStandardName").empty();
				$("#RenovationStandardName").append(RenovationStandardName+'&nbsp;');
				if($("#RenovationStandardName").html()=='null &nbsp;'){
				   $("#RenovationStandardName").empty();			   
				   $("#RenovationStandardName").append('&nbsp;');
				}			 	 
				
				var NearSchool = $(properties).find("NearSchool").text();
				$("#NearSchool").empty();
				$("#NearSchool").append(NearSchool+'&nbsp;');
				if($("#NearSchool").html()=='null &nbsp;'){
				   $("#NearSchool").empty();			   
				   $("#NearSchool").append('&nbsp;');
				} 		
				 
				
				var GarageMes = $(properties).find("GarageMes").text();
				$("#GarageMes").empty();
				$("#GarageMes").append(GarageMes+'&nbsp;');
				if($("#GarageMes").html()=='null &nbsp;'){
				   $("#GarageMes").empty();			   
				   $("#GarageMes").append('&nbsp;');
				} 	
				 
				
				var TrafficMes = $(properties).find("TrafficMes").text();				
				$("#TrafficMes").empty();
				$("#TrafficMes").append(TrafficMes+'&nbsp;');
				if($("#TrafficMes").html()=='null &nbsp;'){
				   $("#TrafficMes").empty();			   
				   $("#TrafficMes").append('&nbsp;');
				}			 
				
				var NearEnvironment = $(properties).find("NearEnvironment").text();
				$("#NearEnvironment").empty();
				$("#NearEnvironment").append(NearEnvironment+'&nbsp;');
				if($("#NearEnvironment").html()=='null &nbsp;'){
				   $("#NearEnvironment").empty();			   
				   $("#NearEnvironment").append('&nbsp;');
				}					 
				
				var HouseChart=$(properties).find("HouseChart").text();
				var Photo1=$(properties).find("Photo1").text();
				var Photo2=$(properties).find("Photo2").text();
				$("#photo").empty();								
				$("#photo").append(HouseChart+'&nbsp;');
				
			    if($("#photo").html()=='null &nbsp;'){
				   img=Photo1;
				   $("#HouseChartSRC").attr({ src: "/Fang3FangWeb/uploadfiles/"+Photo1+".jpg", alt: "户型图" });	
				   $("#photo").empty();		   
				}else{
				   img=HouseChart;
				   $("#HouseChartSRC").attr({ src: "/Fang3FangWeb/uploadfiles/"+HouseChart+".jpg", alt: "户型图" });
				   $("#photo").empty();
				}				 
				
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
			    $("#Indoor").empty();
			    if(Colder == 1) $("#Indoor").append("空调、");
			    if(Shower == 1) $("#Indoor").append("淋浴器、");
			    if(Television == 1) $("#Indoor").append("电视、");
			    if(Fridge == 1) $("#Indoor").append("冰箱、");
				if(Washer == 1) $("#Indoor").append("洗衣机、");
			    if(Furnishing == 1) $("#Indoor").append("家具、");
			    if(Bed == 1) $("#Indoor").append("床铺、");
			    if(Cabinet == 1) $("#Indoor").append("壁柜、");
			    if(DressingRoom == 1) $("#Indoor").append("更衣室、"); 
				if(Sofa == 1) $("#Indoor").append("沙发、");
			    if(GasCooker == 1) $("#Indoor").append("煤气灶。"); 
				
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
				$("#Facility").empty();
				if(Water == 1) $("#Facility").append("水、");
			    if(Electricity == 1) $("#Facility").append("电、");
			    if(Gas == 1) $("#Facility").append("管道天然气、");
			    if(TVLine == 1) $("#Facility").append("有线电视、");
				if(TelephoneLine == 1) $("#Facility").append("电话线路、");
			    if(ADSL == 1) $("#Facility").append("宽带、");
			    if(Heating == 1) $("#Facility").append("暖气、");
			    if(DrinkingWater == 1) $("#Facility").append("直饮水、");
			    if(BurglarMesh== 1) $("#Facility").append("防盗网、"); 
				if(SecurityDoor == 1) $("#Facility").append("防盗门、");
			    if(Lift == 1) $("#Facility").append("电梯、"); 
				if(Garage == 1) $("#Facility").append("车库。"); 
				
				var Introduction = $(properties).find("Introduction").text();
				$("#Remark").empty();
				$("#Remark").append(Introduction+'&nbsp;');
				if($("#Remark").html()=='null &nbsp;'){
				   $("#Remark").empty();			   
				   $("#Remark").append('&nbsp;');
				} 				 			 
				
				var Contacter = $(properties).find("Contacter").text();
				$("#Contacter").empty();
				$("#Contacter").append(Contacter);	
				 
				
				var HomePhone = $(properties).find("HomePhone").text();
				$("#HomePhone").empty();
				$("#HomePhone").append(HomePhone+'&nbsp;');
				if($("#HomePhone").html()=='null &nbsp;'){
				   $("#HomePhone").empty();			   
				   $("#HomePhone").append('&nbsp;');
				} 
				
				var MobilePhone = $(properties).find("MobilePhone").text();
				$("#MobilePhone").empty();
				$("#MobilePhone").append(MobilePhone+'<span class="cRed03">(中介免问)</span>');
				if($("#MobilePhone").html()=='null <span class="cRed03">(中介免问)</span>'){
				   $("#MobilePhone").empty();
				   $("#MobilePhone").append('&nbsp;');		
				}
										
				var QQ = $(properties).find("QQ").text();
				$("#QQ").empty();
				$("#QQ").append(QQ+'&nbsp;');
				if($("#QQ").html()=='null &nbsp;'){
				   $("#QQ").empty();  
				   $("#QQ").append('&nbsp;');
				}			 
				
				var MSN = $(properties).find("MSN").text();
				$("#MSN").empty();
				$("#MSN").append(MSN+'&nbsp;');	 				
				if($("#MSN").html()=='null &nbsp;'){
				   $("#MSN").empty();
				   $("#MSN").append('&nbsp;');	
				}				 
				
				var Email = $(properties).find("Email").text();
				$("#Email").empty();
				$("#Email").append(Email+'&nbsp;');				
				if($("#Email").html()=='null &nbsp;'){
				   $("#Email").empty();
				   $("#Email").append('&nbsp;');
				}				
				 
				
				var IsTrade = $(properties).find("IsTrade").text();
				$("#IsTrade").empty();
				if (IsTrade==1){
				  $("#IsTrade").append("是");
				}else{
				  $("#IsTrade").append("否");
				}
				
				var EstateTypeDiff =$(properties).find("EstateTypeDiff").text();
				$("#EstateTypeDiff").empty();
				if (EstateTypeDiff==1){
				  $("#EstateTypeDiff").append("商铺");
				}else{
				  $("#EstateTypeDiff").append("住宅");
				} 
				
				var OverdueDate =$(properties).find("OverdueDate").text();
				$("#OverdueDate").empty();
				$("#OverdueDate").append(OverdueDate+'&nbsp;');
				if($("#OverdueDate").html()=='null &nbsp;'){
				   $("#OverdueDate").empty();
				   $("#OverdueDate").append('&nbsp;');
				}					 
				
				var Years =$(properties).find("Years").text();
				$("#Years").empty();
				if (Years==0){
				   $("#Years").append('&nbsp;');
				}else{				 
				  $("#Years").append(Years);
				}				
		}
	});
	
	$("#bigIMG").click(function() {
        $("#HouseChart").empty();
        $("#HouseChart").append('<img id="HouseChartSRC" src="/Fang3FangWeb/uploadfiles/'+img+'.jpg" width="505" height="340" align="absmiddle" /><br><center><span class="cRed03">[我要反映：实际与户型不对应]</span></center>');    
      	return false;
	});	
}
 

function LeaveWord(){
   var hello=$("#hello").html();
   if (hello=="您还没有登录"){
      $("#Login").removeAttr("disabled");   
   }else{      
      $("#Login").attr("disabled","disabled");        
   }
   $("#Login").click(function() {
        var Username=$("#Username").val();
        var Password=$("#Password").val();
        var estateid=$("#estateid").html();
               
        $.ajax({
		  url: "/Fang3FangWeb/Access",
		  type: "POST",		  
		  data: "useraction=dovalidation&Username="+Username +"&Password="+Password+"&show=0",
		  cache: false,
		  success: function(){
		  	alert("登录成功！");
		  	window.location = "show.jsp?EstateMsgID="+estateid;			 
		  },
		  error: function(a, b) {
			 alert("登录失败，请检查用户名和密码！");
		  } 
		});
		return false;
	});
	
	$("#Publish").click(function() {
        var QuestionMsg =$("#QuestionMsg").html();
        var hello=$("#hello").html();
        var estateid=$("#estateid").html();
        var anonymous=$("#anonymous").val();
        var userID=$("#UserID").val();
        if ((hello!="您还没有登录")||($("#anonymous").val()=="1")){
           $.ajax({
		    url: "/Fang3FangWeb/Access",
		    type: "POST",		  
		    data: "useraction=Estates&referaction=AddQuestionMsg&QuestionMsg="+encodeURI(QuestionMsg)+"&Realname="+encodeURI(hello)+"&UserID="+userID+"&Anonymous="+anonymous+"&EstateMsgID="+estateid+"&qorm=1",
		    cache: false,
		    success: function(){
		    	alert("发布成功！");		  	   	 
		    },
		    error: function(a, b) {
			   alert("发布失败！");
		    }
		  });
           
        }else{         
          alert("您还没有登录，或者选择匿名！")
		}
		return false;
	});	
	
	$("#anonymous").click(function() {
         if ($("#anonymous").val()=="1"){
           $("#anonymous").removeAttr("checked"); 
           $("#anonymous").val("0")           
        }else if ($("#anonymous").val()=="0") { 
           $("#anonymous").attr("checked","yes");         
           $("#anonymous").val("1")
		}
		      
	});	
}
