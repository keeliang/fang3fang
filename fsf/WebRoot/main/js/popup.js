var popupStatus = 0;

//loading popup with jQuery magic!
function loadPopup(){
	//loads popup only if it is disabled
	if(popupStatus==0){
		$("#backgroundPopup").css({
			"opacity": "0.3"
		});
		$("#backgroundPopup").fadeIn("slow");
		$("#popupContact").fadeIn("slow");
		popupStatus = 1;
	}
}

//disabling popup with jQuery magic!
function disablePopup(){
	//disables popup only if it is enabled
	if(popupStatus==1){
		$("#backgroundPopup").fadeOut("slow");
		$("#popupContact").fadeOut("slow");
		popupStatus = 0;
	}
}

//centering popup
function centerPopup(){
	//request data for centering
	var windowWidth = screen.width;
	var windowHeight = screen.height;
	var popupHeight = $("#popupContact").height();
	var popupWidth = $("#popupContact").width();
	
	//centering
	$("#popupContact").css({
		"position": "absolute",
		"top": windowHeight/4,
		"left": windowWidth/2-popupWidth/2
	});
	//only need force for IE6
	
	$("#backgroundPopup").css({
		"height": windowHeight
	});
}

//CONTROLLING EVENTS IN jQuery
$(document).ready(function(){
	//LOADING POPUP
	//Click the button event!
	$("#btnUpload").click(function(){
		//centering with css
		centerPopup();
		//load popup
		loadPopup();
	});
				
	//CLOSING POPUP
	//Click the x event!
	$("#popupContactClose").click(function(){
		disablePopup();
	});
	//Click out event!
	$("#backgroundPopup").click(function(){
		disablePopup();
	});
	//Press Escape event!
	$(document).keypress(function(e){
		if(e.keyCode==27 && popupStatus==1){
			disablePopup();
		}
	});
});

function f_upload(){
	var filePath = document.forms["uploadForm"].uploadFile.value;
	var allowedFile = "jpg,jpeg,gif";
	var fileType = filePath.substring(filePath.lastIndexOf(".")+1);
	if(allowedFile.indexOf(fileType)==-1){
		alert("不允许上传"+fileType+"文件");
		return;		
	}
	var respCallesBack = function(json){
		document.forms['formItem'].imagePath.value = json.data;
		$(document.forms['uploadForm'].uploadFile).after("<input name='deleteFilePath' type='hidden' value= '"+document.forms['formItem'].imagePath.value+"' />");
		alert(eval(json.msg));
		disablePopup();
	}
	var param = {dataType:"json",success:respCallesBack};
	document.getElementById("uploadForm").action = UploadActionName;
	$("#uploadForm").ajaxSubmit(param);
}