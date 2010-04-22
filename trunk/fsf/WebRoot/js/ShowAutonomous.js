$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/servlet/AllTop10",
		type: "POST",
		dataType: "xml",
		data: "referaction=Autonomous",
		success: function(xml){			
			var AutonomousCSTop10 = xml.getElementsByTagName("AutonomousCSTop10").item(0);
				properties = AutonomousCSTop10.getElementsByTagName("Message");
				for(var i = 0; i < properties.length; i++) {
					ACSID = $.trim(properties[i].getElementsByTagName("ACSID")[0].firstChild.nodeValue);
					PropertyName = $.trim(properties[i].getElementsByTagName("PropertyName")[0].firstChild.nodeValue);
					CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
					TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					Room = $.trim(properties[i].getElementsByTagName("Room")[0].firstChild.nodeValue);
					Hall = $.trim(properties[i].getElementsByTagName("Hall")[0].firstChild.nodeValue);
					Toilet = $.trim(properties[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue);
					Area = $.trim(properties[i].getElementsByTagName("Area")[0].firstChild.nodeValue);
					Cost = $.trim(properties[i].getElementsByTagName("Cost")[0].firstChild.nodeValue);
					$("#AutonomousCSUl").append('<li>\n<a href="Others_AutonomousCSShowDetails.jsp?ACSID='+ACSID+'" title="'+PropertyName+'">\n<span class="Span1 DisplayInlineBlock">'+PropertyName+'</span>\n</a>\n<span class="Span2 DisplayInlineBlock">' + CityName + "&nbsp;&nbsp;" + TownName + '</span>\n<span class="Span3 DisplayInlineBlock"><span style="color: #FF3300">'+Room+'</span>室<span style="color: #FF3300">'+Hall+'</span>厅<span style="color: #FF3300">'+Toilet+'</span>卫</span>\n<span class="Span4 DisplayInlineBlock"><span style="color: #FF3300">'+Area+'</span>m<sup><span style="font-size:7px">2</span></sup></span>\n<span class="Span5 DisplayInlineBlock"><span style="color: #FF3300">'+Cost+'</span>万元</span>\n</li>');
				}
			var AutonomousCZTop10 = xml.getElementsByTagName("AutonomousCZTop10").item(0);
				properties = AutonomousCZTop10.getElementsByTagName("Message");
				for(var i = 0; i < properties.length; i++) {
					ACZID = $.trim(properties[i].getElementsByTagName("ACZID")[0].firstChild.nodeValue);
					PropertyName = $.trim(properties[i].getElementsByTagName("PropertyName")[0].firstChild.nodeValue);
					CityName = $.trim(properties[i].getElementsByTagName("CityName")[0].firstChild.nodeValue);
					TownName = $.trim(properties[i].getElementsByTagName("TownName")[0].firstChild.nodeValue);
					Room = $.trim(properties[i].getElementsByTagName("Room")[0].firstChild.nodeValue);
					Hall = $.trim(properties[i].getElementsByTagName("Hall")[0].firstChild.nodeValue);
					Toilet = $.trim(properties[i].getElementsByTagName("Toilet")[0].firstChild.nodeValue);
					Area = $.trim(properties[i].getElementsByTagName("Area")[0].firstChild.nodeValue);
					Cost = $.trim(properties[i].getElementsByTagName("Cost")[0].firstChild.nodeValue);
					$("#AutonomousCZUl").append('<li>\n<a href="Others_AutonomousCZShowDetails.jsp?ACZID='+ACZID+'" title="'+PropertyName+'">\n<span class="Span1 DisplayInlineBlock">'+PropertyName+'</span>\n</a>\n<span class="Span2 DisplayInlineBlock">' + CityName + "&nbsp;&nbsp;" + TownName + '</span>\n<span class="Span3 DisplayInlineBlock"><span style="color: #FF3300">'+Room+'</span>室<span style="color: #FF3300">'+Hall+'</span>厅<span style="color: #FF3300">'+Toilet+'</span>卫</span>\n<span class="Span4 DisplayInlineBlock"><span style="color: #FF3300">'+Area+'</span>m<sup><span style="font-size:7px">2</span></sup></span>\n<span class="Span5 DisplayInlineBlock"><span style="color: #FF3300">'+Cost+'</span>元</span>\n</li>');
				}
			var AutonomousQGTop10 = xml.getElementsByTagName("AutonomousQGTop10").item(0);
				properties = AutonomousQGTop10.getElementsByTagName("Message");
				for(var i = 0; i < properties.length; i++) {
					AQGID = $.trim(properties[i].getElementsByTagName("AQGID")[0].firstChild.nodeValue);
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
					$("#AutonomousQSUl").append('<li>\n<a href="Others_AutonomousQGShowDetails.jsp?AQGID='+AQGID+'" title="'+CityName+'&nbsp;&nbsp;'+DistrictName+'&nbsp;&nbsp;'+TownName+'">\n<span class="Span6 DisplayInlineBlock">'+CityName+'&nbsp;&nbsp;'+DistrictName+'&nbsp;&nbsp;'+TownName+'</span>\n</a>\n<span class="Span3 DisplayInlineBlock"><span style="color: #FF3300">'+Room+'</span>室<span style="color: #FF3300">'+Hall+'</span>厅<span style="color: #FF3300">'+Toilet+'</span>卫</span>\n<span class="Span7 Center DisplayInlineBlock"><span style="color: #FF3300">'+Area1+'</span>m<sup><span style="font-size:7px">2</span></sup>&nbsp;至&nbsp;<span style="color: #FF3300">'+Area2+'</span>m<sup><span style="font-size:7px">2</span></sup></span>\n<span class="Span8 Center DisplayInlineBlock"><span style="color: #FF3300">'+Cost1+'</span>万元&nbsp;至&nbsp;<span style="color: #FF3300">'+Cost2+'</span>万元</span>\n</li>');
				}
			var AutonomousQZTop10 = xml.getElementsByTagName("AutonomousQZTop10").item(0);
				properties = AutonomousQZTop10.getElementsByTagName("Message");
				for(var i = 0; i < properties.length; i++) {
					AQZID = $.trim(properties[i].getElementsByTagName("AQZID")[0].firstChild.nodeValue);
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
					$("#AutonomousQZUl").append('<li>\n<a href="Others_AutonomousQZShowDetails.jsp?AQZID='+AQZID+'" title="'+CityName+'&nbsp;&nbsp;'+DistrictName+'&nbsp;&nbsp;'+TownName+'">\n<span class="Span6 DisplayInlineBlock">'+CityName+'&nbsp;&nbsp;'+DistrictName+'&nbsp;&nbsp;'+TownName+'</span>\n</a>\n<span class="Span3 DisplayInlineBlock"><span style="color: #FF3300">'+Room+'</span>室<span style="color: #FF3300">'+Hall+'</span>厅<span style="color: #FF3300">'+Toilet+'</span>卫</span>\n<span class="Span7 Center DisplayInlineBlock"><span style="color: #FF3300">'+Area1+'</span>m<sup><span style="font-size:7px">2</span></sup>&nbsp;至&nbsp;<span style="color: #FF3300">'+Area2+'</span>m<sup><span style="font-size:7px">2</span></sup></span>\n<span class="Span8 Center DisplayInlineBlock"><span style="color: #FF3300">'+Cost1+'</span>元&nbsp;至&nbsp;<span style="color: #FF3300">'+Cost2+'</span>元</span>\n</li>');
				}
			
		},
		error: function(obj, err)  {
			alert("錯誤：" + err);
		}
	});
})