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
<s:form action="districtSave" namespace="/sysadmin/sys/district" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="districtParameter.currentPage" />
<s:hidden name="districtParameter.maxResults" />
<s:hidden name="districtParameter._ne_districtId" />
<s:hidden name="districtParameter._se_districtName" />
<s:hidden name="districtParameter._ne_cityId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_back('/sysadmin/sys/district/districtList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="districtId"/>:
					</td>
					<td>
						<s:textfield name="districtId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="districtName"/>:
					</td>
					<td>
						<s:textfield name="districtName" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="cityId"/>:
					</td>
					<td>
						<s:textfield name="cityId" /><font color="red">*</font>
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
	addfield("districtId","<s:text name="districtId"/>","Integer",false,10);
	addfield("districtName","<s:text name="districtName"/>","String",false,50);
	addfield("cityId","<s:text name="cityId"/>","Integer",false,10);
	return validate();
}
</script>