function DeleteMes(url, referaction, IDName, ID) {
	$.ajax({
		url: url,
		type: "POST",
		data: "referaction=" + referaction + "&" + IDName + "=" + ID,
		success: function(){
			alert("删除成功!");
		}
	});
}