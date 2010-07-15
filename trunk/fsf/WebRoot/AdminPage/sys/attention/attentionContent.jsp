<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath %>/fckeditor/fckeditor.js"></script>
</head>

<body>
<s:form action="attentionSave" namespace="/sysadmin/sys/attention" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="attentionParameter.currentPage" />
<s:hidden name="attentionParameter.maxResults" />
<s:hidden name="attentionParameter._ne_attentionId" />
<s:hidden name="attentionParameter._ne_type" />
<s:hidden name="attentionParameter._ne_status" />
<s:hidden name="attentionParameter._slike_title" />
<input type="hidden" name="attentionParameter.sortColumns" value="createTime|DESC" />
<s:hidden name="attentionId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/sys/attention/attentionList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class="input_name">
						<s:text name="title"/>:
					</td>
					<td>
						<s:textfield name="title" cssClass="input_text" size="100" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="type"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$attention_type')" name="type" 
						listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown"/>
						<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="status"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="status" 
						listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown"/>
						<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td class="input_name" valign="top" >
						<s:text name="content"/>:
					</td>
					<td>
						<s:textarea name="content" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
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
			</table>
		</td>
	</tr>
</table>
</s:form>
</body>
</html>
<script type="text/javascript">
window.onload = function(){
	var oFCKeditor = new FCKeditor( 'content' ) ;
	oFCKeditor.BasePath	= "/fckeditor/" ;
	oFCKeditor.Height = "300";
	oFCKeditor.Width = "800";
	oFCKeditor.ToolbarSet = "Basic";
	oFCKeditor.ReplaceTextarea() ;
}
function f_validate(){
	fromName = "formItem";
	addfield("type","<s:text name="type"/>","Integer",false,3);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	addfield("title","<s:text name="title"/>","String",true,100);
	addfield("content","<s:text name="content"/>","String",true,65535);
	addfield("createTime","<s:text name="createTime"/>","Date",true,19);
	return validate();
}
</script>