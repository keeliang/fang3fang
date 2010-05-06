<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
</head>

<body>
<s:form action="citySave" namespace="/sysadmin/sys/city" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="cityParameter.currentPage" />
<s:hidden name="cityParameter.maxResults" />
<s:hidden name="cityParameter._ne_cityId" />
<s:hidden name="cityParameter._se_cityName" />
<s:hidden name="cityParameter._se_zipCode" />
<s:hidden name="cityParameter._ne_provinceId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_back('/sysadmin/sys/city/cityList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="cityId"/>:
					</td>
					<td>
						<s:textfield name="cityId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="cityName"/>:
					</td>
					<td>
						<s:textfield name="cityName" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="zipCode"/>:
					</td>
					<td>
						<s:textfield name="zipCode" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="provinceId"/>:
					</td>
					<td>
						<s:textfield name="provinceId" /><font color="red">*</font>
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
	addfield("cityId","<s:text name="cityId"/>","Integer",false,10);
	addfield("cityName","<s:text name="cityName"/>","String",false,50);
	addfield("zipCode","<s:text name="zipCode"/>","String",false,50);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",false,10);
	return validate();
}
</script>