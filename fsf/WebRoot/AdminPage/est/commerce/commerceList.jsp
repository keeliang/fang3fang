<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/Common.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/css/AdminPage.css" />
<script type="text/javascript" src="${contextPath}/js/jquery.js"></script> 
</head>

<body>
<s:form action="commerceList" namespace="/sysadmin/est/commerce" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="commerceParameter.currentPage" id="currentPage"  />
<s:hidden name="commerceParameter.maxResults" id="maxResults" />
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
					<td width="15%" class="input_name">
						<s:text name="_ne_commerceId" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._ne_commerceId" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_title" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._se_title" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_content" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._se_content" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._ne_provinceId" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._ne_cityId" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_districtId" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._ne_districtId" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_areaId" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._ne_areaId" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_commerceType" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._ne_commerceType" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._ne_status" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_ip" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._se_ip" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_de_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._de_createTime" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_createUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._ne_createUserId" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_de_updateTime" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._de_updateTime" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_updateUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="commerceParameter._ne_updateUserId" cssClass="input_text" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/est/commerce/commerceNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/est/commerce/commerceDelete.action');" value="<s:text name="g_delete"/>">
	<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
	<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
</div>

<div class="Title">&nbsp;</div>
<div class="MainContent">

<table width="100%" border="0" class="AdminTableStyle TableContent" id="tblList">
<tr class="TH">
	<td width="4%" height="28" >
		<input type="checkbox" onclick="g_select(this)" >
	</td>
	<td><s:text name="commerceId"/></td>
	<td><s:text name="title"/></td>
	<td><s:text name="content"/></td>
	<td><s:text name="provinceId"/></td>
	<td><s:text name="cityId"/></td>
	<td><s:text name="districtId"/></td>
	<td><s:text name="areaId"/></td>
	<td><s:text name="commerceType"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="ip"/></td>
	<td><s:text name="createTime"/></td>
	<td><s:text name="createUserId"/></td>
	<td><s:text name="updateTime"/></td>
	<td><s:text name="updateUserId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="commerceEdit" namespace="/sysadmin/est/commerce" id="url">
		<s:param name="commerceId" value="#item.commerceId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.commerceId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="commerceId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="title"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="content"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="provinceId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="cityId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="districtId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="areaId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="commerceType"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="status"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="ip"/></a></td>
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