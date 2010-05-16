<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ include file="/share/share.jsp" %>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/AdminPage.css" />

</head>
<body>
<div class="contentTitle">请选择审核状态</div>
<s:radio list="@fsf.web.common.SelectTagStaticUtil@getConfig('$examine')" 
name="examine" id="examine" listValue="itemName" listKey="itemKey" onclick="f_changeExamine()" />
<input type="button" onclick="f_save()" value="<s:text name="g_save" />" />
</body>
<script type="text/javascript">
window.onload = function(){
	f_changeExamine();
}
function f_changeExamine(){
	if(document.getElementById('examine1').checked){
		window.parent.document.getElementById('userSelect').src = "${contextPath}/sysadmin/sys/user/userList.action?cmd=select"	
	}else{
		window.parent.document.getElementById('userSelect').src = ""
	}
}
function f_save(){
	if(document.getElementById('examine0').checked){
		if(document.all){
			window.dialogArguments.f_finishSelectUser("0");
		}else{
			window.parent.opener.f_finishSelectUser("0");
		}
	}else if(document.getElementById('examine-1').checked){
		if(document.all){
			window.dialogArguments.f_finishSelectUser("-1");
		}else{
			window.parent.opener.f_finishSelectUser("-1");
		}
	}else {
		alert("请选择顾问");
		return;
	}
	window.parent.close();
}
</script>
</html>
