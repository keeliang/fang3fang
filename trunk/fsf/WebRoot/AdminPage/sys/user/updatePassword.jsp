<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/jquery.form.min.js"></script>
</head>

<body>
<s:form action="updatePasswordSave" namespace="/sysadmin/sys/user" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle">密码修改</div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<input type="hidden" name="userId"  value="${param.userId }" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
		</td>
	</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			新密码：
		</td>
		<td>
			<s:password name="newPassword" />
		</td>
	</tr>
	<tr>
		<td>
			新密码确认：
		</td>
		<td>
			<input id="confirmPassword" type="password" />
		</td>
	</tr>
</table>
</s:form>
</body>
</html>
<script type="text/javascript">
function f_validate(){
	fromName = "formItem";
	if(document.forms['formItem'].newPassword.value!=document.getElementById('confirmPassword').value){
		alert("确认密码和新密码不相同");
		document.getElementById('confirmPassword').value = "";
		return false;
	}
	addfield("newPassword","密码","String",false,50);
	return validate();
}
</script>