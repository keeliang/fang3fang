<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath%>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath%>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script> 
<script type="text/javascript" src="<%=contextPath %>/js/jquery.form.min.js"></script>
</head>

<body>
<s:form action="forumImageSave" namespace="/sysadmin/forum" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="forumImageParameter.currentPage" />
<s:hidden name="forumImageParameter.maxResults" />
<s:hidden name="forumImageParameter._se_forumId" />

<s:hidden name="id"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/forum/forumImageList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="forumId"/>:
					</td>
					<td>
						<s:textfield name="forumId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="image"/>:
					</td>
					<td>
						<input type="button" value="上传图片" id="btnUpload" />
						<s:hidden name="imagePath" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</s:form>
</body>
</html>
<%@include file="/share/upload.jsp" %>
<script type="text/javascript">
var UploadActionName = "<%=contextPath%>/sysadmin/forum/uploadFile.action";

function f_validate(){
	fromName = "formItem";
	addfield("item","<s:text name="image"/>","String",false,80);
	return validate();
}
</script>