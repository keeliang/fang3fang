$(document).ready(function() {
	$("#Loading").ajaxStart(function(){
		$(this).find("h1").text("数据正在加载中...");
		$(this).find("img").attr("src","../images/Loading.gif");
		$(this).find("h2").text("正在处理你的请求,请不要刷新,稍候片刻...");
		$(this).show();
	});
	$("#Loading").ajaxSuccess(function(){
		$(this).hide();
	});
	$("#Loading").ajaxError(function() {
		$(this).find("h1").text("数据加载失败");
		$(this).find("img").attr("src","../images/Error.png");
		$(this).find("h2").text("请检查网络或者隔一段时间再试...");
		setTimeout(function() {
			$("#Loading").hide();
		}, 500);
	});
});