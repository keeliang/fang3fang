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

<s:form action="advertisementList" namespace="/sysadmin/sys/advertisement" name="formList" id="formList" theme="simple" method="post">
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<div class="contentTitle"><s:text name="listTitle"/></div>
<div class="MainContent">

<table width="100%" border="0" >
	<s:iterator value="listAdvertisement" id="item">
		<s:url action="advertisementEdit" namespace="/sysadmin/sys/advertisement" id="url">
			<s:param name="advertisementName" value="#item.advertisementName"></s:param>
		</s:url>
		<tr>
			<td align="left" ><a href="javascript:g_edit('${url}')" ><s:property value="advertisementDesc"/></a></td>
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