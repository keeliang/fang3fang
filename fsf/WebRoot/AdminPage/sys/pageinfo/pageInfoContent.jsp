<%@ page language="java" pageEncoding="UTF-8"%>
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

<s:form action="pageInfoSave" namespace="/sysadmin/sys/pageinfo" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle">${infoDesc }</div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="infoName"/>
<s:hidden name="infoDesc"/>
<s:hidden name="seq"/>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/sys/pageinfo/pageInfoList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" >
	<s:if test="seq!=13 && seq!=14 && seq!=15 && seq!=16">
		<tr>
			<td width="80px" >
				<s:text name="title"/>:
			</td>
			<td>
				<s:textfield name="title" size="100" />
			</td>
		</tr>
	</s:if>
	<s:else>
		<s:hidden name="title" />
	</s:else>
	<tr>
		<td width="80px" valign="top" >
			<s:text name="content"/>:
		</td>
		<td>
			<s:textarea name="content" />
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
	oFCKeditor.Height = "600";
	oFCKeditor.Width = "800";
	oFCKeditor.ReplaceTextarea() ;
}
function f_validate(){
	fromName = "formItem";
	addfield("title","<s:text name="title"/>","String",true,100);
	addfield("content","<s:text name="content"/>","String",true,65535);
	return validate();
}
</script>