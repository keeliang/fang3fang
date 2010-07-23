<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath%>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath%>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath%>/js/jquery.js"></script> 
</head>

<body>
<s:form action="forumImageList" namespace="/sysadmin/forum" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="forumImageParameter.currentPage" id="currentPage"  />
<s:hidden name="forumImageParameter.maxResults" id="maxResults" />
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_se_forumId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#forum_forums')" name="forumImageParameter._se_forumId" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey" id="forumId"/>
					</td>
					<td width="50%">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/forum/forumImageNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/forum/forumImageDelete.action');" value="<s:text name="g_delete"/>">
	<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
	<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
</div>

<div class="Title">&nbsp;</div>
<div class="MainContent">

<table width="100%" border="0" class="AdminTableStyle TableContent" id="tblList">
<tr class="TH">
	<td width="3%" height="28" >
		<input type="checkbox" onclick="g_select(this)" >
	</td>
	<td><s:text name="id"/></td>
	<td><s:text name="forumId"/></td>
	<td><s:text name="imagePath"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="forumImageEdit" namespace="/sysadmin/forum" id="url">
		<s:param name="id" value="#item.id"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.id"/>">
		</td>
		<td><s:property value="id"/></td>
		<td><a href="javascript:g_edit('${url}')" ><fsf:dictTranslate groupName="#forum_forums" value="forumId" /></a></td>
		<td><img src="<s:property value="imagePath"/>" width="100" height="80"/></td>
	</tr>
</s:iterator>
</table>
</s:form>
<table width="100%" >
	<tr>
		<td width="100%" align="right" >
			<%@ include file="/share/pageNavigation.jsp" %>
		</td>
	</tr>
</table>

</body>
</html>