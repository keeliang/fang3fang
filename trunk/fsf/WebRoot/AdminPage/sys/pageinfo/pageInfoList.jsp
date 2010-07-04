<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@include file="/share/share.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
<title><s:text name="listPageTitle"/></title>
</head>

<body>
<s:form action="pageInfoList" namespace="/sysadmin/sys/pageinfo" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="pageInfoParameter.currentPage" id="currentPage"  />
<s:hidden name="pageInfoParameter.maxResults" id="maxResults" />
<div class="contentTitle"><s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>

<div class="MainContent">

<table width="100%" border="0" class="AdminTableStyle TableContent" id="tblList">
	<tr class="TH" align="left" >
		<th class="table_hdr"><s:text name="infoDesc"/></th>
	</tr>
<s:iterator value="listPageInfo" id="item" status="st" >
	<s:url action="pageInfoEdit" namespace="/sysadmin/sys/pageinfo" id="url" includeParams="none" >
		<s:param name="infoName" value="#item.infoName"></s:param>
	</s:url>
	<s:if test="#st.index==0">
		<tr>
			<td style="text-align: left;" >我要买房</td>
		</tr>
	</s:if>
	<s:if test="#st.index==6">
		<tr>
			<td style="text-align: left;" >我要卖房</td>
		</tr>
	</s:if>
	<s:if test="#st.index==12">
		<tr>
			<td style="text-align: left;" ></td>
		</tr>
	</s:if>
	<tr>
		<td style="text-align: left;" ><a href="javascript:g_edit('${url}')" ><s:property value="infoDesc"/></a></td>
	</tr>
</s:iterator>
</table>


</s:form>
</body>
</html>