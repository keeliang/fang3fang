$(document).ready(function() {
	$("#Key").click(function() {
		if($(this).attr("value") == "关键字(地区/路段)") {
			$(this).toggleClass("GrayFont");
			$(this).toggleClass("BlackFont");
			$(this).attr("value", "");
		}
	});
	$("#Key").blur(function() {
		if($(this).attr("value") == "") {
			$(this).toggleClass("GrayFont");
			$(this).toggleClass("BlackFont");
			$(this).attr("value", "关键字(地区/路段)");
		}
	});
});