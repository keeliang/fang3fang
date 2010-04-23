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
<s:form action="informationList" namespace="/info/information" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="informationParameter.currentPage" id="currentPage"  />
<s:hidden name="informationParameter.maxResults" id="maxResults" />
<table>
	<tr>
		<td align="left" width="722">picture</td>
	</tr>
</table>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="filter_tbl" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_informationId" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._ne_informationId" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_informationTitle" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._se_informationTitle" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_informationContent" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._se_informationContent" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_isNew" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._ne_isNew" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_informationType" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._ne_informationType" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._ne_status" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_de_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._de_createTime" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_createUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._ne_createUserId" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_de_updateTime" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._de_updateTime" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_updateUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._ne_updateUserId" cssClass="input_text" />
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
	<td class="table_hdr"><s:text name="informationId"/></td>
	<td class="table_hdr"><s:text name="informationTitle"/></td>
	<td class="table_hdr"><s:text name="informationContent"/></td>
	<td class="table_hdr"><s:text name="isNew"/></td>
	<td class="table_hdr"><s:text name="informationType"/></td>
	<td class="table_hdr"><s:text name="status"/></td>
	<td class="table_hdr"><s:text name="createTime"/></td>
	<td class="table_hdr"><s:text name="createUserId"/></td>
	<td class="table_hdr"><s:text name="updateTime"/></td>
	<td class="table_hdr"><s:text name="updateUserId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="informationEdit" namespace="/info/information" id="url">
		<s:param name="informationId" value="#item.informationId"></s:param>
	</s:url>
	<tr>
		<td class="table_dtl">
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.informationId"/>">
		</td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="informationId"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="informationTitle"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="informationContent"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="isNew"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="informationType"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="status"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="createTime"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="createUserId"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="updateTime"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="updateUserId"/></a></td>
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