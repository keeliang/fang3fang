<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/share.jsp" %>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="/js/jquery.js"></script> 
</head>

<body>
<s:form action="infoCommentList" namespace="/sysadmin/info/infocomment" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="infoCommentParameter.currentPage" id="currentPage"  />
<s:hidden name="infoCommentParameter.maxResults" id="maxResults" />
<table>
	<tr>
		<td align="left" width="722">picture</td>
	</tr>
</table>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_ne_informationId" />:
					</td>
					<td width="35%">
						<s:textfield name="infoCommentParameter._ne_informationId" />
					</td>
					<td width="15%" >
						<s:text name="_se_ip" />:
					</td>
					<td width="35%">
						<s:textfield name="infoCommentParameter._se_ip" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="infoCommentParameter._ne_status" cssClass="dropdown" 
						id="status" listValue="itemName" listKey="itemKey" emptyOption="true"/><font color="red">*</font>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/info/infocomment/infoCommentNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/info/infocomment/infoCommentDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="commentId"/></td>
	<td><s:text name="content"/></td>
	<td><s:text name="informationId"/></td>
	<td><s:text name="ip"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="createTime"/></td>
	<td><s:text name="createUserId"/></td>
	<td><s:text name="updateTime"/></td>
	<td><s:text name="updateUserId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="infoCommentEdit" namespace="/sysadmin/info/infocomment" id="url">
		<s:param name="commentId" value="#item.commentId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.commentId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="commentId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="content"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="informationId"/></a></td>
		<td><s:property value="ip"/></td>
		<td>
			<fsf:dictTranslate value="status" groupName="$status"/>
		</td>
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