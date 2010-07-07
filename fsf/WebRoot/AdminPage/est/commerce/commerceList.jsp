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

<body style="background-color:#FFFFFF">
<s:form action="commerceList" namespace="/sysadmin/est/commerce" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="commerceParameter.currentPage" id="currentPage"  />
<s:hidden name="commerceParameter.maxResults" id="maxResults" />

<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" id="filter_tbl">
	<tr>
		<td>
			<table width="60%" border="0" cellspacing="0" cellpadding="0" align="left">
				<tr>
					<td width="15%" class="input_name"><s:text name="_ne_provinceId" />:</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="commerceParameter._ne_provinceId" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey" id="provinceId" onchange="f_changeProvince()"/>
					</td>
					<td width="15%" class="input_name"><s:text name="_ne_cityId" />:</td>
					<td width="35%" id="cityTd"></td>
				</tr>
				
				<tr>
					<td width="15%" class="input_name"><s:text name="_ne_districtId" />:</td>
					<td width="35%" id="districtTd"></td>
					<td width="15%" class="input_name"><s:text name="_ne_areaId" />:</td>
					<td width="35%" id="areaTd"></td>
				</tr>
				
				<tr>
					<td width="15%" class="input_name"><s:text name="_slike_title" />:</td>
					<td width="35%"><s:textfield name="commerceParameter._slike_title" cssClass="input_text" /></td>
					<td width="15%" class="input_name"><s:text name="_slike_content" />:</td>
					<td width="35%"><s:textfield name="commerceParameter._slike_content" cssClass="input_text" /></td>
				</tr>
				
				<tr>
					<td width="15%" class="input_name"><s:text name="_ne_commerceType" />:</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$commerce_type')" name="commerceParameter._ne_commerceType" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" class="input_name"><s:text name="_ne_status" />:</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="commerceParameter._ne_status" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name"><s:text name="_se_address" />:</td>
					<td width="35%">
						<s:textfield name="commerceParameter._se_address" cssClass="input_text"></s:textfield>
					</td>
					<td width="15%" class="input_name"><s:text name="_se_contacter" />:</td>
					<td width="35%">
						<s:textfield name="commereParameter._se_contacter" cssClass="input_text"></s:textfield>
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name"><s:text name="_se_contactTel" />:</td>
					<td width="85%" colspan="2">
						<s:textfield name="commerctParameter._se_contactTel" cssClass="input_text"/>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<br/>
<div style="text-align: right;width:100%;">
	<input type="button" onclick="g_new('/sysadmin/est/commerce/commerceNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/est/commerce/commerceDelete.action');" value="<s:text name="g_delete"/>">
	<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
	<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
</div>

<div class="Title">&nbsp;</div>
<div class="MainContent">

<table width="100%" align="center" border="0" class="AdminTableStyle TableContent" id="tblList">
<tr class="TH">
	<td width="3%" height="28" >
		<input type="checkbox" onclick="g_select(this)" >
	</td>
	<td nowrap><s:text name="title"/></td>
	<td nowrap><s:text name="provinceId"/></td>
	<td nowrap><s:text name="cityId"/></td>
	<td nowrap><s:text name="districtId"/></td>
	<td nowrap><s:text name="areaId"/></td>
	<td nowrap><s:text name="commerceType"/></td>
	<td nowrap><s:text name="status"/></td>
	<td nowrap><s:text name="ip"/></td>
	<td nowrap><s:text name="createTime"/></td>
	<td nowrap><s:text name="createUserId"/></td>
	<td nowrap><s:text name="updateTime"/></td>
	<td nowrap><s:text name="updateUserId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="commerceEdit" namespace="/sysadmin/est/commerce" id="url">
		<s:param name="commerceId" value="#item.commerceId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.commerceId"/>">
		</td>
		<td class="listContentTd"><a href="javascript:g_edit('${url}')" ><s:property value="title"/></a></td>
		<td class="listContentTd"><fsf:dictTranslate groupName="#province" value="provinceId" /></td>
		<td class="listContentTd"><fsf:dictTranslate groupName="#city" value="cityId" /></td>
		<td class="listContentTd"><fsf:dictTranslate groupName="#district" value="districtId" /></td>
		<td class="listContentTd"><fsf:dictTranslate groupName="#area" value="areaId" /></td>
		<td class="listContentTd"><fsf:dictTranslate groupName="$commerce_type" value="commerceType" /></td>
		<td class="listContentTd"><fsf:dictTranslate groupName="$status" value="status" /></td>
		<td class="listContentTd"><s:property value="ip"/></td>
		<td class="listContentTd"><s:date name="createTime" format="yyyy-MM-dd" /></td>
		<td class="listContentTd"><fsf:dictTranslate groupName="#sys_user" value="createUserId" /></td>
		<td class="listContentTd"><s:date name="updateTime" format="yyyy-MM-dd" /></td>
		<td class="listContentTd"><fsf:dictTranslate groupName="#sys_user" value="updateUserId" /></td>
	</tr>
</s:iterator>
</table>
</s:form>
<table width="100%" align="center">
	<tr>
		<td width="100%" align="right" ><%@ include file="/share/pageNavigation.jsp" %>
		</td>
	</tr>
</table>

</body>
</html>

<script type="text/javascript">
<!--
function f_change(obj){
	$(obj.parent).find("input[type='hidden']").val(obj.value);
}

function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","commerceParameter._ne_cityId",json.data,"itemKey","itemName","${commerceParameter._ne_cityId}","f_changeCity()");
		$("#cityTd").html(selectTag.toString());
		if(isIndex)
			f_changeCity(isIndex);
	},"json");
}
function f_changeCity(isIndex){
	if($("#provinceId").val()=="")
		return;
	if($("#cityId").val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#provinceId").val(),cityId:$("#cityId").val()},function(json){
		var selectTag = new SelectTag("districtId","commerceParameter._ne_districtId",json.data,"itemKey","itemName","${commerceParameter._ne_districtId}","f_changeDistrict()");
		$("#districtTd").html(selectTag.toString());
		if(isIndex)
			f_changeDistrict(isIndex);
	},"json");
}

function f_changeDistrict(isIndex){
	if($("#provinceId").val()=="")
		return;
	if($("#cityId").val()=="")
		return;
	if($("#districtId").val()=="")
		return;
	$.post("getBusinessareaList.action",{provinceId:$("#provinceId").val(),cityId:$("#cityId").val(),districtId:$("#districtId").val()},function(json){
		var selectTag = new SelectTag("areaId","commerceParameter._ne_areaId",json.data,"itemKey","itemName","${commerceParameter._ne_areaId}");
		$("#areaTd").html(selectTag.toString());
	},"json");
}
-->
</script>