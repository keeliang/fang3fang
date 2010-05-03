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
<s:form action="informationList" namespace="/sysadmin/info/information" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="informationParameter.currentPage" id="currentPage"  />
<s:hidden name="informationParameter.maxResults" id="maxResults" />
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
						<s:text name="_se_informationTitle" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._se_informationTitle" />
					</td>
					<td width="15%" >
						<s:text name="_ne_informationType" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$information_type')" name="informationParameter._ne_informationType" cssClass="dropdown" 
						id="informationType" listValue="itemName" listKey="itemKey" emptyOption="true"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="informationParameter._ne_status" cssClass="dropdown" 
						id="status" listValue="itemName" listKey="itemKey" emptyOption="true"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/info/information/informationNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/info/information/informationDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="informationId"/></td>
	<td><s:text name="informationTitle"/></td>
	<td><s:text name="informationContent"/></td>
	<td><s:text name="informationType"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="createTime"/></td>
	<td><s:text name="createUserId"/></td>
	<td><s:text name="updateTime"/></td>
	<td><s:text name="updateUserId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="informationEdit" namespace="/sysadmin/info/information" id="url">
		<s:param name="informationId" value="#item.informationId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.informationId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="informationId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="informationTitle"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="informationContent"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="informationType"/></a></td>
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