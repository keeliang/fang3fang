$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/AllTop10",
		type: "POST",
		dataType: "xml",
		data: "referaction=Proxy",
		success: function(xml){			
			var ProxyCSTop10 = xml.getElementsByTagName("ProxyCSTop10").item(0);
				properties = ProxyCSTop10.getElementsByTagName("Message");
				for(var i = 0; i < properties.length; i++) {
					PCSID = $.trim(properties[i].getElementsByTagName("PCSID")[0].firstChild.nodeValue);
					PropertyName = $.trim(properties[i].getElementsByTagName("PropertyName")[0].firstChild.nodeValue);
					CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
					TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					Room = $.trim(properties[i].getElementsByTagName("Room")[0].firstChild.nodeValue);
					Hall = $.trim(properties[i].getElementsByTagName("Hall")[0].firstChild.nodeValue);
					Toilet = $.trim(properties[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue);
					Area = $.trim(properties[i].getElementsByTagName("Area")[0].firstChild.nodeValue);
					Cost = $.trim(properties[i].getElementsByTagName("Cost")[0].firstChild.nodeValue);
					$("#ProxyCSUl").append('<li>\n<a href="Others_ProxyCSShowDetails.jsp?PCSID='+PCSID+'" title="'+PropertyName+'">\n<span class="Span1 DisplayInlineBlock">'+PropertyName+'</span>\n</a>\n<span class="Span2 DisplayInlineBlock">' + CityName + "&nbsp;&nbsp;" + TownName + '</span>\n<span class="Span3 DisplayInlineBlock"><span style="color: #FF3300">'+Room+'</span>室<span style="color: #FF3300">'+Hall+'</span>厅<span style="color: #FF3300">'+Toilet+'</span>卫</span>\n<span class="Span4 DisplayInlineBlock"><span style="color: #FF3300">'+Area+'</span>m<sup><span style="font-size:7px">2</span></sup></span>\n<span class="Span5 DisplayInlineBlock"><span style="color: #FF3300">'+Cost+'</span>万元</span>\n</li>');
				}
			var ProxyCZTop10 = xml.getElementsByTagName("ProxyCZTop10").item(0);
				properties = ProxyCZTop10.getElementsByTagName("Message");
				for(var i = 0; i < properties.length; i++) {
					PCZID = $.trim(properties[i].getElementsByTagName("PCZID")[0].firstChild.nodeValue);
					PropertyName = $.trim(properties[i].getElementsByTagName("PropertyName")[0].firstChild.nodeValue);
					CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
					TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					Room = $.trim(properties[i].getElementsByTagName("Room")[0].firstChild.nodeValue);
					Hall = $.trim(properties[i].getElementsByTagName("Hall")[0].firstChild.nodeValue);
					Toilet = $.trim(properties[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue);
					Area = $.trim(properties[i].getElementsByTagName("Area")[0].firstChild.nodeValue);
					Cost = $.trim(properties[i].getElementsByTagName("Cost")[0].firstChild.nodeValue);
					$("#ProxyCZUl").append('<li>\n<a href="Others_ProxyCZShowDetails.jsp?PCZID='+PCZID+'" title="'+PropertyName+'">\n<span class="Span1 DisplayInlineBlock">'+PropertyName+'</span>\n</a>\n<span class="Span2 DisplayInlineBlock">' + CityName + "&nbsp;&nbsp;" + TownName + '</span>\n<span class="Span3 DisplayInlineBlock"><span style="color: #FF3300">'+Room+'</span>室<span style="color: #FF3300">'+Hall+'</span>厅<span style="color: #FF3300">'+Toilet+'</span>卫</span>\n<span class="Span4 DisplayInlineBlock"><span style="color: #FF3300">'+Area+'</span>m<sup><span style="font-size:7px">2</span></sup></span>\n<span class="Span5 DisplayInlineBlock"><span style="color: #FF3300">'+Cost+'</span>元</span>\n</li>');
				}
			var ProxyQGTop10 = xml.getElementsByTagName("ProxyQGTop10").item(0);
				properties = ProxyQGTop10.getElementsByTagName("Message");
				for(var i = 0; i < properties.length; i++) {
					PQGID = $.trim(properties[i].getElementsByTagName("PQGID")[0].firstChild.nodeValue);
					CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
					DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					Room = $.trim(properties[i].getElementsByTagName("Room")[0].firstChild.nodeValue);
					Hall = $.trim(properties[i].getElementsByTagName("Hall")[0].firstChild.nodeValue);
					Toilet = $.trim(properties[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue);
					Area1 = $.trim(properties[i].getElementsByTagName("Area1")[0].firstChild.nodeValue);
					Area2 = $.trim(properties[i].getElementsByTagName("Area2")[0].firstChild.nodeValue);
					Cost1 = $.trim(properties[i].getElementsByTagName("Cost1")[0].firstChild.nodeValue);
					Cost2 = $.trim(properties[i].getElementsByTagName("Cost2")[0].firstChild.nodeValue);
					$("#ProxyQSUl").append('<li>\n<a href="Others_ProxyQGShowDetails.jsp?PQGID='+PQGID+'" title="'+CityName+'&nbsp;&nbsp;'+DistrictName+'&nbsp;&nbsp;'+TownName+'">\n<span class="Span6 DisplayInlineBlock">'+CityName+'&nbsp;&nbsp;'+DistrictName+'&nbsp;&nbsp;'+TownName+'</span>\n</a>\n<span class="Span3 DisplayInlineBlock"><span style="color: #FF3300">'+Room+'</span>室<span style="color: #FF3300">'+Hall+'</span>厅<span style="color: #FF3300">'+Toilet+'</span>卫</span>\n<span class="Span7 Center DisplayInlineBlock"><span style="color: #FF3300">'+Area1+'</span>m<sup><span style="font-size:7px">2</span></sup>&nbsp;至&nbsp;<span style="color: #FF3300">'+Area2+'</span>m<sup><span style="font-size:7px">2</span></sup></span>\n<span class="Span8 Center DisplayInlineBlock"><span style="color: #FF3300">'+Cost1+'</span>万元&nbsp;至&nbsp;<span style="color: #FF3300">'+Cost2+'</span>万元</span>\n</li>');
				}
			var ProxyQZTop10 = xml.getElementsByTagName("ProxyQZTop10").item(0);
				properties = ProxyQZTop10.getElementsByTagName("Message");
				for(var i = 0; i < properties.length; i++) {
					PQZID = $.trim(properties[i].getElementsByTagName("PQZID")[0].firstChild.nodeValue);
					CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
					DistrictName = $.trim(properties[i].getElementsByTagName("DistrictName")[0].firstChild.nodeValue);
					TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					Room = $.trim(properties[i].getElementsByTagName("Room")[0].firstChild.nodeValue);
					Hall = $.trim(properties[i].getElementsByTagName("Hall")[0].firstChild.nodeValue);
					Toilet = $.trim(properties[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue);
					Area1 = $.trim(properties[i].getElementsByTagName("Area1")[0].firstChild.nodeValue);
					Area2 = $.trim(properties[i].getElementsByTagName("Area2")[0].firstChild.nodeValue);
					Cost1 = $.trim(properties[i].getElementsByTagName("Cost1")[0].firstChild.nodeValue);
					Cost2 = $.trim(properties[i].getElementsByTagName("Cost2")[0].firstChild.nodeValue);
					$("#ProxyQZUl").append('<li>\n<a href="Others_ProxyQZShowDetails.jsp?PQZID='+PQZID+'" title="'+CityName+'&nbsp;&nbsp;'+DistrictName+'&nbsp;&nbsp;'+TownName+'">\n<span class="Span6 DisplayInlineBlock">'+CityName+'&nbsp;&nbsp;'+DistrictName+'&nbsp;&nbsp;'+TownName+'</span>\n</a>\n<span class="Span3 DisplayInlineBlock"><span style="color: #FF3300">'+Room+'</span>室<span style="color: #FF3300">'+Hall+'</span>厅<span style="color: #FF3300">'+Toilet+'</span>卫</span>\n<span class="Span7 Center DisplayInlineBlock"><span style="color: #FF3300">'+Area1+'</span>m<sup><span style="font-size:7px">2</span></sup>&nbsp;至&nbsp;<span style="color: #FF3300">'+Area2+'</span>m<sup><span style="font-size:7px">2</span></sup></span>\n<span class="Span8 Center DisplayInlineBlock"><span style="color: #FF3300">'+Cost1+'</span>元&nbsp;至&nbsp;<span style="color: #FF3300">'+Cost2+'</span>元</span>\n</li>');
				}
			
		},
		error: function(obj, err)  {
			alert("錯誤：" + err);
		}
	});
})