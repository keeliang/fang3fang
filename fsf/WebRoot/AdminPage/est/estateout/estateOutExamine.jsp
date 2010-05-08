<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <%@ include file="/share/share.jsp" %>
</head>
<body>
<s:radio list="@fsf.web.common.SelectTagStaticUtil@getConfig('$examine')" 
name="examine" id="examine" listValue="itemName" listKey="itemKey" onclick="f_changeExamine()" />
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
</script>
</html>
