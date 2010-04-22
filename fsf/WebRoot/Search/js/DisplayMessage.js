
/*某些表单元素在载入时就已经得到其值*/
$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/Users",
		type: "POST",
		dataType: "xml",
		data: "useraction=Users&referaction=SelectSearchMessage",
		success: function(xml){
			var properties = xml.getElementsByTagName("CityType");               //城市
			for(var i = 0; i < properties.length; i++) {
				var CityID = $.trim(properties[i].getElementsByTagName("CityID")[0].firstChild.nodeValue);
				var CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
				$("#select111").append("<option value = '" + CityID + "'>" + CityName + "</option>")
				$("#select121").append("<option value = '" + CityID + "'>" + CityName + "</option>")
				$("#select131").append("<option value = '" + CityID + "'>" + CityName + "</option>")
				$("#select141").append("<option value = '" + CityID + "'>" + CityName + "</option>")
				$("#select151").append("<option value = '" + CityID + "'>" + CityName + "</option>")
				$("#select161").append("<option value = '" + CityID + "'>" + CityName + "</option>")
				$("#select171").append("<option value = '" + CityID + "'>" + CityName + "</option>")				 
			}
			var properties = xml.getElementsByTagName("DistrictType");
			$("#QuickSearchContent").html("");
			$("#QuickSearchContent").append("[区域查询]： ");
			for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "' class='cRed'><u>" + DistrictName + "</u></a>");
					 
			}	
			 
			 
		}
	});	
	
	$("#select110").change(function() {
	    if ($("#select110").val()=='0'){
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30万以下'   class='cRed'><u>30万以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30-60万'   class='cRed'><u>30-60万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C60-100万'   class='cRed'><u>60-100万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C100-150万'   class='cRed'><u>100-150万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C150-200万'   class='cRed'><u>150-200万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C200-300万'   class='cRed'><u>200-300万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C300-500万'   class='cRed'><u>300-500万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500万以上'   class='cRed'><u>500万以上</u> </a>");
	    }
	    else if ($("#select110").val()=='1'){
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500元以下'   class='cRed'><u>500元以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500-1000元'   class='cRed'><u>500-1000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1000-1500元'   class='cRed'><u>1000-1500元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1500-2000元'   class='cRed'><u>1500-2000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C2000-3000元'   class='cRed'><u>2000-3000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C3000-4000元'   class='cRed'><u>3000-4000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C4000-5000元'   class='cRed'><u>4000-5000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C5000元以上'   class='cRed'><u>5000元以上</u> </a>");
	    }
	})
	
	$("#select111").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectDisByCityID&CityID=" + $("#select111").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("DistrictType");
				$("#select112").html("");
				$("#select112").append("<option value=''>地区</option>");
				
				$("#QuickSearchContent").html("");
			    $("#QuickSearchContent").append("[区域查询]： ");
			    
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#select112").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select121").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectDisByCityID&CityID=" + $("#select121").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("DistrictType");
				$("#select122").html("");
				$("#select122").append("<option value=''>地区</option>");
				
				$("#QuickSearchContent").html("");
			    $("#QuickSearchContent").append("[区域查询]： ");
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#select122").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select131").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectDisByCityID&CityID=" + $("#select131").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("DistrictType");
				
				$("#select132").html("");
				$("#select132").append("<option value=''>地区</option>");
				
				$("#QuickSearchContent").html("");
			    $("#QuickSearchContent").append("[区域查询]： ");
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#select132").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select141").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectDisByCityID&CityID=" + $("#select141").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("DistrictType");
				$("#select142").html("");
				$("#select142").append("<option value=''>地区</option>");
				
				$("#QuickSearchContent").html("");
			    $("#QuickSearchContent").append("[区域查询]： ");
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#select142").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select151").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectDisByCityID&CityID=" + $("#select151").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("DistrictType");
				$("#select152").html("");
				$("#select152").append("<option value=''>地区</option>");
				
				$("#QuickSearchContent").html("");
			    $("#QuickSearchContent").append("[区域查询]： ");
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#select152").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select161").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectDisByCityID&CityID=" + $("#select161").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("DistrictType");
				$("#select162").html("");
				$("#select162").append("<option value=''>地区</option>");
				
				$("#QuickSearchContent").html("");
			    $("#QuickSearchContent").append("[区域查询]： ");
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#select162").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select171").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectDisByCityID&CityID=" + $("#select171").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("DistrictType");
				$("#select172").html("");
				$("#select172").append("<option value=''>地区</option>");
				
				$("#QuickSearchContent").html("");
			    $("#QuickSearchContent").append("[区域查询]： ");
				for(var i = 0; i < properties.length; i++) {
					var DistrictID = $.trim(properties[i].getElementsByTagName("DistrictID")[0].firstChild.nodeValue);
					var DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					$("#select172").append("<option value = '" + DistrictID + "'>" + DistrictName + "</option>")
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	
	
	
	
	$("#select112").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectTownByDistrictID&DistrictID=" + $("#select112").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("TownType");
				$("#select113").html("");
				$("#select113").append("<option value=''>商圈</option>");
				
				for(var i = 0; i < properties.length; i++) {
					var TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
					var TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					$("#select113").append("<option value = '" + TownID + "'>" + TownName + "</option>")
				}
			}
		});
	})
	
	$("#select122").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectTownByDistrictID&DistrictID=" + $("#select122").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("TownType");
				$("#select123").html("");
				$("#select123").append("<option value=''>商圈</option>");
				for(var i = 0; i < properties.length; i++) {
					var TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
					var TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					$("#select123").append("<option value = '" + TownID + "'>" + TownName + "</option>")
				}
			}
		});
	})
	
	$("#select132").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectTownByDistrictID&DistrictID=" + $("#select132").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("TownType");
				$("#select133").html("");
				$("#select133").append("<option value=''>商圈</option>");
				for(var i = 0; i < properties.length; i++) {
					var TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
					var TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					$("#select133").append("<option value = '" + TownID + "'>" + TownName + "</option>")
				}
			}
		});
	})	
	
	
	$("#select142").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectTownByDistrictID&DistrictID=" + $("#select142").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("TownType");
				$("#select143").html("");
				$("#select143").append("<option value=''>商圈</option>");
				for(var i = 0; i < properties.length; i++) {
					var TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
					var TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					$("#select143").append("<option value = '" + TownID + "'>" + TownName + "</option>")
				}
			}
		});
	})
	
	$("#select152").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectTownByDistrictID&DistrictID=" + $("#select152").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("TownType");
				$("#select153").html("");
				$("#select153").append("<option value=''>商圈</option>");
				for(var i = 0; i < properties.length; i++) {
					var TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
					var TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					$("#select153").append("<option value = '" + TownID + "'>" + TownName + "</option>")
				}
			}
		});
	})
	
	$("#select162").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectTownByDistrictID&DistrictID=" + $("#select162").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("TownType");
				$("#select163").html("");
				$("#select163").append("<option value=''>商圈</option>");
				for(var i = 0; i < properties.length; i++) {
					var TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
					var TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					$("#select163").append("<option value = '" + TownID + "'>" + TownName + "</option>")
				}
			}
		});
	})
	
	$("#select172").change(function() {
		$.ajax({
			url: "/Fang3FangWeb/Users",
			type: "POST",
			dataType: "xml",
			data: "useraction=Users&referaction=SelectTownByDistrictID&DistrictID=" + $("#select172").val(),
			success: function(xml){
				 
				var properties = xml.getElementsByTagName("TownType");
				$("#select173").html("");
				$("#select173").append("<option value=''>商圈</option>");
				for(var i = 0; i < properties.length; i++) {
					var TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
					var TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					$("#select173").append("<option value = '" + TownID + "'>" + TownName + "</option>")
				}
			}
		});
	})				
			
	 
});


function DisplayTownRightNow() {
	$.ajax({
		url: "/Fang3FangWeb/Users",
		type: "POST",
		dataType: "xml",
		data: "useraction=Users&referaction=SelectTownByDistrictID&DistrictID=" + $("#DistrictID").val(),
		success: function(xml){
			DisplayClear("TownID");
			$("#TownID").append("<option value = ''>请选择</option>");
			var properties = xml.getElementsByTagName("TownType");
			for(var i = 0; i < properties.length; i++) {
				var TownID = $.trim(properties[i].getElementsByTagName("TownID")[0].firstChild.nodeValue);
				var TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
				$("#TownID").append("<option value = '" + TownID + "'>" + TownName + "</option>")
			}
		}
	})
}