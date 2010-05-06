<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="/fckeditor/fckeditor.js"></script>
</head>

<body>
<s:form action="newsSave" namespace="/sysadmin/info/news" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="newsParameter.currentPage" />
<s:hidden name="newsParameter.maxResults" />
<s:hidden name="newsParameter._ne_newsId" />
<s:hidden name="newsParameter._slike_newsTitle" />
<s:hidden name="newsParameter._ne_newsTypeId" />
<s:hidden name="newsParameter._ne_status" />
<s:hidden name="newsParameter._dge_createTime"/>
<s:hidden name="newsParameter._dle_createTime"/>

<s:hidden name="newsId"/>

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
						<s:textfield name="newsId" readonly="true" cssClass="memberC_input01_readonly" />
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="newsTitle"/>:
					</td>
					<td>
						<s:textfield name="newsTitle" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="newsContent"/>:
					</td>
					<td>
						<s:textarea name="newsContent" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="newsTypeId"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#news_type')" name="newsTypeId" cssClass="dropdown" 
						id="newsTypeId" listValue="itemName" listKey="itemKey" emptyOption="true"/><font color="red">*</font>
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
window.onload = function(){
	var oFCKeditor = new FCKeditor( 'newsContent' ) ;
	oFCKeditor.BasePath	= "/fckeditor/" ;
	oFCKeditor.Height = "300";
	oFCKeditor.Width = "800";
	oFCKeditor.ReplaceTextarea() ;
}
function f_validate(){
	fromName = "formItem";
	//addfield("newsId","<s:text name="newsId"/>","Integer",false,10);
	addfield("newsTitle","<s:text name="newsTitle"/>","String",false,80);
	addfield("newsContent","<s:text name="newsContent"/>","String",false,65535,null,null,null,null,FCKeditorAPI.GetInstance("newsContent").GetXHTML(true));
	addfield("newsTypeId","<s:text name="newsTypeId"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	//addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	//addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	//addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	//addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
}
</script>