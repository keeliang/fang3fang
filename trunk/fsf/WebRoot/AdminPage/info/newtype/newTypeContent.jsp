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
<s:form action="newTypeSave" namespace="/sysadmin/info/newtype" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="newTypeParameter.currentPage" />
<s:hidden name="newTypeParameter.maxResults" />
<s:hidden name="newTypeParameter._ne_newTypeId" />
<s:hidden name="newTypeParameter._se_title" />
<s:hidden name="newTypeParameter._ne_seq" />
<s:hidden name="newTypeParameter._ne_status" />
<s:hidden name="newTypeParameter._de_createTime" />
<s:hidden name="newTypeParameter._ne_createUserId" />
<s:hidden name="newTypeParameter._de_modifyTime" />
<s:hidden name="newTypeParameter._ne_modifyUserId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/info/newtype/newTypeList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="newTypeId"/>:
					</td>
					<td>
						<s:textfield name="newTypeId" /><font color="red">*</font>
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
						<s:text name="seq"/>:
					</td>
					<td>
						<s:textfield name="seq" /><font color="red">*</font>
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
						<s:text name="modifyTime"/>:
					</td>
					<td>
						<s:textfield name="modifyTime" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="modifyUserId"/>:
					</td>
					<td>
						<s:textfield name="modifyUserId" /><font color="red">*</font>
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
	addfield("newTypeId","<s:text name="newTypeId"/>","Integer",false,10);
	addfield("title","<s:text name="title"/>","String",false,20);
	addfield("seq","<s:text name="seq"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	addfield("modifyTime","<s:text name="modifyTime"/>","Date",false,19);
	addfield("modifyUserId","<s:text name="modifyUserId"/>","Integer",false,10);
	return validate();
}
</script>