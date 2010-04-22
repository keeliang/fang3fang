$(document).ready(function() {
	var url = window.location.href;
	var id = url.indexOf('=');
	if (id == -1) return "";
	id = url.substring(id + 1);
	$.ajax({
		url: "/Fang3FangWeb/servlet/SearchProxyCS",
		type: "POST",
		dataType: "xml",
		data: "referaction=SelectProxyCSByPCSID&PCSID=" + id,
		cache: false,
		success: function(xml){
			var properties = $(xml).find("ProxyCS")[0];
			
				var PCSID = $(properties).find("PCSID").text();
				$("#PCSID").append(PCSID);
				var CityName = $(properties).find("CityName").text();
				$("#CityName").append(CityName);
				var DistrictName = $(properties).find("DistrictName").text();
				$("#DistrictName").append(DistrictName);
				var TownName = $(properties).find("TownName").text();
				$("#TownName").append(TownName);
				var PropertyTypeName = $(properties).find("PropertyTypeName").text();
				$("#PropertyTypeName").append(PropertyTypeName);
				var PropertyName = $(properties).find("PropertyName").text();
				$("#PropertyName").append(PropertyName);
				var Room = $(properties).find("Room").text();
				var Hall = $(properties).find("Hall").text();
				var Toilet = $(properties).find("Toilet").text();
				var Balcony = $(properties).find("Balcony").text();
				$("#HuXing").append("<span style='color: #f00'>" + Room + "</span>&nbsp;室&nbsp;" + "<span style='color: #f00'>" + Hall + "</span>&nbsp;厅&nbsp;" + "<span style='color: #f00'>" + Toilet + "</span>&nbsp;卫&nbsp;" + "<span style='color: #f00'>" + Balcony + "</span>&nbsp;阳台");
				var Area = $(properties).find("Area").text();
				$("#Area").append("<span style='color: #f00'>" + Area + "</span>&nbsp;m<sup>2</sup>");
				var ManagementFees = $(properties).find("ManagementFees").text();
				$("#ManagementFees").append("<span style='color: #f00'>" + ManagementFees + "</span>&nbsp;元/月");
				var Address = $(properties).find("Address").text();
				$("#Address").append(Address);
				var FloorNum = $(properties).find("FloorNum").text();
				var FloorIs = $(properties).find("FloorIs").text();
				$("#Floor").append("在第&nbsp;<span style='color=#f00'>"+FloorIs+"</span>&nbsp;层（共&nbsp;"+FloorNum+"&nbsp;层）");
				var Cost = $(properties).find("Cost").text();
				$("#Cost").append("<span style='color=#f00'>" + Cost + "&nbsp;</span>万元/套");
				var DocumentType = $(properties).find("DocumentType").text();
				$("#DocumentType").append(DocumentType);
				var RenovationStandardName = $(properties).find("RenovationStandardName").text();
				$("#RenovationStandardName").append(RenovationStandardName);
				var PayWayTypeName = $(properties).find("PayWayTypeName").text();
				$("#PayWayTypeName").append(PayWayTypeName);
				var ExposureName = $(properties).find("ExposureName").text();
				$("#ExposureName").append(ExposureName);
				var DoneTime = $(properties).find("DoneTime").text();
				$("#DoneTime").append(DoneTime);
				var NearSchool = $(properties).find("NearSchool").text();
				$("#NearSchool").append(NearSchool);
				var Traffic = $(properties).find("Traffic").text();
				$("#Traffic").append(Traffic);
				var NearEnvironment = $(properties).find("NearEnvironment").text();
				$("#NearEnvironment").append(NearEnvironment);
				var HasKongTiao = $(properties).find("HasKongTiao").text();
				if(HasKongTiao == 1) $("#Has").append("空调、");
				var HasChuangPu = $(properties).find("HasChuangPu").text();
				if(HasChuangPu == 1) $("#Has").append("床铺、");
				var HasGengYiShi = $(properties).find("HasGengYiShi").text();
				if(HasGengYiShi == 1) $("#Has").append("更衣室、");
				var HasBiGui = $(properties).find("HasBiGui").text();
				if(HasBiGui == 1) $("#Has").append("壁柜、");
				var HasDianTi = $(properties).find("HasDianTi").text();
				if(HasDianTi == 1) $("#Has").append("电梯、");
				var HasMeiQi = $(properties).find("HasMeiQi").text();
				if(HasMeiQi == 1) $("#Has").append("煤气、");
				var HasFangDaoMen = $(properties).find("HasFangDaoMen").text();
				if(HasFangDaoMen == 1) $("#Has").append("防盗门、");
				var HasXiYiJi = $(properties).find("HasXiYiJi").text();
				if(HasXiYiJi == 1) $("#Has").append("洗衣机、");
				var HasYeHuaQi = $(properties).find("HasYeHuaQi").text();
				if(HasYeHuaQi == 1) $("#Has").append("液化气、");
				var HasBiLu = $(properties).find("HasBiLu").text();
				if(HasBiLu == 1) $("#Has").append("闭路、");
				var HasShaFa = $(properties).find("HasShaFa").text();
				if(HasShaFa == 1) $("#Has").append("沙发、");
				var HasReShuiQi = $(properties).find("HasReShuiQi").text();
				if(HasReShuiQi == 1) $("#Has").append("热水器、");
				var HasBiXiang = $(properties).find("HasBiXiang").text();
				if(HasBiXiang == 1) $("#Has").append("冰箱、");
				var HasCheKu = $(properties).find("HasCheKu").text();
				if(HasCheKu == 1) $("#Has").append("车库、");
				var HasTV = $(properties).find("HasTV").text();
				if(HasTV == 1) $("#Has").append("电视、");
				var HasFangDaoWang = $(properties).find("HasFangDaoWang").text();
				if(HasFangDaoWang == 1) $("#Has").append("防盗网、");
				var HasKuanDai = $(properties).find("HasKuanDai").text();
				if(HasKuanDai == 1) $("#Has").append("宽带、");
				var HasDianHua = $(properties).find("HasDianHua").text();
				if(HasDianHua == 1) $("#Has").append("电话");
				var Photo = $(properties).find("Photo").text();
				//if(Photo != "") $("#Photo").append("<img src='"+Photo+"' />");
				var Introduction = $(properties).find("Introduction").text();
				$("#Introduction").append(Introduction);
				var FBDate = $(properties).find("FBDate").text();
				$("#FBDate").append(FBDate);
		}
	});
});