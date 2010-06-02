

$(document).ready(function() { 
//	selectExpert();
	
});

function selectExpert() {
		$.ajax({
				url: "/Fang3FangWeb/Access",
				type: "POST",
				dataType: "xml",
				data: "useraction=Estates&referaction=SelectExperts",
				success: function(xml) {
				alert("ok");
					var properties = $(xml).find("Experts");
						$(properties).children().each(function() {
							$(this).text($.trim($(this).text()));
						})
						
						for(var i = 0; i < $(properties).length; i++) {
							var ExpertID = $(properties[i]).find("ExpertID").text();
							var Company = $(properties[i]).find("Company").text();
							var District = $(properties[i]).find("District").text();
							var EstateNumber = $(properties[i]).find("EstateNumber").text();
							var TradeNumberR = $(properties[i]).find("TradeNumberR").text();
							var TradeNumberS = $(properties[i]).find("TradeNumberS").text();
							var IsRecommend = $(properties[i]).find("IsRecommend").text();
							var Motto = $(properties[i]).find("Motto").text();
							var Experience = $(properties[i]).find("Experience").text();
							
							
							
																														
		
		}
						
					},
				error: function(a, b) {
					alert("Failed; Error : " + b );
					}
				});
				
				
}