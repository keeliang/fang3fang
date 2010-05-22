$(document).ready(function() {
	ShowInformationDetail();
});
function ShowInformationDetail(){
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=findNewsByID&InfoID=IF00000002" ,
		cache: false,
		success: function(xml){
			    var properties = $(xml).find("Information")[0];			    
				var info_title = $(properties).find("InfoTitle").text();
				$("#info_title h1").empty();
				$("#info_title h1").append(info_title);
				
				var info_infoDate = $(properties).find("InfoDate").text();
				$("#info_infoDate").empty();
				$("#info_infoDate").append(info_infoDate);
				
				var info_infoContent = $(properties).find("InfoContent").text();
				$("#info_content").empty();
				$("#info_content").append(info_infoContent);
				
				var info_Owner = $(properties).find("Owner").text();
				$("#Owner").empty();
				$("#Owner").append(info_Owner);
				
				
				var info_Owner = $(properties).find("InfoFrom").text();
				$("#info_From").empty();
				$("#info_From").append(info_Owner);
				
		}
	});
}

	