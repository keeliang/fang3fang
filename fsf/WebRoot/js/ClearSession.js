$(document).ready(function() { 
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=logout&exit=quit",
		success: function(xml){			 	 
		}
	});		 
});