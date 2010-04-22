$(document).ready(function() {
	$("#SelectAll").click(function() {
		if($(":checkbox").attr("checked") == false) {
			$(":checkbox").attr("checked", true);
		} else {
			$(":checkbox").attr("checked", false);
		}
	});
});