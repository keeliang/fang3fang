$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#CZForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		iframe: true,
		success: function() {
			alert("恭喜您，您已经成功更新信息！");
			$('#CZForm').resetForm();
		}
    });
    
	$("td[class!='TableTitle']").hover(function() {
		$(this).parent().addClass("TableTDSelect");
	},
	function() {
		$(this).parent().removeClass("TableTDSelect");
	});
	
	var url = window.location.href;
	window.id = url.indexOf('=');
	if (window.id == -1) return "";
	window.id = url.substring(window.id + 1);
	
	$.ajax({
		url: "/Fang3FangWeb/servlet/SearchProxyCZ",
		type: "GET",
		dataType: "xml",
		data: "referaction=SelectProxyCZByPCZID&PCZID=" + window.id,
		success: function(xml){
			var properties = $(xml).find("ProxyCZ")[0];
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			
			var PCZID = $(properties).find("PCZID").text();
			
			$("#PCZID").val(PCZID);
			$("#ShowCZID").append(PCZID);
				
			var CityName = $(properties).find("CityName").text();
			//一定要喺全局变量，以便DisplayDistrict()访问到
			window.DistrictName = $(properties).find("DistrictName").text();
			//一定要喺全局变量，以便DisplayDistrict()访问到	
			window.TownName = $(properties).find("TownName").text();
				
				//$(document).ready()嘅时候Ajax先读出City下拉框嘅列表，所以呢度可以选中读出嚟嘅值，记住佢相对应嘅CityID
				var CityID = ChangeSelectedObj("CityID", CityName);
				//将CityID传入去DisplayDistrict()方法里面，读出相对应嘅地区的ID同埋值，加载到District下拉框里面，之后选中上面读出嚟嘅DistrictName选项，再根据选择咗嘅DistrictName对应嘅DistrctID嚟执行最后一次Ajax，即喺DisplayTown(DistrictID)，读出相关商圈，最后再选中读出嚟嘅商圈
				/**
				 *	特大问题：
				 *		试过喺DisplayDistrict()方法里面返回DistrictID出嚟，但喺次次都返回到undefined，唔知点解
				 */
				DisplayDistrict(CityID);
				
			var PropertyTypeName = $(properties).find("PropertyTypeName").text();
				ChangeSelectedObj("PropertyID", PropertyTypeName);
				
			var PropertyName = $(properties).find("PropertyName").text();
				$("#PropertyName").val(PropertyName);
				
			var Room = $(properties).find("Room").text();
				$("#Room").val(Room);
				
			var Hall = $(properties).find("Hall").text();
				$("#Hall").val(Hall);
				
			var Toilet = $(properties).find("Toilet").text();
				$("#Toilet").val(Toilet);
				
			var Balcony = $(properties).find("Balcony").text();
				$("#Balcony").val(Balcony);
					
			var Area = $(properties).find("Area").text();
				$("#Area").val(Area);
				
			var ManagementFees = $(properties).find("ManagementFees").text();
				$("#ManagementFees").val(ManagementFees);
				
			var Address = $(properties).find("Address").text();
				$("#Address").val(Address);
				
			var FloorNum = $(properties).find("FloorNum").text();
				$("#FloorNum").val(FloorNum);
				
			var FloorIs = $(properties).find("FloorIs").text();
				$("#FloorIs").val(FloorIs);
				
			var Cost = $(properties).find("Cost").text();
				$("#Cost").val(Cost);
				
			var Deposit = $(properties).find("Deposit").text();
				$("#Deposit").val(Deposit);
			
			var DepositWay = $(properties).find("DepositWay").text();
				$("#DepositWay option[value=" + DepositWay + "]").attr("selected", "selected");
				
			var RentTime = $(properties).find("RentTime").text();
				RentTime = RentTime.split("-");
				$("#RentYear").val(RentTime[0]);
				$("#RentMonth").val(RentTime[1]);
				$("#RentDay").val(RentTime[2]);
				
			var DocumentType = $(properties).find("DocumentType").text();
				$("#DocumentType option[value=" + DocumentType + "]").attr("selected", "selected");
				
			var DocumentNumber = $(properties).find("DocumentNumber").text();
				$("#DocumentNumber").val(DocumentNumber);
				
			var RenovationStandardName = $(properties).find("RenovationStandardName").text();
				ChangeSelectedObj("RenovationStandardID", RenovationStandardName);

			var PayWayTypeName = $(properties).find("PayWayTypeName").text();
				ChangeSelectedObj("PayWayID", PayWayTypeName);
				
			var ExposureName = $(properties).find("ExposureName").text();
				ChangeSelectedObj("Orientation", ExposureName);
				
			var DoneTime = $(properties).find("DoneTime").text();
				if(DoneTime != "null") {
					var idx = DoneTime.indexOf("-");
					var year = DoneTime.substring(0, idx);
					var month = DoneTime.substring(idx + 1);
					$("#DoneYear").val(year);
					$("#DoneMonth").val(month);
				}
				
			var NearSchool = $(properties).find("NearSchool").text();
				$("#NearSchool").val(NearSchool);
				
			var Traffic = $(properties).find("Traffic").text();
				$("#Traffic").val(Traffic);
				
			var NearEnvironment = $(properties).find("NearEnvironment").text();
				$("#NearEnvironment").val(NearEnvironment);
				
			var HasKongTiao = $(properties).find("HasKongTiao").text();
				if(HasKongTiao == 1) $("#HasKongTiao").attr("checked=", "checked");
			var HasChuangPu = $(properties).find("HasChuangPu").text();
				if(HasChuangPu == 1) $("#HasChuangPu").attr("checked", "checked");
			var HasGengYiShi = $(properties).find("HasGengYiShi").text();
				if(HasGengYiShi == 1) $("#HasGengYiShi").attr("checked", "checked");
			var HasBiGui = $(properties).find("HasBiGui").text();
				if(HasBiGui == 1) $("#HasBiGui").attr("checked", "checked");
			var HasDianTi = $(properties).find("HasDianTi").text();
				if(HasDianTi == 1) $("#HasDianTi").attr("checked", "checked");
			var HasMeiQi = $(properties).find("HasMeiQi").text();
				if(HasMeiQi == 1) $("#HasMeiQi").attr("checked", "checked");
			var HasFangDaoMen = $(properties).find("HasFangDaoMen").text();
				if(HasFangDaoMen == 1) $("#HasFangDaoMen").attr("checked", "checked");
			var HasXiYiJi = $(properties).find("HasXiYiJi").text();
				if(HasXiYiJi == 1) $("#HasXiYiJi").attr("checked", "checked");
			var HasYeHuaQi = $(properties).find("HasYeHuaQi").text();
				if(HasYeHuaQi == 1) $("#HasYeHuaQi").attr("checked", "checked");
			var HasBiLu = $(properties).find("HasBiLu").text();
				if(HasBiLu == 1) $("#HasBiLu").attr("checked", "checked");
			var HasShaFa = $(properties).find("HasShaFa").text();
				if(HasShaFa == 1) $("#HasShaFa").attr("checked", "checked");
			var HasReShuiQi = $(properties).find("HasReShuiQi").text();
				if(HasReShuiQi == 1) $("#HasReShuiQi").attr("checked", "checked");
			var HasBiXiang = $(properties).find("HasBiXiang").text();
				if(HasBiXiang == 1) $("#HasBiXiang").attr("checked", "checked");
			var HasCheKu = $(properties).find("HasCheKu").text();
				if(HasCheKu == 1) $("#HasCheKu").attr("checked", "checked");
			var HasTV = $(properties).find("HasTV").text();
				if(HasTV == 1) $("#HasTV").attr("checked", "checked");
			var HasFangDaoWang = $(properties).find("HasFangDaoWang").text();
				if(HasFangDaoWang == 1) $("#HasFangDaoWang").attr("checked", "checked");
			var HasKuanDai = $(properties).find("HasKuanDai").text();
				if(HasKuanDai == 1) $("#HasKuanDai").attr("checked", "checked");
			var HasDianHua = $(properties).find("HasDianHua").text();
				if(HasDianHua == 1) $("#HasDianHua").attr("checked", "checked");

			var Photo = $(properties).find("Photo").text();
				
			var Introduction = $(properties).find("Introduction").text();
				$("#Introduction").val(Introduction);
				
			var Contacter = $(properties).find("Contacter").text();
				$("#Contacter").val(Contacter);
				
			var MobilePhone = $(properties).find("MobilePhone").text();
				$("#MobilePhone").val(MobilePhone);
				
			var HomePhone = $(properties).find("HomePhone").text();
				$("#HomePhone").val(HomePhone);
				
			var Email = $(properties).find("Email").text();
				$("#Email").val(Email);

			var FBDate = $(properties).find("FBDate").text();
				$("#FBDate").append(FBDate);
		},
		error: function(a, b)  {
			alert(b);
		}
	});
});

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
	if(!(
		$("#CZForm").validate({
			submitHandler: function() {
			},
			rules: {
				PropertyName: "required",
				CityID: "required",
				DistrictID: "required",
				TownID: "required",
				Area: {
					required: true,
					digits: true
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
				DocumentType: "required",
				DocumentNumber: {
					required: true
				},
				ManagementFees: {
					required: true,
					digits: true
				},
				Cost: {
					required: true,
					digits: true
				},
				DepositWay: "required",
				Deposit: {
					required: true,
					digits: true
				},
				RentYear: {
					required: true,
					digits: true,
					minLength: 4,
					maxLength: 4,
					minValue: 1900,
					maxValue: 2200
				},
				RentMonth: {
					required: true,
					digits: true,
					minLength: 1,
					maxLength: 2,
					minValue: 1,
					maxValue: 12
				},
				RentDay: {
					required: true,
					digits: true,
					minLength: 1,
					maxLength: 2,
					minValue: 1,
					maxValue: 31
				},
				DoneYear: {
					digits: true,
					minLength: 4,
					maxLength: 4,
					minValue: 1900,
					maxValue: 2200
				},
				DoneMonth: {
					digits: true,
					minLength: 1,
					maxLength: 2,
					minValue: 1,
					maxValue: 12
				},
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
				Email: {
					email: true
				}
			},
			messages: {
				PropertyName: "请输入具体的物业名称",
				CityID: "请选择城市",
				DistrictID: "请选择地区",
				TownID: "请选择商圈",
				Area: {
					required: "请正确输入面积",
					digits: "必须是数字"
				},
				PropertyID: "请选择物业类型",
				Room: {
					required: "请输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Hall: {
					required: "请输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Toilet: {
					required: "请输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Balcony: {
					required: "请输入",
					digits: "必须是数字",
					maxValue: "请正确输入"
				},
				Address: "请输入楼盘的具体地址",
				FloorNum: {
					required: "请输入总楼层",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				FloorIs: {
					required: "请输入总楼层",
					digits: "必须是数字",
					minValue: "请正确输入",
					maxValue: "请正确输入"
				},
				DocumentType: "请选择证件类型，以便发生误会时我们进行调查，且保证不会公开",
				DocumentNumber: "请输入证件号码",
				ManagementFees: {
					required: "请输入物业管理费，如果不需要，请输入0",
					digits: "必须是数字"
				},
				Cost: {
					required: "请输入楼盘售价",
					digits: "必须是数字"
				},
				DepositWay: "请选择押金方式",
				Deposit: {
					required: "请输入押金价钱",
					digits: "必须是数字"
				},
				RentYear: {
					required: "请输入具体的起租年份",
					digits: "必须是数字",
					minLength: "请正确输入",
					maxLength: "请正确输入",
					minValue: "请正确输入年份",
					maxValue: "请正确输入年份"
				},
				RentMonth: {
					required: "请输入具体的起租月份",
					digits: "必须是数字",
					minLength: "请正确输入",
					maxLength: "请正确输入",
					minValue: "请正确输入月份",
					maxValue: "请正确输入月份"
				},
				RentDay: {
					required: "请输入具体的起租日期",
					digits: "必须是数字",
					minLength: "请正确输入",
					maxLength: "请正确输入",
					minValue: "请正确输入日期",
					maxValue: "请正确输入日期"
				},
				Contacter: "请正确输入您的真实姓名",
				DoneYear: {
					digits: "必须是数字",
					minLength: "请正确输入竣工年份",
					maxLength: "请正确输入竣工年份",
					minValue: "请正确输入竣工年份",
					maxValue: "请正确输入竣工年份"
				},
				DoneMonth: {
					digits: "必须是数字",
					minLength: "请正确输入竣工月份",
					maxLength: "请正确输入竣工月份",
					minValue: "请正确输入竣工月份",
					maxValue: "请正确输入竣工月份"
				},
				MobilePhone: {
					required: "请输入您的手机号码，方便我们与您联络",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				},
				HomePhone: {
					digits: "必须是数字"
				},
				Email: {
					email: "请正确输入您的电子邮箱"
				}
			}
		}).form()
	)) return false;
}