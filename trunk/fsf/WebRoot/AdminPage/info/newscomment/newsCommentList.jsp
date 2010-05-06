<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="/js/jquery.js"></script> 
</head>

<body>
<s:form action="newsCommentList" namespace="/sysadmin/info/newscomment" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="newsCommentParameter.currentPage" id="currentPage"  />
<s:hidden name="newsCommentParameter.maxResults" id="maxResults" />
<div class="contentTitle"><s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_ne_newsId" />:
					</td>
					<td width="35%">
						<s:hidden name="newsCommentParameter._ne_newsId"/>
						<input value="<fsf:dictTranslate groupName="#news_type" value="newsCommentParameter._ne_newsId"/>" name="newsTitle" readonly="true" >
						<img src="/images/select.gif" style="vertical-align: bottom;cursor: pointer;" onclick="f_selectNews()">
					</td>
					<td width="15%" >
						<s:text name="_ne_createUserId" />:
					</td>
					<td width="35%">
						<s:hidden name="newsCommentParameter._ne_createUserId"/>
						<input value="<fsf:dictTranslate groupName="#sys_user" value="newsCommentParameter._ne_createUserId"/>" name="userCode" readonly="true" >
						<img src="/images/select.gif" style="vertical-align: bottom;cursor: pointer;" onclick="f_selectUser()">
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_ip" />:
					</td>
					<td width="35%">
						<s:textfield name="newsCommentParameter._se_ip" />
					</td>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="newsCommentParameter._ne_status" cssClass="dropdown" 
						id="status" listValue="itemName" listKey="itemKey" emptyOption="true"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsCommentParameter._dge_createTime">
							<s:param name="value">
								<s:date name="newsCommentParameter._dge_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
					<td width="15%" >
						<s:text name="_dle_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsCommentParameter._dle_createTime">
							<s:param name="value">
								<s:date name="newsCommentParameter._dle_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/info/newscomment/newsCommentNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/info/newscomment/newsCommentDelete.action');" value="<s:text name="g_delete"/>">
	<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
	<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
</div>

<div class="Title">&nbsp;</div>
<div class="MainContent">

<table width="100%" border="0" class="AdminTableStyle TableContent" id="tblList">
<tr class="TH">
	<td width="4%" height="28" class="table_hdr">
		<input type="checkbox" onclick="g_select(this)" >
	</td>
	<td><s:text name="content"/></td>
	<td><s:text name="newsId"/></td>
	<td><s:text name="ip"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="createTime"/></td>
	<td><s:text name="createUserId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="newsCommentEdit" namespace="/sysadmin/info/newscomment" id="url">
		<s:param name="commentId" value="#item.commentId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.commentId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="content"/></a></td>
		<td><fsf:dictTranslate groupName="#info_news" value="newsId"/></td>
		<td><s:property value="ip"/></td>
		<td><fsf:dictTranslate groupName="$status" value="status" /></td>
		<td><s:date name="createTime" format="yyyy-MM-dd" /></td>
		<td><fsf:dictTranslate groupName="#sys_user" value="createUserId"/></td>
	</tr>
</s:iterator>
</table>

<table width="100%" >
	<tr>
		<td width="100%" align="right" >
			<%@ include file="/share/pageNavigation.jsp" %>
		</td>
	</tr>
</table>
</s:form>
</body>
</html>
<script type="text/javascript">
function f_selectNews(){
	showModalDialog("selectNews.action",document,"dialogWidth:800px;dialogHeight:600px;");
}
function f_selectUser(){
	showModalDialog("selectUser.action",document,"dialogWidth:800px;dialogHeight:600px;");
}
</script>