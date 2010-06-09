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
<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script> 
<script type="text/javascript" src="<%=contextPath %>/js/Form.jquery.js"></script>
</head>

<body>
<s:form action="rollInformationSave" namespace="/sysadmin/info/rollInformation" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="informationParameter.currentPage" />
<s:hidden name="informationParameter.maxResults" />

<s:hidden name="informationParameter._slike_informationTitle" />
<input name="informationParameter._ne_informationType" type="hidden" value="0" />
<s:hidden name="informationParameter._dge_createTime" />
<s:hidden name="informationParameter._dle_createTime" />

<s:hidden name="informationParameter._ne_status" />

<input name="informationType" type="hidden" value="0" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/info/rollInformation/rollInformationList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="informationId"/>:
					</td>
					<td>
						<s:textfield name="informationId" readonly="true" cssClass="memberC_input01_readonly" />
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
						上传滚动图片:
					</td>
					<td>
						<input type="button" value="上传图片" id="btnUpload" />
						<s:hidden name="imagePath" />
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="informationContent"/>:
					</td>
					<td>
						<s:textarea name="informationContent" /><font color="red">*</font>
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
<%@include file="/share/upload.jsp" %>
</body>
</html>
<script type="text/javascript">
window.onload = function(){
	var oFCKeditor = new FCKeditor( 'informationContent' ) ;
	oFCKeditor.BasePath	= "/fckeditor/" ;
	oFCKeditor.Height = "300";
	oFCKeditor.Width = "800";
	oFCKeditor.ReplaceTextarea() ;
}
function f_validate(){
	fromName = "formItem";
	//addfield("informationId","<s:text name="informationId"/>","Integer",false,10);
	addfield("informationTitle","<s:text name="informationTitle"/>","String",false,80);
	addfield("informationContent","<s:text name="informationContent"/>","String",false,65535,null,null,null,null,FCKeditorAPI.GetInstance("informationContent").GetXHTML(true));
	addfield("informationType","<s:text name="informationType"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	//addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	//addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	//addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	//addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
}
</script>