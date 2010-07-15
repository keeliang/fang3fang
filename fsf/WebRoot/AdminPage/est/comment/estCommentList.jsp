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
<s:form action="estCommentList" namespace="/sysadmin/est/comment" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="estCommentParameter.currentPage" id="currentPage"  />
<s:hidden name="estCommentParameter.maxResults" id="maxResults" />
<input type="hidden" name="estCommentParameter.sortColumns" value="createTime|DESC" />
<div class="contentTitle"><s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_ne_type" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$est_comment_type',null,'4')" name="estCommentParameter._ne_type" 
						cssClass="dropdown" id="type" listValue="itemName" listKey="itemKey" emptyOption="true"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_createUserId" />:
					</td>
					<td width="35%">
						<s:hidden name="estCommentParameter._ne_createUserId"/>
						<input value="<fsf:dictTranslate groupName="#sys_user" value="estCommentParameter._ne_createUserId"/>" id="userCode" readonly="true" >
						<img src="<%=contextPath %>/images/select.gif" style="vertical-align: bottom;cursor: pointer;" onclick="f_selectUser()">
						<img src="<%=contextPath %>/images/closeall.gif" style="cursor: pointer;" onclick="f_clear(this)">
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_ip" />:
					</td>
					<td width="35%">
						<s:textfield name="estCommentParameter._se_ip" />
					</td>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="estCommentParameter._ne_status" 
						cssClass="dropdown" id="status" listValue="itemName" listKey="itemKey" emptyOption="true"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estCommentParameter._dge_createTime" onclick="WdatePicker()" >
							<s:param name="value">
								<s:date name="estCommentParameter._dge_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
					<td width="15%" >
						<s:text name="_dle_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estCommentParameter._dle_createTime" onclick="WdatePicker()" >
							<s:param name="value">
								<s:date name="estCommentParameter._dle_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_delete('/sysadmin/est/comment/estCommentDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="content"/></td>
	<td><s:text name="estateId"/></td>
	<td><s:text name="type"/></td>
	<td><s:text name="ip"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="createTime"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="estCommentEdit" namespace="/sysadmin/est/comment" id="url">
		<s:param name="commentId" value="#item.commentId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.commentId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="@chance.util.HtmlUtils@removeHTML(content,12)"/></a></td>
		<td>
			<s:if test="type==1">
				<fsf:dictTranslate groupName="#est_estate_out" value="estateId" />
			</s:if>
			<s:elseif test="2">
				<fsf:dictTranslate groupName="#est_estate_in" value="estateId" />
			</s:elseif>
			<s:elseif test="3">
				<fsf:dictTranslate groupName="#est_new_estate" value="estateId" />
			</s:elseif>
		</td>
		<td><fsf:dictTranslate groupName="$est_comment_type" value="type"/></td>
		<td><s:property value="ip"/></td>
		<td><fsf:dictTranslate groupName="$status" value="status" /></td>
		<td><s:date name="createTime" format="yyyy-MM-dd" /></td>
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
<script type="text/javascript">
function f_selectUser(){
	showModalDialog(contextPath+"/sysadmin/sys/user/selectUser.action",window,"dialogWidth:800px;dialogHeight:600px;");
}
function f_finishSelectUser(obj){
	if(obj){
		document.forms["formList"]["estCommentParameter._ne_createUserId"].value = obj.userId;
		document.getElementById("userCode").value = obj.userCode;
	}
}
function f_clear(src){
	$(src).parent().find("input").val("");
}
</script>