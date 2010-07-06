<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script> 
</head>

<body>
<s:form action="newsTypeList" namespace="/sysadmin/info/newstype" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="newsTypeParameter.currentPage" id="currentPage"  />
<s:hidden name="newsTypeParameter.maxResults" id="maxResults" />
<div class="contentTitle"><s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_slike_title" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._slike_title" />
					</td>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="newsTypeParameter._ne_status" cssClass="dropdown" 
						id="status" listValue="itemName" listKey="itemKey" emptyOption="true"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._dge_createTime" onclick="WdatePicker()" >
							<s:param name="value">
								<s:date name="newsTypeParameter._dge_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
					<td width="15%" >
						<s:text name="_dle_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsTypeParameter._dle_createTime" onclick="WdatePicker()" >
							<s:param name="value">
								<s:date name="newsTypeParameter._dle_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/info/newstype/newsTypeNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/info/newstype/newsTypeDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="seq"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="createTime"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="newsTypeEdit" namespace="/sysadmin/info/newstype" id="url">
		<s:param name="newsTypeId" value="#item.newsTypeId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.newsTypeId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="title"/></a></td>
		<td><s:property value="seq"/></td>
		<td><fsf:dictTranslate groupName="$status" value="status"/></td>
		<td><s:date name="createTime" format="yyyy-MM-dd" /></td>
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