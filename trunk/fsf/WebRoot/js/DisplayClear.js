function DisplayClear(id) {
	var ObjID = document.getElementById(id);
	while(ObjID.childNodes.length > 0) {
		ObjID.removeChild(ObjID.childNodes[0]);
	}
}