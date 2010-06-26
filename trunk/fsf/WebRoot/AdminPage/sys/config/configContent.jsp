<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath%>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath%>/css/AdminPage.css" />
</head>

<body>
<s:form action="configSave" namespace="/sysadmin/sys/config" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="sysConfigParameter.currentPage" />
<s:hidden name="sysConfigParameter.maxResults" />
<s:hidden name="sysConfigParameter._se_item" />

<s:hidden name="id"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/sys/config/configList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="item"/>:
					</td>
					<td>
						<s:textfield name="item" readonly="true"/><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="value"/>:
					</td>
					<td>
						<s:textfield name="value" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="itemDesc"/>:
					</td>
					<td>
						<s:textfield name="itemDesc" />
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
	addfield("item","<s:text name="item"/>","String",false,50);
	addfield("value","<s:text name="value"/>","String",false,200);
	addfield("itemDesc","<s:text name="itemDesc"/>","String",true,255);
	return validate();
}
</script>