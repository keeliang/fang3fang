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
<s:form action="commerceSave" namespace="/sysadmin/est/commerce" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="commerceParameter.currentPage" />
<s:hidden name="commerceParameter.maxResults" />
<s:hidden name="commerceParameter._ne_commerceId" />
<s:hidden name="commerceParameter._se_title" />
<s:hidden name="commerceParameter._se_content" />
<s:hidden name="commerceParameter._ne_provinceId" />
<s:hidden name="commerceParameter._ne_cityId" />
<s:hidden name="commerceParameter._ne_districtId" />
<s:hidden name="commerceParameter._ne_areaId" />
<s:hidden name="commerceParameter._ne_commerceType" />
<s:hidden name="commerceParameter._ne_status" />
<s:hidden name="commerceParameter._se_ip" />
<s:hidden name="commerceParameter._de_createTime" />
<s:hidden name="commerceParameter._ne_createUserId" />
<s:hidden name="commerceParameter._de_updateTime" />
<s:hidden name="commerceParameter._ne_updateUserId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/est/commerce/commerceList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="commerceId"/>:
					</td>
					<td>
						<s:textfield name="commerceId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="title"/>:
					</td>
					<td>
						<s:textfield name="title" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="content"/>:
					</td>
					<td>
						<s:textfield name="content" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="provinceId"/>:
					</td>
					<td>
						<s:textfield name="provinceId" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="cityId"/>:
					</td>
					<td>
						<s:textfield name="cityId" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="districtId"/>:
					</td>
					<td>
						<s:textfield name="districtId" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="areaId"/>:
					</td>
					<td>
						<s:textfield name="areaId" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="commerceType"/>:
					</td>
					<td>
						<s:textfield name="commerceType" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="status"/>:
					</td>
					<td>
						<s:textfield name="status" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="ip"/>:
					</td>
					<td>
						<s:textfield name="ip" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="createTime"/>:
					</td>
					<td>
						<s:textfield name="createTime" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="createUserId"/>:
					</td>
					<td>
						<s:textfield name="createUserId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="updateTime"/>:
					</td>
					<td>
						<s:textfield name="updateTime" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="updateUserId"/>:
					</td>
					<td>
						<s:textfield name="updateUserId" /><font color="red">*</font>
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
	addfield("commerceId","<s:text name="commerceId"/>","Integer",false,10);
	addfield("title","<s:text name="title"/>","String",false,50);
	addfield("content","<s:text name="content"/>","String",false,65535);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("commerceType","<s:text name="commerceType"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	addfield("ip","<s:text name="ip"/>","String",false,30);
	addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
}
</script>