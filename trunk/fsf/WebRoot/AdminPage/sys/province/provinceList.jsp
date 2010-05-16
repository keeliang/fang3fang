<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="${contextPath}/js/jquery.js"></script> 
</head>

<body>
<s:form action="provinceList" namespace="/sysadmin/sys/province" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="provinceParameter.currentPage" id="currentPage"  />
<s:hidden name="provinceParameter.maxResults" id="maxResults" />
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:textfield name="provinceParameter._ne_provinceId" />
					</td>
					<td width="15%" >
						<s:text name="_se_provinceName" />:
					</td>
					<td width="35%">
						<s:textfield name="provinceParameter._se_provinceName" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
	<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
</div>

<div class="Title">&nbsp;</div>
<div class="MainContent">

<table width="100%" border="0" class="AdminTableStyle TableContent" id="tblList">
<tr class="TH">
	<td><s:text name="provinceId"/></td>
	<td><s:text name="provinceName"/></td>
	
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="provinceEdit" namespace="/sysadmin/sys/province" id="url">
		<s:param name="provinceId" value="#item.provinceId"></s:param>
	</s:url>
	<tr>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="provinceId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="provinceName"/></a></td>
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