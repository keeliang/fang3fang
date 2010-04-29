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
<s:form action="newsList" namespace="/sysadmin/info/news" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="newsParameter.currentPage" id="currentPage"  />
<s:hidden name="newsParameter.maxResults" id="maxResults" />
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
						<s:text name="_ne_newsId" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._ne_newsId" />
					</td>
					<td width="15%" >
						<s:text name="_se_informationTitle" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._se_informationTitle" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_informationContent" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._se_informationContent" />
					</td>
					<td width="15%" >
						<s:text name="_ne_informationType" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._ne_informationType" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._ne_status" />
					</td>
					<td width="15%" >
						<s:text name="_de_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._de_createTime" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_createUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._ne_createUserId" />
					</td>
					<td width="15%" >
						<s:text name="_de_updateTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._de_updateTime" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_updateUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._ne_updateUserId" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/info/news/newsNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/info/news/newsDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="newsId"/></td>
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
	<s:url action="newsEdit" namespace="/sysadmin/info/news" id="url">
		<s:param name="newsId" value="#item.newsId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.newsId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="newsId"/></a></td>
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