var xmlHttp;
function validation(str) {
	xmlHttp = GetXmlHttpObject();
	if (xmlHttp == null) {
		alert("Your browser does not support AJAX!");
		return;
	}
	var UserName = document.getElementById("UserName").value;
	var url = "check.jsp?UserName=" + UserName;
	xmlHttp.onreadystatechange = stateChanged;
	xmlHttp.open("GET", url, true);
	xmlHttp.send(null);
}
function stateChanged() {
	if (xmlHttp.readyState == 4) {
		document.getElementById("c_UserName").innerHTML = xmlHttp.responseText;
	}
}
function GetXmlHttpObject() {
	var xmlHttp = null;
	try {
  // Firefox, Opera 8.0+, Safari
		xmlHttp = new XMLHttpRequest();
	}
	catch (e) {
  // Internet Explorer
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	return xmlHttp;
}
function password(){
//alert("asdf");
	var password = document.getElementById("UserPsw").value;
	var repassword = document.getElementById("ReUserPsw").value;
	if(password != repassword){
		document.getElementById("c_password").innerHTML = "密码必须一致！";
	}else{
		document.getElementById("c_password").innerHTML = "";
	}
}
