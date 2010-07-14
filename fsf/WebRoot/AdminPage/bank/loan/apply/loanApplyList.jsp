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

<s:form action="loanApplyList" namespace="/sysadmin/bank/loan/apply" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="loanApplyParameter.currentPage" id="currentPage"  />
<s:hidden name="loanApplyParameter.maxResults" id="maxResults" />
<div class="contentTitle"><s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_nge_loanAmount" />:
					</td>
					<td width="35%">
						<s:textfield name="loanApplyParameter._nle_loanAmount" />
					</td>
					<td width="15%" >
						<s:text name="_nle_loanAmount" />:
					</td>
					<td width="35%">
						<s:textfield name="loanApplyParameter._nge_loanAmount" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_repayType" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$repay_type')" name="loanApplyParameter._ne_repayType" 
						id="repayType" listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown" />
					</td>
					<td width="15%" >
						<s:text name="_ne_loanUsage" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$loan_usage')" name="loanApplyParameter._ne_loanUsage" 
						id="loanUsage" listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="loanApplyParameter._ne_provinceId" 
						onchange="f_changeProvince()" id="provinceId" listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown" />
					</td>
					<td width="15%" >
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%" id="cityTd" >
						
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_districtId" />:
					</td>
					<td width="35%" id="districtTd" >
						
					</td>
					<td width="15%" >
						<s:text name="_ne_estateProperty" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_property')" name="loanApplyParameter._ne_estateProperty" 
						onchange="f_changeProvince()" id="provinceId" listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="loanApplyParameter._dge_createTime" onclick="WdatePicker()" >
							<s:param name="value">
								<s:date name="loanApplyParameter._dge_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
					<td width="15%" >
						<s:text name="_dle_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="loanApplyParameter._dle_createTime" onclick="WdatePicker()"  >
							<s:param name="value">
								<s:date name="loanApplyParameter._dle_createDate" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_createUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="loanApplyParameter._ne_createUserId"  />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_delete('/sysadmin/bank/loan/apply/loanApplyDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="realName"/></td>
	<td><s:text name="phone"/></td>
	<td><s:text name="loanAmount"/></td>
	<td><s:text name="loanYear"/></td>
	<td><s:text name="area"/></td>
	<td><s:text name="createTime"/></td>
	<td><s:text name="createUserId"/></td>
	<s:iterator value="pageView.records" id="item">
		<s:url action="loanApplyEdit" namespace="/sysadmin/bank/loan/apply" id="url">
			<s:param name="applyId" value="#item.applyId"></s:param>
		</s:url>
		<tr class="userlist">
			<td>
				<input type="checkbox" name="selectedPK" value="<s:property value="#item.applyId"/>">
			</td>
			<td><a href="javascript:g_edit('${url}')" ><s:property value="realName"/></a></td>
			<td><s:property value="phone"/></td>
			<td><s:property value="loanAmount"/></td>
			<td><s:property value="loanYear"/></td>
			<td><s:property value="area"/>m<sup>2</sup></td>
			<td><s:date name="createTime" format="yyyy-MM-dd" /></td>
			<td><fsf:dictTranslate groupName="#sys_user" value="createUserId" /></td>
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
window.onload = function(){
	f_changeProvince(true);
}
function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","loanApplyParameter._ne_cityId",json.data,"itemKey","itemName","${loanApplyParameter._ne_cityId}","f_changeCity()");
		$("#cityTd").html(selectTag.toString()+"<font color='red'>*</font>");
		if(isIndex)
			f_changeCity();
	},"json");
}
function f_changeCity(){
	if($("#provinceId").val()=="")
		return;
	if($("#cityId").val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#provinceId").val(),cityId:$("#cityId").val()},function(json){
		var selectTag = new SelectTag("districtId","loanApplyParameter._ne_districtId",json.data,"itemKey","itemName","${loanApplyParameter._ne_districtId}");
		$("#districtTd").html(selectTag.toString()+"<font color='red'>*</font>");
	},"json");
}
</script>