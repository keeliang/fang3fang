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
<s:form action="newsCommentSave" namespace="/sysadmin/info/newscomment" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="newsCommentParameter.currentPage" />
<s:hidden name="newsCommentParameter.maxResults" />
<s:hidden name="newsCommentParameter._ne_commentId" />
<s:hidden name="newsCommentParameter._se_content" />
<s:hidden name="newsCommentParameter._ne_newsId" />
<s:hidden name="newsCommentParameter._se_ip" />
<s:hidden name="newsCommentParameter._ne_status" />
<s:hidden name="newsCommentParameter._de_createTime" />
<s:hidden name="newsCommentParameter._ne_createUserId" />
<s:hidden name="newsCommentParameter._de_updateTime" />
<s:hidden name="newsCommentParameter._ne_updateUserId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/info/newscomment/newsCommentList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="commentId"/>:
					</td>
					<td>
						<s:textfield name="commentId" /><font color="red">*</font>
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
						<s:text name="newsId"/>:
					</td>
					<td>
						<s:textfield name="newsId" /><font color="red">*</font>
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
	//addfield("commentId","<s:text name="commentId"/>","Integer",false,10);
	addfield("content","<s:text name="content"/>","String",false,65535);
	addfield("newsId","<s:text name="newsId"/>","Integer",false,10);
	addfield("ip","<s:text name="ip"/>","String",false,30);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	//addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	//addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	//addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	//addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
}
</script>