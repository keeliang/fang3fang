function g_list(){
	if(!document.getElementById("formList").onsubmit || document.getElementById("formList").onsubmit()){
		document.getElementById("currentPage").value = "1";
		document.getElementById("formList").submit();
	}
}
function g_reset(){
	document.getElementById("formList").reset();
}
function g_new(url){
	document.forms["formList"].action = contextPath+url;
	document.forms["formList"].submit();
}
function g_save(){
	if(!document.getElementById("formItem").onsubmit || document.getElementById("formItem").onsubmit()){
		document.getElementById("formItem").submit();
	}
	
		
}
function g_edit(url){
	document.getElementById("formList").action = url;
	document.getElementById("formList").submit();
}
function g_delete(url){
	var bln = false;
	var arySelectedPK = document.getElementsByName("selectedPK");
	for(var i=0;i<arySelectedPK.length;i++){
		if(arySelectedPK[i].checked){
			bln = true;
			break;
		}
	}
	if(bln){
		if(confirm(confirmDelete)){
			document.getElementById("formList").action = contextPath+url;
			document.getElementById("formList").submit();
		}
	}
}
function g_back(url){
	document.getElementById("formItem").action = contextPath+url;
	document.getElementById("formItem").submit();
}
function g_gotoPage(pageNum,totalPage){
	if(totalPage && pageNum>totalPage){
		return;
	}
	document.getElementById("currentPage").value = pageNum;
	document.formList.submit();
}
function g_chageMaxResults(val){
	document.getElementById("maxResults").value = val;
	document.getElementById("currentPage").value = "";
	document.getElementById("formList").submit();
}
function g_select(o){
	var b = document.getElementById("listBody");
	for(var i=0;i<b.childNodes.length;i++){
		b.childNodes[i].firstChild.firstChild.checked = o.checked;
	}
}

//*******************************StringBuffer*******************************//
var StringBuffer = function (){
	this.a = [];
}
StringBuffer.prototype.append = function(str){
	this.a.push(str);
	return this;
}
StringBuffer.prototype.toString = function(){
	return this.a.join("");
}

function trim(str){    
 return str.replace(/(^\s*)|(\s*$)/g, "");    
}
function ltrim(str){  
 return str.replace(/(^\s*)/g,"");    
}    
function rtrim(str){    
 return str.replace(/(\s*$)/g,"");    
}