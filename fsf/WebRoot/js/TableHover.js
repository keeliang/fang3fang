function TableHover() {
	$("td[class!='TableTitle']").hover(function() {
		$(this).parent().addClass("TableTDSelect");
	},
	function() {
		$(this).parent().removeClass("TableTDSelect");
	});
}