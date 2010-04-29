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
<s:form action="newsTypeList" namespace="/sysadmin/info/newstype" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="newsTypeParameter.currentPage" id="currentPage"  />
<s:hidden name="newsTypeParameter.maxResults" id="maxResults" />
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
						<s:text name="_ne_newsTypeId" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._ne_newsTypeId" />
					</td>
					<td width="15%" >
						<s:text name="_se_title" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._se_title" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_seq" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._ne_seq" />
					</td>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._ne_status" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_de_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._de_createTime" />
					</td>
					<td width="15%" >
						<s:text name="_ne_createUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._ne_createUserId" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_de_updateTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._de_updateTime" />
					</td>
					<td width="15%" >
						<s:text name="_ne_updateUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._ne_updateUserId" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/info/newstype/newsTypeNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/info/newstype/newsTypeDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="newsTypeId"/></td>
	<td><s:text name="title"/></td>
	<td><s:text name="seq"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="createTime"/></td>
	<td><s:text name="createUserId"/></td>
	<td><s:text name="updateTime"/></td>
	<td><s:text name="updateUserId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="newsTypeEdit" namespace="/sysadmin/info/newstype" id="url">
		<s:param name="newsTypeId" value="#item.newsTypeId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.newsTypeId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="newsTypeId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="title"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="seq"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="status"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="createTime"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="createUserId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="updateTime"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="updateUserId"/></a></td>
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