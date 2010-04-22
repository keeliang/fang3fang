
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName)+"&SellorRent=" + $("#select110").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
					 
			}
		   
		   if ($("#select110").val()=='0'){	 
		     $("#select118").html("");
		     $("#select128").html("");
		     $("#select138").html("");
		     $("#select148").html("");
		     $("#select158").html("");
		     $("#select168").html("");
		     $("#select178").html("");
		     $("#select118").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		     $("#select128").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		     $("#select138").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		     $("#select148").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		     $("#select158").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		     $("#select168").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		     $("#select178").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		     	           
	         $("#PriceContent").html("");
	         $("#PriceContent").append("[价格查询]： ");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30万以下&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>30万以下</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30-60万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>30-60万</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C60-100万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>60-100万</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C100-150万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>100-150万</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C150-200万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>150-200万</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C200-300万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>200-300万</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C300-500万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>300-500万</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500万以上&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>500万以上</u> </a>");
	       }else if ($("#select110").val()=='1'){	
	         $("#select118").html("");
		     $("#select128").html("");
		     $("#select138").html("");
		     $("#select148").html("");
		     $("#select158").html("");
		     $("#select168").html("");
		     $("#select178").html("");
		     $("#select118").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		     $("#select128").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		     $("#select138").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		     $("#select148").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		     $("#select158").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		     $("#select168").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		     $("#select178").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		    	           
	         $("#PriceContent").html("");
	         $("#PriceContent").append("[价格查询]： ");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500元以下&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>500元以下</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500-1000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>500-1000元</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1000-1500元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>1000-1500元</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1500-2000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>1500-2000元</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C2000-3000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>2000-3000元</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C3000-4000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>3000-4000元</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C4000-5000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>4000-5000元</u> </a>");
	         $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C5000元以上&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>5000元以上</u> </a>");
	       }
		   $("#AreaContent").html(""); 
		   $("#AreaContent").append("[面积查询]： ");
	       $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40平米以下&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>40平米以下</u> </a>");
	       $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40-60平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>40-60平米</u> </a>");
	       $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A60-80平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>60-80平米</u> </a>");
	       $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A80-110平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>80-110平米</u> </a>");
	       $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A110-130平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>110-130平米</u> </a>");
	       $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A130-150平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>130-150平米</u> </a>");
	       $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A150-200平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>150-200平米</u> </a>");
	       $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A200-300平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>200-300平米</u> </a>");	
		   $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A300-500平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>300-500平米</u> </a>");	 
		   $("#HouseTypeContent").html(""); 
		   $("#HouseTypeContent").append("[房型查询]： ");
		   $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R一房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>一房</u> </a>");
	       $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R二房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>二房</u> </a>");
	       $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R三房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>三房</u> </a>");
	       $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R四房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>四房</u> </a>");
	       $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>五房</u> </a>");
	       $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房以上&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：");
	       $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P普通住宅&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>普通住宅</u> </a>");
	       $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P公寓&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>公寓</u> </a>");	
		   $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P商铺&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>商铺</u> </a>");
		   $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P别墅&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>别墅</u> </a>");
	       $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P写字楼&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>写字楼</u> </a>");	
		   $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P仓库厂房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>仓库厂房</u> </a>");	 
		   $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P车位&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>车位</u> </a>");	 	 	 
		}
	});	
	
	$("#select110").change(function() {
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName)+"&SellorRent=" + $("#select110").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
				}			 
		      }
	     });		
	    if ($("#select110").val()=='0'){
	       $("#select118").html("");
		   $("#select128").html("");
		   $("#select138").html("");
		   $("#select148").html("");
		   $("#select158").html("");
		   $("#select168").html("");
		   $("#select178").html("");
		   $("#select118").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		   $("#select128").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		   $("#select138").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		   $("#select148").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		   $("#select158").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		   $("#select168").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
		   $("#select178").append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');
			    	       
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30万以下&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>30万以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30-60万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>30-60万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C60-100万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>60-100万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C100-150万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>100-150万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C150-200万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>150-200万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C200-300万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>200-300万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C300-500万&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>300-500万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500万以上&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>500万以上</u> </a>");
	    }
	    else if ($("#select110").val()=='1'){
	       $("#select118").html("");
		   $("#select128").html("");
		   $("#select138").html("");
		   $("#select148").html("");
		   $("#select158").html("");
		   $("#select168").html("");
		   $("#select178").html("");
		   $("#select118").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		   $("#select128").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		   $("#select138").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		   $("#select148").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		   $("#select158").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		   $("#select168").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
		   $("#select178").append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
			    	    
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500元以下&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>500元以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500-1000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>500-1000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1000-1500元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>1000-1500元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1500-2000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>1500-2000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C2000-3000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>2000-3000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C3000-4000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>3000-4000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C4000-5000元&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>4000-5000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C5000元以上&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>5000元以上</u> </a>");
	    }
	    $("#AreaContent").html(""); 
	    $("#AreaContent").append("[面积查询]： ");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40平米以下&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>40平米以下</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40-60平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>40-60平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A60-80平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>60-80平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A80-110平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>80-110平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A110-130平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>110-130平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A130-150平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>130-150平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A150-200平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>150-200平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A200-300平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>200-300平米</u> </a>");	
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A300-500平米&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>300-500平米</u> </a>");	 
	    $("#HouseTypeContent").html(""); 
	    $("#HouseTypeContent").append("[房型查询]： ");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R一房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>一房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R二房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>二房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R三房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>三房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R四房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>四房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>五房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房以上&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P普通住宅&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>普通住宅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P公寓&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>公寓</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P商铺&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>商铺</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P别墅&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>别墅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P写字楼&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>写字楼</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P仓库厂房&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>仓库厂房</u> </a>");	 
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P车位&SellorRent=" + $("#select110").val()+"'   class='cRed'><u>车位</u> </a>");	
	    
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) +"&SellorRent=" + $("#select110").val()+ "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select120").change(function() {
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName)+"&SellorRent=" + $("#select120").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
				}			 
		      }
	     });		
	    if ($("#select120").val()=='0'){	       
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30万以下&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>30万以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30-60万&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>30-60万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C60-100万&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>60-100万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C100-150万&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>100-150万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C150-200万&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>150-200万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C200-300万&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>200-300万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C300-500万&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>300-500万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500万以上&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>500万以上</u> </a>");
	    }
	    else if ($("#select120").val()=='1'){	    
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500元以下&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>500元以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500-1000元&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>500-1000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1000-1500元&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>1000-1500元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1500-2000元&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>1500-2000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C2000-3000元&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>2000-3000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C3000-4000元&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>3000-4000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C4000-5000元&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>4000-5000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C5000元以上&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>5000元以上</u> </a>");
	    }
	    $("#AreaContent").html(""); 
	    $("#AreaContent").append("[面积查询]： ");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40平米以下&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>40平米以下</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40-60平米&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>40-60平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A60-80平米&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>60-80平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A80-120平米&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>80-110平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A110-130平米&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>110-130平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A130-150平米&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>130-150平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A150-200平米&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>150-200平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A200-300平米&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>200-300平米</u> </a>");	
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A300-500平米&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>300-500平米</u> </a>");	 
	    $("#HouseTypeContent").html(""); 
	    $("#HouseTypeContent").append("[房型查询]： ");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R一房&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>一房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R二房&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>二房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R三房&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>三房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R四房&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>四房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>五房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房以上&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P普通住宅&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>普通住宅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P公寓&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>公寓</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P商铺&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>商铺</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P别墅&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>别墅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P写字楼&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>写字楼</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P仓库厂房&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>仓库厂房</u> </a>");	 
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P车位&SellorRent=" + $("#select120").val()+"'   class='cRed'><u>车位</u> </a>");	
	    
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "&SellorRent=" + $("#select120").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select130").change(function() {
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName)+"&SellorRent=" + $("#select130").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
				}			 
		      }
	     });		
	    if ($("#select130").val()=='0'){	       
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30万以下&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>30万以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30-60万&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>30-60万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C60-100万&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>60-100万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C100-150万&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>100-150万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C150-200万&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>150-200万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C200-300万&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>200-300万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C300-500万&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>300-500万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500万以上&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>500万以上</u> </a>");
	    }
	    else if ($("#select130").val()=='1'){	    
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500元以下&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>500元以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500-1000元&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>500-1000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1000-1500元&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>1000-1500元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1500-2000元&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>1500-2000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C2000-3000元&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>2000-3000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C3000-4000元&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>3000-4000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C4000-5000元&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>4000-5000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C5000元以上&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>5000元以上</u> </a>");
	    }
	    $("#AreaContent").html(""); 
	    $("#AreaContent").append("[面积查询]： ");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40平米以下&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>40平米以下</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40-60平米&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>40-60平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A60-80平米&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>60-80平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A80-120平米&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>80-110平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A110-130平米&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>110-130平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A130-150平米&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>130-150平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A150-200平米&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>150-200平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A200-300平米&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>200-300平米</u> </a>");	
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A300-500平米&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>300-500平米</u> </a>");	 
	    $("#HouseTypeContent").html(""); 
	    $("#HouseTypeContent").append("[房型查询]： ");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R一房&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>一房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R二房&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>二房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R三房&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>三房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R四房&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>四房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>五房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房以上&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P普通住宅&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>普通住宅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P公寓&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>公寓</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P商铺&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>商铺</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P别墅&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>别墅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P写字楼&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>写字楼</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P仓库厂房&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>仓库厂房</u> </a>");	 
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P车位&SellorRent=" + $("#select130").val()+"'   class='cRed'><u>车位</u> </a>");	
	    
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) +"&SellorRent=" + $("#select130").val()+ "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select140").change(function() {
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName)+"&SellorRent=" + $("#select140").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
				}			 
		      }
	     });		
	    if ($("#select140").val()=='0'){	       
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30万以下&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>30万以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30-60万&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>30-60万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C60-100万&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>60-100万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C100-150万&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>100-150万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C150-200万&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>150-200万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C200-300万&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>200-300万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C300-500万&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>300-500万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500万以上&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>500万以上</u> </a>");
	    }
	    else if ($("#select140").val()=='1'){	    
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500元以下&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>500元以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500-1000元&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>500-1000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1000-1500元&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>1000-1500元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1500-2000元&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>1500-2000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C2000-3000元&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>2000-3000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C3000-4000元&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>3000-4000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C4000-5000元&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>4000-5000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C5000元以上&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>5000元以上</u> </a>");
	    }
	    $("#AreaContent").html(""); 
	    $("#AreaContent").append("[面积查询]： ");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40平米以下&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>40平米以下</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40-60平米&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>40-60平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A60-80平米&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>60-80平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A80-120平米&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>80-110平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A110-130平米&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>110-130平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A130-150平米&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>130-150平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A150-200平米&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>150-200平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A200-300平米&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>200-300平米</u> </a>");	
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A300-500平米&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>300-500平米</u> </a>");	 
	    $("#HouseTypeContent").html(""); 
	    $("#HouseTypeContent").append("[房型查询]： ");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R一房&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>一房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R二房&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>二房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R三房&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>三房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R四房&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>四房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>五房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房以上&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P普通住宅&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>普通住宅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P公寓&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>公寓</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P商铺&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>商铺</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P别墅&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>别墅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P写字楼&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>写字楼</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P仓库厂房&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>仓库厂房</u> </a>");	 
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P车位&SellorRent=" + $("#select140").val()+"'   class='cRed'><u>车位</u> </a>");	
	    
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
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) +"&SellorRent=" + $("#select140").val()+ "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
		
	})
	
	$("#select150").change(function() {
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName)+"&SellorRent=" + $("#select150").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
				}			 
		      }
	     });		
	    if ($("#select150").val()=='0'){	       
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30万以下&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>30万以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30-60万&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>30-60万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C60-100万&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>60-100万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C100-150万&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>100-150万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C150-200万&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>150-200万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C200-300万&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>200-300万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C300-500万&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>300-500万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500万以上&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>500万以上</u> </a>");
	    }
	    else if ($("#select150").val()=='1'){	    
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500元以下&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>500元以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500-1000元&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>500-1000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1000-1500元&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>1000-1500元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1500-2000元&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>1500-2000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C2000-3000元&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>2000-3000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C3000-4000元&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>3000-4000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C4000-5000元&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>4000-5000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C5000元以上&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>5000元以上</u> </a>");
	    }
	    $("#AreaContent").html(""); 
	    $("#AreaContent").append("[面积查询]： ");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40平米以下&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>40平米以下</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40-60平米&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>40-60平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A60-80平米&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>60-80平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A80-120平米&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>80-110平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A110-130平米&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>110-130平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A130-150平米&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>130-150平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A150-200平米&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>150-200平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A200-300平米&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>200-300平米</u> </a>");	
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A300-500平米&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>300-500平米</u> </a>");	 
	    $("#HouseTypeContent").html(""); 
	    $("#HouseTypeContent").append("[房型查询]： ");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R一房&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>一房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R二房&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>二房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R三房&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>三房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R四房&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>四房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>五房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房以上&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P普通住宅&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>普通住宅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P公寓&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>公寓</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P商铺&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>商铺</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P别墅&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>别墅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P写字楼&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>写字楼</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P仓库厂房&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>仓库厂房</u> </a>");	 
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P车位&SellorRent=" + $("#select150").val()+"'   class='cRed'><u>车位</u> </a>");	
	    
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
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) +"&SellorRent=" + $("#select150").val()+ "' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select160").change(function() {
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName)+"&SellorRent=" + $("#select160").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
				}			 
		      }
	     });		
	    if ($("#select160").val()=='0'){	       
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30万以下&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>30万以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30-60万&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>30-60万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C60-100万&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>60-100万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C100-150万&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>100-150万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C150-200万&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>150-200万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C200-300万&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>200-300万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C300-500万&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>300-500万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500万以上&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>500万以上</u> </a>");
	    }
	    else if ($("#select160").val()=='1'){	    
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500元以下&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>500元以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500-1000元&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>500-1000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1000-1500元&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>1000-1500元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1500-2000元&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>1500-2000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C2000-3000元&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>2000-3000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C3000-4000元&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>3000-4000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C4000-5000元&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>4000-5000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C5000元以上&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>5000元以上</u> </a>");
	    }
	    $("#AreaContent").html(""); 
	    $("#AreaContent").append("[面积查询]： ");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40平米以下&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>40平米以下</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40-60平米&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>40-60平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A60-80平米&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>60-80平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A80-120平米&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>80-110平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A110-130平米&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>110-130平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A130-150平米&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>130-150平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A150-200平米&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>150-200平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A200-300平米&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>200-300平米</u> </a>");	
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A300-500平米&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>300-500平米</u> </a>");	 
	    $("#HouseTypeContent").html(""); 
	    $("#HouseTypeContent").append("[房型查询]： ");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R一房&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>一房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R二房&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>二房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R三房&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>三房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R四房&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>四房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>五房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房以上&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P普通住宅&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>普通住宅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P公寓&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>公寓</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P商铺&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>商铺</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P别墅&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>别墅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P写字楼&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>写字楼</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P仓库厂房&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>仓库厂房</u> </a>");	 
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P车位&SellorRent=" + $("#select160").val()+"'   class='cRed'><u>车位</u> </a>");	
	    
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
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) + "&SellorRent=" + $("#select160").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
				}				 
			}
		});
	})
	
	$("#select170").change(function() {
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
					
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName)+"&SellorRent=" + $("#select170").val()+"' class='cRed'><u>" + DistrictName + "</u></a>");
				}			 
		      }
	     });		
	    if ($("#select170").val()=='0'){	       
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30万以下&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>30万以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C30-60万&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>30-60万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C60-100万&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>60-100万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C100-150万&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>100-150万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C150-200万&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>150-200万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C200-300万&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>200-300万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C300-500万&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>300-500万</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500万以上&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>500万以上</u> </a>");
	    }
	    else if ($("#select170").val()=='1'){	    
	       $("#PriceContent").html("");
	       $("#PriceContent").append("[价格查询]： ");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500元以下&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>500元以下</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C500-1000元&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>500-1000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1000-1500元&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>1000-1500元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C1500-2000元&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>1500-2000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C2000-3000元&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>2000-3000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C3000-4000元&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>3000-4000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C4000-5000元&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>4000-5000元</u> </a>");
	       $("#PriceContent").append("<a href='../Search/QuickSearch.jsp?Title=C5000元以上&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>5000元以上</u> </a>");
	    }
	    $("#AreaContent").html(""); 
	    $("#AreaContent").append("[面积查询]： ");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40平米以下&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>40平米以下</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A40-60平米&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>40-60平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A60-80平米&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>60-80平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A80-120平米&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>80-110平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A110-130平米&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>110-130平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A130-150平米&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>130-150平米</u> </a>");
        $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A150-200平米&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>150-200平米</u> </a>");
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A200-300平米&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>200-300平米</u> </a>");	
	    $("#AreaContent").append("<a href='../Search/QuickSearch.jsp?Title=A300-500平米&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>300-500平米</u> </a>");	 
	    $("#HouseTypeContent").html(""); 
	    $("#HouseTypeContent").append("[房型查询]： ");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R一房&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>一房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R二房&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>二房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R三房&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>三房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R四房&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>四房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>五房</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=R五房以上&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P普通住宅&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>普通住宅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P公寓&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>公寓</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P商铺&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>商铺</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P别墅&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>别墅</u> </a>");
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P写字楼&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>写字楼</u> </a>");	
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P仓库厂房&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>仓库厂房</u> </a>");	 
	    $("#HouseTypeContent").append("<a href='../Search/QuickSearch.jsp?Title=P车位&SellorRent=" + $("#select170").val()+"'   class='cRed'><u>车位</u> </a>");	
	    
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
					$("#QuickSearchContent").append("<a href='../Search/QuickSearch.jsp?Title=D" + encodeURI(DistrictName) +"&SellorRent=" + $("#select170").val()+ "' class='cRed'><u>" + DistrictName + "</u></a>");
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

 