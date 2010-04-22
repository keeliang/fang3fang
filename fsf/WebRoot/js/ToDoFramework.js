$(document).ready(function() {
	var nowFolding = "";
	$("#MFFB").click(function() {
		if(nowFolding == "MFFBDiv") {
			$("#"+nowFolding).hide("normal");
			nowFolding = "";
			return false;
		}
		$("#MFFBDiv").show("normal");
		if(nowFolding != "") {
			$("#"+nowFolding).hide("normal");
		}
		nowFolding = "MFFBDiv";
		return false;
	});
	$("#SFFB").click(function() {
		if(nowFolding == "SFFBDiv") {
			$("#"+nowFolding).hide("normal");
			nowFolding = "";
			return false;
		}
		$("#SFFBDiv").show("normal");
		if(nowFolding != "") {
			$("#"+nowFolding).hide("normal");
		}
		nowFolding = "SFFBDiv";
		return false;
	});
	$("#GLFB").click(function() {
		if(nowFolding == "GLFBDiv") {
			$("#"+nowFolding).hide("normal");
			nowFolding = "";
			return false;
		}
		$("#GLFBDiv").show("normal");
		if(nowFolding != "") {
			$("#"+nowFolding).hide("normal");
		}
		nowFolding = "GLFBDiv";
		return false;
	});
	$(".SubFolding").find("a").click(function() {
		ChangeIFrame(this.href);
		return false;
	});
	getURLParameter();
});
function getURLParameter() {
	var url = window.location.href;
	var href = url.indexOf('=');

	if (href == -1) return "";

	url=url.substring(href+1);
	ChangeIFrame(url);
}
function ChangeIFrame(href) {
	$("#CommonRightFrame").attr("src",href);
}