
/*某些表单元素在载入时就已经得到其值*/
$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/Users",
		type: "POST",
		dataType: "xml",
		data: "useraction=Users&referaction=SelectJGMessage",
		success: function(xml){			
			var properties = xml.getElementsByTagName("DocumentType");                                                    //取得证件类型
			for(var i = 0; i < properties.length; i++) {
				DocumentID = $.trim(properties[i].getElementsByTagName("DocumentID")[0].firstChild.nodeValue);
				DocumentTypeName = $.trim(properties[i].getElementsByTagName("DocumentTypeName")[0].firstChild.nodeValue);
				if ($("#SellerDocumentTypeID")){
				   $("#SellerDocumentTypeID").append("<option value = '" + DocumentID + "'>" + DocumentTypeName + "</option>");
				}
			}	
			var properties = xml.getElementsByTagName("DocumentType");                                                    //取得证件类型
			for(var i = 0; i < properties.length; i++) {
				DocumentID = $.trim(properties[i].getElementsByTagName("DocumentID")[0].firstChild.nodeValue);
				DocumentTypeName = $.trim(properties[i].getElementsByTagName("DocumentTypeName")[0].firstChild.nodeValue);
				if ($("#BuyerDocumentTypeID")){
				   $("#BuyerDocumentTypeID").append("<option value = '" + DocumentID + "'>" + DocumentTypeName + "</option>");
				}
			}				
		}
	});	
});
