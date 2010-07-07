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
<body>

<s:form action="attentionList" namespace="/sysadmin/sys/attention" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="attentionParameter.currentPage" id="currentPage"  />
<s:hidden name="attentionParameter.maxResults" id="maxResults" />
<div class="contentTitle"><s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="filter_tbl" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_type" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$attention_type')" name="attentionParameter._ne_type" 
						listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown"/>
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="attentionParameter._ne_status" 
						listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown"/>
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_slike_title" />:
					</td>
					<td width="35%">
						<s:textfield name="attentionParameter._slike_title" cssClass="input_text" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/sys/attention/attentionNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/sys/attention/attentionDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="title"/></td>
	<td><s:text name="type"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="createTime"/></td>
	<s:iterator value="pageView.records" id="item">
		<s:url action="attentionEdit" namespace="/sysadmin/sys/attention" id="url">
			<s:param name="attentionId" value="#item.attentionId"></s:param>
		</s:url>
		<tr class="userlist">
			<td>
				<input type="checkbox" name="selectedPK" value="<s:property value="#item.attentionId"/>">
			</td>
			<td><a href="javascript:g_edit('${url}')" ><s:property value="title"/></a></td>
			<td><fsf:dictTranslate groupName="$attention_type" value="type" /></td>
			<td><fsf:dictTranslate groupName="$status" value="status" /></td>
			<td><s:date name="createTime" format="yyyy-MM-dd" /></td>
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