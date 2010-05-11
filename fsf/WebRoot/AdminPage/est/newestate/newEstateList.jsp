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
</head>

<body>
<s:form action="newEstateList" namespace="/sysadmin/est/newestate" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="newEstateParameter.currentPage" id="currentPage"  />
<s:hidden name="newEstateParameter.maxResults" id="maxResults" />
<div class="contentTitle"><s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_slike_estateName" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._slike_estateName" />
					</td>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="newEstateParameter._ne_status" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"  />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="newEstateParameter._ne_provinceId" 
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
						<s:text name="_ne_estateType" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" name="newEstateParameter._ne_estateType" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_isHot" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$yes_no')" name="newEstateParameter._ne_isHot" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="structure"/>:
					</td>
					<td width="35%" >
						<s:text name="_ne_hall" />:
						<s:textfield name="newEstateParameter._ne_hall" cssClass="memberC_input03" />
						<s:text name="_ne_bedroom" />:
						<s:textfield name="newEstateParameter._ne_bedroom" cssClass="memberC_input03" />
						<s:text name="_ne_toilet" />:
						<s:textfield name="newEstateParameter._ne_toilet" cssClass="memberC_input03"/>
						<s:text name="_ne_porch" />:
						<s:textfield name="newEstateParameter._ne_porch" cssClass="memberC_input03"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_isLift" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$is_lift')" name="newEstateParameter._ne_isLift" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_nge_area" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._nge_area" />
					</td>
					<td width="15%" >
						<s:text name="_nle_area" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._nle_area" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_nge_practicalArea" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._nge_practicalArea" />
					</td>
					<td width="15%" >
						<s:text name="_nle_practicalArea" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._nle_practicalArea" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_toward" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward',null,'0')" name="newEstateParameter._ne_toward" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_fitment" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment')" name="newEstateParameter._ne_fitment" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"  />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_nge_price" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._nge_price" />
					</td>
					<td width="15%" >
						<s:text name="_nle_price" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._nle_price" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._dge_createTime" onclick="WdatePicker()" >
							<s:param name="value">
								<s:date name="newEstateParameter._dge_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
					<td width="15%" >
						<s:text name="_dle_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._dle_createTime" onclick="WdatePicker()" >
							<s:param name="value">
								<s:date name="newEstateParameter._dle_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/est/newestate/newEstateNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/est/newestate/newEstateDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="estateName"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="isHot"/></td>
	<td><s:text name="estateType"/></td>
	<td><s:text name="area"/></td>
	<td><s:text name="price"/></td>
	<td><s:text name="createTime"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="newEstateEdit" namespace="/sysadmin/est/newestate" id="url">
		<s:param name="estateId" value="#item.estateId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.estateId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="estateName"/></a></td>
		<td><s:property value="status"/></td>
		<td><s:property value="isHot"/></td>
		<td><s:property value="estateType"/></td>
		<td><s:property value="area"/></td>
		<td><s:property value="price"/></td>
		<td><s:property value="createTime"/></td>
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
<script type="text/javascript">
$(function() {
	f_changeProvince(true);
});
function f_validate(){
	fromName = "formList";
	addfield("newEstateParameter._nge_area","<s:text name="_nge_area"/>","Number",true,6,2);
	addfield("newEstateParameter._nle_area","<s:text name="_nle_area"/>","Number",true,6,2);
	addfield("newEstateParameter._nge_practicalArea","<s:text name="_nge_practicalArea"/>","Number",true,6,2);
	addfield("newEstateParameter._nle_practicalArea","<s:text name="_nge_practicalArea"/>","Number",true,6,2);
	addfield("newEstateParameter._nge_floor","<s:text name="_nge_floor"/>","Integer",true,10);
	addfield("newEstateParameter._nle_floor","<s:text name="_nle_floor"/>","Integer",true,10);
	addfield("newEstateParameter._nge_totalFloor","<s:text name="_nge_totalFloor"/>","Integer",true,10);
	addfield("newEstateParameter._nle_totalFloor","<s:text name="_nle_totalFloor"/>","Integer",true,10);
	addfield("newEstateParameter._ne_hall","<s:text name="_ne_hall"/>","Integer",true,10);
	addfield("newEstateParameter._ne_bedroom","<s:text name="_ne_bedroom"/>","Integer",true,10);
	addfield("newEstateParameter._ne_toilet","<s:text name="_ne_toilet"/>","Integer",true,10);
	addfield("newEstateParameter._ne_porch","<s:text name="_ne_porch"/>","Integer",true,10);
	addfield("newEstateParameter._nge_salePrice","<s:text name="_nge_salePrice"/>","Number",true,14,2);
	addfield("newEstateParameter._nle_salePrice","<s:text name="_nle_salePrice"/>","Number",true,14,2);
	addfield("newEstateParameter._nge_rentPrice","<s:text name="_nge_rentPrice"/>","Number",true,14,2);
	addfield("newEstateParameter._nle_rentPrice","<s:text name="_nle_rentPrice"/>","Number",true,14,2);
	return validate();
}

function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","newEstateParameter._ne_cityId",json.data,"itemKey","itemName","${newEstateParameter._ne_cityId}","f_changeCity()");
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
		var selectTag = new SelectTag("districtId","newEstateParameter._ne_districtId",json.data,"itemKey","itemName","${newEstateParameter._ne_districtId}","f_changeDistrict()");
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
		var selectTag = new SelectTag("areaId","newEstateParameter._ne_areaId",json.data,"itemKey","itemName","${newEstateParameter._ne_areaId}");
		$("#areaTd").html(selectTag.toString());
	},"json");
}
</script>