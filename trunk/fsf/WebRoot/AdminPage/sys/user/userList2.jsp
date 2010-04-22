<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<%@include file="/share/share.jsp" %>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="/js/jquery.js"></script>  
<body>

<s:form action="userList" namespace="/sysadmin/sys/user" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="userParameter.currentPage" id="currentPage"  />
<s:hidden name="userParameter.maxResults" id="maxResults" />
<table>
<tr>
	<td align="left" width="722"><img src="/AdminPage/images/userinfo.jpg" /></td>
</tr>
</table>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table>
	<tr>
		<td><s:text name="_ne_userId" /></td>
		<td>
			<s:textfield name="userParameter._ne_userId" cssClass="input_text" />
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
			<td><input type="checkbox" onclick="g_select(this)" ></td>
			<td><s:text name="userId"/></td>
			<td><s:text name="userCode"/></td>
			<td><s:text name="password"/></td>
			<td><s:text name="question"/></td>
			<td><s:text name="answer"/></td>
			<td><s:text name="userName"/></td>
			<td><s:text name="sex"/></td>
			<td><s:text name="status"/></td>
			<td><s:text name="userType"/></td>
			<td><s:text name="provinceId"/></td>
			<td><s:text name="cityId"/></td>
			<td><s:text name="districtId"/></td>
			<td><s:text name="address"/></td>
			<td><s:text name="tel"/></td>
			<td><s:text name="phone"/></td>
			<td><s:text name="qq"/></td>
			<td><s:text name="msn"/></td>
			<td><s:text name="email"/></td>
			<td><s:text name="remark"/></td>
			<td><s:text name="createDate"/></td>
			<td><s:text name="imagePath"/></td>
		</tr>
		<s:iterator value="pageView.records" id="item">
			<s:url action="userEdit" namespace="/sysadmin/sys/user" id="url">
				<s:param name="userId" value="#item.userId"></s:param>
			</s:url>
			<tr class="userlist">
				<td><input type="checkbox" name="selectedPK" value="<s:property value="#item.userId"/>"></td>
				<td><a href="javascript:g_edit('${url}')" ><s:property value="userId"/></a></td>
				<td><s:property value="userCode"/></td>
				<td><s:property value="password"/></td>
				<td><s:property value="question"/></td>
				<td><s:property value="answer"/></td>
				<td><s:property value="userName"/></td>
				<td><s:property value="sex"/></td>
				<td><s:property value="status"/></td>
				<td><s:property value="userType"/></td>
				<td><s:property value="provinceId"/></td>
				<td><s:property value="cityId"/></td>
				<td><s:property value="districtId"/></td>
				<td><s:property value="address"/></td>
				<td><s:property value="tel"/></td>
				<td><s:property value="phone"/></td>
				<td><s:property value="qq"/></td>
				<td><s:property value="msn"/></td>
				<td><s:property value="email"/></td>
				<td><s:property value="remark"/></td>
				<td><s:property value="createDate"/></td>
				<td><s:property value="imagePath"/></td>
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
</div>
</s:form>

</body>
</html>
