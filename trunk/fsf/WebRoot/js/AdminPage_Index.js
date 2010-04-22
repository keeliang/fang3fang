$(document).ready(function() {
	$("ul > li > ul").hide();
	
	$(".MainLi > a").click(function() {
		$(this).next("ul").toggle("normal");
		$(this).toggleClass("NowLi");
		return false;
	});
	
	$("li > ul > li > a").click(function() {
		ChangeIFrame($(this).attr("href"));
		return false;
	});
});
function ChangeIFrame(href) {
	$("#RightFrame").attr("src",href);
}