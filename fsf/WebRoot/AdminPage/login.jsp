<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<%@include file="/share/share.jsp"%>
<%@include file="/share/validate.jsp" %>
<title>LOGIN</title>
</head>
<body>
<s:form action="login" namespace="/AdminPage" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<table style="width: 100%;height: 100%" >
	<tr>
		<td width="20%"></td>
		<td></td>
		<td width="20%"></td>
	</tr>
	<tr>
		<td></td>
		<td>
			<div style="margin:auto auto; width: 500px;height: 100%">
			<div id="errorMsg" class="errorMsg" ><s:actionerror/><s:actionmessage/></div>
				<table>
					<tr>
						<td><s:text name="userCode"/>:</td>
						<td><s:textfield name="userCode" value="admin"/></td>
					</tr>
					<tr>
						<td><s:text name="password"/>:</td>
						<td><s:textfield name="password" value="admin" /></td>
					</tr>
					<tr>
						<td colspan="2">
						<s:submit></s:submit>
						</td>
					</tr>
				</table>
			</div>
		</td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table>
</s:form>
</body>
</html>
<script type="text/javascript">
function f_validate(){
	fromName = "formItem";
	addfield("userCode","<s:text name="userCode"/>","String",false,50);
	addfield("password","<s:text name="password"/>","String",false,50);
	return validate();
}
</script>