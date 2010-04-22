/*IE6中出现“无法设置selected属性”的bug及解决方法*/
function ChangeSelectedObj(ObjID, ContainsText) {
	setTimeout(function() {
			$("select[@id="+ObjID+"] option:contains("+ContainsText+")").attr("selected", "true");
	}, 500);
	return $("#"+ObjID+" option:contains('" + ContainsText + "')").val();
}