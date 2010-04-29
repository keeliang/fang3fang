<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/share.jsp" %>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
</head>

<body>
<s:form action="newsSave" namespace="/sysadmin/info/news" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="newsParameter.currentPage" />
<s:hidden name="newsParameter.maxResults" />
<s:hidden name="newsParameter._ne_newsId" />
<s:hidden name="newsParameter._se_informationTitle" />
<s:hidden name="newsParameter._se_informationContent" />
<s:hidden name="newsParameter._ne_informationType" />
<s:hidden name="newsParameter._ne_status" />
<s:hidden name="newsParameter._de_createTime" />
<s:hidden name="newsParameter._ne_createUserId" />
<s:hidden name="newsParameter._de_updateTime" />
<s:hidden name="newsParameter._ne_updateUserId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/info/news/newsList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="newsId"/>:
					</td>
					<td>
						<s:textfield name="newsId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="informationTitle"/>:
					</td>
					<td>
						<s:textfield name="informationTitle" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="informationContent"/>:
					</td>
					<td>
						<s:textfield name="informationContent" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="informationType"/>:
					</td>
					<td>
						<s:textfield name="informationType" /><font color="red">*</font>
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
	addfield("newsId","<s:text name="newsId"/>","Integer",false,10);
	addfield("informationTitle","<s:text name="informationTitle"/>","String",false,80);
	addfield("informationContent","<s:text name="informationContent"/>","String",false,65535);
	addfield("informationType","<s:text name="informationType"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
}
</script>