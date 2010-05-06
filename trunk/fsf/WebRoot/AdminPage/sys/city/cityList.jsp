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
<s:form action="cityList" namespace="/sysadmin/sys/city" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="cityParameter.currentPage" id="currentPage"  />
<s:hidden name="cityParameter.maxResults" id="maxResults" />
<table>
	<tr>
		<td align="left" width="722"><img src="/AdminPage/images/csgl.jpg"/></td>
	</tr>
</table>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%">
						<s:textfield name="cityParameter._ne_cityId" />
					</td>
					<td width="15%" >
						<s:text name="_se_cityName" />:
					</td>
					<td width="35%">
						<s:textfield name="cityParameter._se_cityName" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_zipCode" />:
					</td>
					<td width="35%">
						<s:textfield name="cityParameter._se_zipCode" />
					</td>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="cityParameter._ne_provinceId" 
						listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown"/>
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
	<td><s:text name="cityId"/></td>
	<td><s:text name="cityName"/></td>
	<td><s:text name="zipCode"/></td>
	<td><s:text name="provinceId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="cityEdit" namespace="/sysadmin/sys/city" id="url">
		<s:param name="cityId" value="#item.cityId"></s:param>
	</s:url>
	<tr>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="cityId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="cityName"/></a></td>
		<td><s:property value="zipCode"/></td>
		<td><fsf:dictTranslate groupName="#province" value="provinceId" /></td>
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