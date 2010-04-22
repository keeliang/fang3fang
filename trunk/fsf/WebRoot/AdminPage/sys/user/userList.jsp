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
<s:form action="userList" namespace="/sys/user" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="userParameter.currentPage" id="currentPage"  />
<s:hidden name="userParameter.maxResults" id="maxResults" />
<table>
	<tr>
		<td align="left" width="722"><img src="/AdminPage/images/userinfo.jpg" /></td>
	</tr>
</table>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="filter_tbl" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_userId" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_userId" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_userCode" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_userCode" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_password" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_password" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_question" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_question" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_answer" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_answer" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_userName" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_userName" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_sex" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_sex" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_status" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_userType" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_userType" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_provinceId" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_cityId" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_districtId" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_districtId" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_address" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_address" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_tel" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_tel" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_phone" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_phone" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_qq" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_qq" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_msn" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_msn" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_email" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_email" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_remark" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_remark" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_de_createDate" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._de_createDate" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_imagePath" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_imagePath" cssClass="input_text" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/sys/user/userNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/sys/user/userDelete.action');" value="<s:text name="g_delete"/>">
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
	<td class="table_hdr"><s:text name="userId"/></td>
	<td class="table_hdr"><s:text name="userCode"/></td>
	<td class="table_hdr"><s:text name="password"/></td>
	<td class="table_hdr"><s:text name="question"/></td>
	<td class="table_hdr"><s:text name="answer"/></td>
	<td class="table_hdr"><s:text name="userName"/></td>
	<td class="table_hdr"><s:text name="sex"/></td>
	<td class="table_hdr"><s:text name="status"/></td>
	<td class="table_hdr"><s:text name="userType"/></td>
	<td class="table_hdr"><s:text name="provinceId"/></td>
	<td class="table_hdr"><s:text name="cityId"/></td>
	<td class="table_hdr"><s:text name="districtId"/></td>
	<td class="table_hdr"><s:text name="address"/></td>
	<td class="table_hdr"><s:text name="tel"/></td>
	<td class="table_hdr"><s:text name="phone"/></td>
	<td class="table_hdr"><s:text name="qq"/></td>
	<td class="table_hdr"><s:text name="msn"/></td>
	<td class="table_hdr"><s:text name="email"/></td>
	<td class="table_hdr"><s:text name="remark"/></td>
	<td class="table_hdr"><s:text name="createDate"/></td>
	<td class="table_hdr"><s:text name="imagePath"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="userEdit" namespace="/sys/user" id="url">
		<s:param name="userId" value="#item.userId"></s:param>
	</s:url>
	<tr>
		<td class="table_dtl">
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.userId"/>">
		</td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="userId"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="userCode"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="password"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="question"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="answer"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="userName"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="sex"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="status"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="userType"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="provinceId"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="cityId"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="districtId"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="address"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="tel"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="phone"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="qq"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="msn"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="email"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="remark"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="createDate"/></a></td>
		<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="imagePath"/></a></td>
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