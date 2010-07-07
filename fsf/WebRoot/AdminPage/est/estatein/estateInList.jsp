<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/Common.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminPage.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script> 
</head>

<body>
<s:form action="estateInList" namespace="/sysadmin/est/estatein" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="estateInParameter.currentPage" id="currentPage"  />
<s:hidden name="estateInParameter.maxResults" id="maxResults" />

<s:hidden name="estateInParameter._ne_tradeType" value="2" />
<div class="contentTitle"><s:text name="contentTitle"/></div>
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
						<s:textfield name="estateInParameter._slike_title" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="estateInParameter._ne_provinceId" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey" id="provinceId" onchange="f_changeProvince()"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%" id="cityTd">
						
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_districtId" />:
					</td>
					<td width="35%" id="districtTd">
						
					</td>
					<td width="15%" >
						<s:text name="_ne_areaId" />:
					</td>
					<td width="35%" id="areaTd">
						
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_examine" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$examine')" name="estateInParameter._ne_examine" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_tradeMode" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$in_trade_mode')" name="estateInParameter._ne_tradeMode" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_estateType" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" name="estateInParameter._ne_estateType" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="structure" />:
					</td>
					<td width="35%">
						<s:text name="_ne_hall" />:
						<s:textfield name="estateInParameter._ne_hall" cssClass="memberC_input03"/>
						<s:text name="_ne_bedroom" />:
						<s:textfield name="estateInParameter._ne_bedroom" cssClass="memberC_input03"/>
						<s:text name="_ne_toilet" />:
						<s:textfield name="estateInParameter._ne_toilet" cssClass="memberC_input03"/>
						<s:text name="_ne_porch" />:
						<s:textfield name="estateInParameter._ne_porch" cssClass="memberC_input03"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_toward" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward')" name="estateInParameter._ne_toward" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_isLift" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$is_lift')" name="estateInParameter._ne_isLift" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="buyPrice" />:
					</td>
					<td width="35%">
						<input type="text" onchange="f_change(this)" value="${estateInParameter._nge_buyPriceFrom }" />
						<s:hidden name="estateInParameter._nge_buyPriceFrom" />
						<s:hidden name="estateInParameter._nle_buyPriceTo" />
					</td>
					<td width="15%" >
						<s:text name="rentPrice" />:
					</td>
					<td width="35%">
						<input type="text" onchange="f_change(this)" value="${estateInParameter._nge_rentPriceFrom }" />
						<s:hidden name="estateInParameter._nge_rentPriceFrom" />
						<s:hidden name="estateInParameter._nle_rentPriceTo" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="area" />:
					</td>
					<td width="35%">
						<input type="text" onchange="f_change(this)" value="${estateInParameter._nge_areaFrom }" />
						<s:hidden name="estateInParameter._nge_areaFrom" />
						<s:hidden name="estateInParameter._nle_areaTo" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_fitment" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment',null,'6')" name="estateInParameter._ne_fitment" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_device" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$device',null,'4')" name="estateInParameter._ne_device" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._dge_createTime" onclick="WdatePicker()" >
							<s:param name="value">
								<s:date name="estateInParameter._dge_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
					<td width="15%" >
						<s:text name="_dle_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._dle_createTime" onclick="WdatePicker()" >
							<s:param name="value">
								<s:date name="estateInParameter._dle_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/est/estatein/estateInNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/est/estatein/estateInDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="estateType"/></td>
	<td><s:text name="buyPrice"/></td>
	<td><s:text name="rentPrice"/></td>
	<td><s:text name="area"/></td>
	<td><s:text name="tradeMode"/></td>
	<td><s:text name="contactUserId"/></td>
	<td><s:text name="createTime"/></td>
	<td><s:text name="examine"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="estateInEdit" namespace="/sysadmin/est/estatein" id="url">
		<s:param name="estateId" value="#item.estateId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.estateId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="title"/></a></td>
		<td><fsf:dictTranslate groupName="$estate_type" value="estateType" /></td>
		<td><s:property value="buyPriceFrom"/>-<s:property value="buyPriceTo"/></td>
		<td><s:property value="rentPriceFrom"/>-<s:property value="rentPriceTo"/></td>
		<td><s:property value="areaFrom"/>-<s:property value="areaTo"/></td>
		<td><fsf:dictTranslate groupName="$in_trade_mode" value="tradeMode" /></td>
		<td><fsf:dictTranslate groupName="#sys_user" value="contactUserId" /></td>		
		<td><s:date name="createTime" format="yyyy-MM-dd" /></td>
		<td><fsf:dictTranslate groupName="$examine" value="examine" /></td>
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
function f_change(obj){
	$(obj.parent).find("input[type='hidden']").val(obj.value);
}

function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","estateInParameter._ne_cityId",json.data,"itemKey","itemName","${estateInParameter._ne_cityId}","f_changeCity()");
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
		var selectTag = new SelectTag("districtId","estateInParameter._ne_districtId",json.data,"itemKey","itemName","${estateInParameter._ne_districtId}","f_changeDistrict()");
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
		var selectTag = new SelectTag("areaId","estateInParameter._ne_areaId",json.data,"itemKey","itemName","${estateInParameter._ne_areaId}");
		$("#areaTd").html(selectTag.toString());
	},"json");
}
</script>