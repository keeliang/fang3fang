$(document).ready(function() {
	$(".image").click(function() {
		$(this).attr("src", "CommonPage/image.jsp");
	}).hover(function() {
			$(this).css("cursor", "pointer")
		},
		function() {
			$(this).css("cursor", "auto")
		}
	)
})