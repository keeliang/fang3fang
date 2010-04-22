$.meta.setType("attr", "validate");

$(document).ready(function() {
	$('#AJForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		success: function() {
			alert("恭喜您，您已经成功更新信息！");
			$('#AJForm').resetForm();
		}
	});
	
	$("td[class!='TableTitle']").hover(function() {
		$(this).parent().addClass("TableTDSelect");
	},
	function() {
		$(this).parent().removeClass("TableTDSelect");
	});
	$("#Return").click(function() {
		window.history.forward();
	});

	var url = window.location.href;
	window.id = url.indexOf('=');
	if (window.id == -1) return "";
	window.id = url.substring(window.id + 1);
	
	$.ajax({
		url: "/Fang3FangWeb/servlet/SQAJLoan",
		type: "GET",
		dataType: "xml",
		data: "referaction=SelectSQAJLoanByAJID&AJID=" + window.id,
		success: function(xml){
			var properties = $(xml).find("SQAJLoan")[0];
			$(properties).children().each(function() {
				$(this).text($.trim($(this).text()));
			})
			
			var AJID = $(properties).find("AJID").text();
				$("#AJID").val(AJID);
				$("#ShowAJID").append(AJID);
				
			var UserID = $(properties).find("UserID").text();
				
			var UserName = $(properties).find("UserName").text();
				$("#UserName").val(UserName);
				
			var UserSex = $(properties).find("UserSex").text();
				if(UserSex == 1)
					$("#Man").attr("checked", "checked");
				else
					$("#Woman").attr("checked", "checked");
					
			var DocumentType = $(properties).find("DocumentType").text();
				$("#DocumentType option[value=" + DocumentType + "]").attr("selected", "selected");
				
			var DocumentNumber = $(properties).find("DocumentNumber").text();
				$("#DocumentNumber").val(DocumentNumber);
				
			var Workspace = $(properties).find("Workspace").text();
				$("#Workspace").val(Workspace);
				
			var IsMarried = $(properties).find("IsMarried").text();
				if(IsMarried == 1)
					$("#Yes").attr("checked", "checked");
				else
					$("#No").attr("checked", "checked");
					
			var HomePhone = $(properties).find("HomePhone").text();
				$("#HomePhone").val(HomePhone);
				
			var MobilePhone = $(properties).find("MobilePhone").text();
				$("#MobilePhone").val(MobilePhone);
				
			var LoanMoney = $(properties).find("LoanMoney").text();
				$("#LoanMoney").val(LoanMoney);
				
			var LoanDueDate = $(properties).find("LoanDueDate").text();
				$("#LoanDueDate").val(LoanDueDate);
				
			var RepayWay = $(properties).find("RepayWay").text();
				$("#RepayWay option[value=" + RepayWay + "]").attr("selected", "selected");
				
			var LoanToUse = $(properties).find("LoanToUse").text();
				$("#LoanToUse option[value=" + LoanToUse + "]").attr("selected", "selected");
				
			var PropertyName = $(properties).find("PropertyName").text();
				$("#PropertyName").val(PropertyName);
				
			var Address = $(properties).find("Address").text();
				$("#Address").val(Address);
				
			var PropertyCost = $(properties).find("PropertyCost").text();
				$("#PropertyCost").val(PropertyCost);
				
			var DocumentCost = $(properties).find("DocumentCost").text();
				$("#DocumentCost").val(DocumentCost);
				
			var DoneTime = $(properties).find("DoneTime").text();
				var idx = DoneTime.indexOf("-");
				var year = DoneTime.substring(0, idx);
				var month = DoneTime.substring(idx + 1);
				$("#DoneYear").val(year);
				$("#DoneMonth").val(month);
				
			var Area = $(properties).find("Area").text();
				$("#Area").val(Area);
				
			var CityName = $(properties).find("CityName").text();
				
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

			var FBDate = $(properties).find("FBDate").text();
				$("#FBDate").append(FBDate);
		}
	});
});

function validate() {
	$("#UserName").val(CheckInputValue($("#UserName").val()));
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
				UserName: "required",
				MobilePhone: {
					required: true,
					minLength: 11,
					maxLength: 11,
					digits: true
				},
				HomePhone: {
					digits: true
				},
				LoanMoney: {
					required: true,
					digits: true
				},
				LoanDueDate: {
					required: true,
					digits: true,
					minLength: 1,
					maxLength: 3
				},
				RepayWay: "required",
				LoanToUse: "required",
				CityID: "required",
				DistrictID: "required",
				TownID: "required",
				PropertyID: "required",
				PropertyName: "required",
				Address: "required",
				PropertyCost: {
					required: true,
					digits: true
				},
				DocumentCost: {
					required: true,
					digits: true
				},
				DoneYear: {
					required: true,
					digits: true,
					minLength: 4,
					maxLength: 4,
					minValue: 1900,
					maxValue: 2200
				},
				DoneMonth: {
					required: true,
					digits: true,
					minValue: 1,
					maxValue: 12
				},
				Area: {
					required: true,
					digits: true
				}
			},
			messages: {
				UserName: "请输入您的真实姓名",
				MobilePhone: {
					required: "请输入您的手机号码",
					digits: "手机号码应该是11位数字组合",
					minLength: "手机号码应该是11位数字组合",
					maxLength: "手机号码应该是11位数字组合"
				},
				HomePhone: "请正确输入您的固定号码",
				LoanMoney: {
					required: "请输入您的贷款金额",
					digits: "贷款金额必须是数字"
				},
				LoanDueDate: {
					required: "请输入贷款期限",
					digits: "贷款期限必须是数字",
					minLength: "贷款的期限必须是0-100年",
					maxLength: "贷款的期限必须是0-100年"
				},
				RepayWay: "请选择您的还款方式",
				LoanToUse: "请选择您的借款用途",
				CityID: "请选择您抵押楼盘所在的城市",
				DistrictID: "请选择您抵押楼盘所在的区县",
				TownID: "请选择您抵押楼盘所在的商圈",
				PropertyID: "请选择您抵押楼盘的房产性质",
				PropertyName: "请正确输入您抵押楼盘的名称",
				Address: "请正确输入您抵押楼盘的地址",
				PropertyCost: {
					required: "请输入您抵押楼盘的购置价格",
					digits: "购置价格必须是数字"
				},
				DocumentCost: {
					required: "请输入您抵押楼盘的房产证登记价格",
					digits: "房产证登记价格必须是数字"
				},
				DoneYear: {
					required: "请输入您抵押楼盘的竣工时间",
					digits: "抵押楼盘的竣工时间必须是数字",
					minLength: "请正确输入年份",
					maxLength: "请正确输入年份",
					minValue: "请正确输入年份",
					maxValue: "请正确输入年份"
				},
				DoneMonth: {
					required: "请正确输入您抵押楼盘的竣工时间",
					digits: "抵押楼盘的竣工时间必须是数字",
					minValue: "请正确输入月份",
					maxValue: "请正确输入月份"
				},
				Area: {
					required: "请输入您抵押楼盘的建筑面积",
					digits: "建筑面积必须是数字"
				}
			}
		}).form()
	)) return false;
}