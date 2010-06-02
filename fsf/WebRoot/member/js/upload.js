$(document).ready(function() {
	$('#UploadForm').ajaxForm({
		beforeSubmit: validate,	/*提交前先控制*/
		dataType: "xml",
		success: function(xml) {			  
			var FileName = xml.getElementsByTagName("FileName");
			var imageID = $.trim(FileName[0].getElementsByTagName("imageID")[0].firstChild.nodeValue);	    			  
	        var filename = $.trim(FileName[0].getElementsByTagName("filename")[0].firstChild.nodeValue);	       
	        var pathfilename = $.trim(FileName[0].getElementsByTagName("pathfilename")[0].firstChild.nodeValue);	        
	        var realfilename = $.trim(FileName[0].getElementsByTagName("realfilename")[0].firstChild.nodeValue);	      
	        $("#filename").append("<option selected value = '" + imageID + "'>" + filename + "</option>"); 	        
		},
		error: function() {
			alert("粘贴失败,请检查选择文件是否合适");
			$('#UploadForm').resetForm();
		}
    });
    $('#CancelForm').ajaxForm({		 
		dataType: "xml",
		success: function(xml) {			  
			$("#filename").empty();			 
		},
		error: function() {			 
			alert("删除上载文件失败,请检查确认相关操作");
		}
    });    
    $('#button').click(function() {             
           history.go(-1);
    });		 
});


function validate() { 
	if (!(
		$("#UploadForm").validate({
			rules: {
				selectfilename: "required"				 
			},
			messages: {
			    selectfilename: "请选择文件"				 
			}
		}).form()
	)){	
	  return false;
	}else if (!($("#filename").children("option").size()<1)) {
	  alert("只允许粘贴一个图片文件");
	  return false;
	}
}
 
 