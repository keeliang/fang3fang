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
<s:form action="newsTypeSave" namespace="/sysadmin/info/newstype" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="newsTypeParameter.currentPage" />
<s:hidden name="newsTypeParameter.maxResults" />
<s:hidden name="newsTypeParameter._ne_newsTypeId" />
<s:hidden name="newsTypeParameter._slike_title" />
<s:hidden name="newsTypeParameter._ne_status" />
<s:hidden name="newsTypeParameter._dge_createTime" />
<s:hidden name="newsTypeParameter._dle_createTime" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/info/newstype/newsTypeList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="newsTypeId"/>:
					</td>
					<td>
						<s:textfield name="newsTypeId" readonly="true" cssClass="memberC_input01_readonly" />
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
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="status" cssClass="dropdown" 
						id="status" listValue="itemName" listKey="itemKey" emptyOption="true"/><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="createTime"/>:
					</td>
					<td>
						<s:textfield name="createTime"  cssClass="memberC_input01_readonly" readonly="true">
							<s:param name="value">
								<s:date name="createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="createUserId"/>:
					</td>
					<td>
						<s:hidden name="createUserId"/>
						<input class="memberC_input01_readonly" readonly="true" 
						value="<fsf:dictTranslate groupName="#sys_user" value="updateUserId"/>">
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="updateTime"/>:
					</td>
					<td>
						<s:textfield name="updateTime"  cssClass="memberC_input01_readonly" readonly="true">
							<s:param name="value">
								<s:date name="updateTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="updateUserId"/>:
					</td>
					<td>
						<s:hidden name="updateUserId"/>
						<input class="memberC_input01_readonly" readonly="true" 
						value="<fsf:dictTranslate groupName="#sys_user" value="updateUserId"/>">
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
	//addfield("newsTypeId","<s:text name="newsTypeId"/>","Integer",false,10);
	addfield("title","<s:text name="title"/>","String",false,20);
	addfield("seq","<s:text name="seq"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	//addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	//addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	//addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	//addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
}
</script>