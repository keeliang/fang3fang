<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/jquery.form.min.js"></script>
</head>

<body>
<s:form action="advertisementSave" namespace="/sysadmin/sys/advertisement" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="advertisementName" />


<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/sys/advertisement/advertisementList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class="input_name">
						<s:text name="advertisementDesc"/>:
					</td>
					<td>
						<s:textfield name="advertisementDesc" readonly="true" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="imagePath"/>:
					</td>
					<td>
						<s:textfield name="imagePath" cssClass="input_text" readonly="ture" /><input type="button" value="上传图片" id="btnUpload" />
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
var UploadActionName = "<%=contextPath%>/sysadmin/sys/advertisement/uploadFile.action";
function f_validate(){
	fromName = "formItem";
	addfield("imagePath","<s:text name="imagePath"/>","String",false,80);
	addfield("title","<s:text name="title"/>","String",true,100);
	addfield("title","<s:text name="link"/>","String",true,200);
	return validate();
}
</script>