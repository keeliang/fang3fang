$(document).ready(function() {
	$.ajax({
		url: "/Fang3FangWeb/Users",
		type: "POST",
		dataType: "xml",
		data: "useraction=Users&referaction=SelectDocumentType",
		success: function(xml){
			var properties = xml.getElementsByTagName("DocumentType");                                                                  //取证件类型信息
			for(var i = 0; i < properties.length; i++) {																									
				DocumentID = $.trim(properties[i].getElementsByTagName("DocumentID")[0].firstChild.nodeValue);
				DocumentTypeName = $.trim(properties[i].getElementsByTagName("DocumentTypeName")[0].firstChild.nodeValue);
				if ($("#DocumentTypeID")){
				   $("#DocumentTypeID").append("<option value = '" + DocumentID + "'>" + DocumentTypeName + "</option>");
				}
			}	
		}
	});		
});

 
 