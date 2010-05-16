<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/Common.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/css/AdminPage.css" />
</head>

<body>
<s:form action="provinceSave" namespace="/sysadmin/sys/province" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="provinceParameter.currentPage" />
<s:hidden name="provinceParameter.maxResults" />
<s:hidden name="provinceParameter._ne_provinceId" />
<s:hidden name="provinceParameter._se_provinceName" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_back('/sysadmin/sys/province/provinceList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="provinceId"/>:
					</td>
					<td>
						<s:textfield name="provinceId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="provinceName"/>:
					</td>
					<td>
						<s:textfield name="provinceName" /><font color="red">*</font>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</s:form>
</body>
</html>
<script type="text/javascript">
function f_validate(){
	fromName = "formItem";
	addfield("provinceId","<s:text name="provinceId"/>","Integer",false,10);
	addfield("provinceName","<s:text name="provinceName"/>","String",false,50);
	return validate();
}
</script>