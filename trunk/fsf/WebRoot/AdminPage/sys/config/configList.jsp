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
<s:form action="configList" namespace="/sysadmin/sys/config" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="sysConfigParameter.currentPage" id="currentPage"  />
<s:hidden name="sysConfigParameter.maxResults" id="maxResults" />
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
						<s:text name="_se_item" />:
					</td>
					<td width="35%">
						<s:textfield name="sysConfigParameter._se_item" />
					</td>
					<td width="50%">&nbsp;</td>
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
	<td><s:text name="id"/></td>
	<td><s:text name="item"/></td>
	<td><s:text name="value"/></td>
	<td><s:text name="itemDesc"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="configEdit" namespace="/sysadmin/sys/config" id="url">
		<s:param name="id" value="#item.id"></s:param>
	</s:url>
	<tr>
		<td><s:property value="id"/></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="item"/></a></td>
		<td style="width:30%;work-break:break-all"><s:property value="value"/></td>
		<td style="width:30%;work-break:break-all"><s:property value="itemDesc"/></td>
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