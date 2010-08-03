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

<body>
<s:form action="estateOwnOutList" namespace="/sysadmin/est/estateout" name="formList" id="formList" theme="simple" method="post" onsubmit="return f_validate()" >
<s:hidden name="estateOutParameter.currentPage" id="currentPage"  />
<s:hidden name="estateOutParameter.maxResults" id="maxResults" />
<input type="hidden" name="estateOutParameter.sortColumns" value="createTime|DESC" />
<s:hidden name="estateOutParameter._ne_tradeType" value="1" />

<div class="contentTitle">自主交易--<s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_se_estateCardNo" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._se_estateCardNo" />
					</td>
					<td width="15%" >
						<s:text name="_ne_card5year" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$yes_no')" name="estateOutParameter._ne_card5year" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_slike_estateName" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._slike_estateName" />
					</td>
					<td width="15%" >
						<s:text name="_ne_contactUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_contactUserId" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="estateOutParameter._ne_provinceId" 
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
						<s:text name="_ne_palaceId" />:
					</td>
					<td width="35%" >
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#est_palace')" name="estateOutParameter._ne_palaceId" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_isRecommond" />:
					</td>
					<td width="35%" >
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$yes_no')" name="estateOutParameter._ne_isRecommond" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="structure"/>:
					</td>
					<td colspan="3" >
						<s:text name="_ne_bedroom" />:
						<s:textfield name="estateOutParameter._ne_bedroom" cssClass="memberC_input03" />
						<s:text name="_ne_hall" />:
						<s:textfield name="estateOutParameter._ne_hall" cssClass="memberC_input03" />
						<s:text name="_ne_toilet" />:
						<s:textfield name="estateOutParameter._ne_toilet" cssClass="memberC_input03"/>
						<s:text name="_ne_porch" />:
						<s:textfield name="estateOutParameter._ne_porch" cssClass="memberC_input03"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_tradeMode" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$out_trade_mode')" name="estateOutParameter._ne_tradeMode" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				
					<td width="15%" >
						<s:text name="_ne_estateType" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" name="estateOutParameter._ne_estateType" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_nge_area" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nge_area" />
					</td>
					<td width="15%" >
						<s:text name="_nle_area" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nle_area" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_nge_totalFloor" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nge_totalFloor" />
					</td>
					<td width="15%" >
						<s:text name="_nle_totalFloor" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nle_totalFloor" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_nge_floor" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nge_floor" />
					</td>
					<td width="15%" >
						<s:text name="_nle_floor" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nle_floor" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_isLift" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_isLift" />
					</td>
					<td width="15%" >
						<s:text name="_ne_toward" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_toward" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_nge_salePrice" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nge_salePrice" />
					</td>
					<td width="15%" >
						<s:text name="_nle_salePrice" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nle_salePrice" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_nge_rentPrice" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nge_rentPrice" />
					</td>
					<td width="15%" >
						<s:text name="_nle_rentPrice" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._nle_rentPrice" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_minMonth" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_minMonth" />年
					</td>
					<td width="15%" >
						<s:text name="_ne_fitment" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment',null,'0')" name="estateOutParameter._ne_fitment" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_examine" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$examine')" name="estateOutParameter._ne_examine" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_device" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$device',null,'0')" name="estateOutParameter._ne_device" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._dge_createTime" onclick="WdatePicker()" />
					</td>
					<td width="15%" >
						<s:text name="_dle_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._dle_createTime" onclick="WdatePicker()" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="f_examine(1);" value="审核通过">
	<input type="button" onclick="f_examine(0);" value="审核中">
	<input type="button" onclick="f_examine(-1);" value="审核未通过">
	<input type="button" onclick="f_recommond(1)" value="推荐"/>
	<input type="button" onclick="f_recommond(0)" value="取消推荐"/>
	<input type="button" onclick="g_delete('/sysadmin/est/estateout/estateOwnOutDelete.action');" value="<s:text name="g_delete"/>">
	<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
	<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
</div>

<table width="100%" border="0" class="AdminTableStyle TableContent" id="tblList">
	<tr>
		<td width="4%" height="28" class="table_hdr">
			<input type="checkbox" onclick="g_select(this)" >
		</td>
		<td><s:text name="estateName"/></td>
		<td><s:text name="address"/></td>
		<td><s:text name="salePrice"/>(万元)</td>
		<td><s:text name="contactUserId"/></td>
		<td><s:text name="createTime"/></td>
		<td><s:text name="examine"/></td>
		<td><s:text name="isRecommond"/></td>
	</tr>
	<s:iterator value="pageView.records" id="item">
		<s:url action="estateOwnOutEdit" namespace="/sysadmin/est/estateout" id="url">
			<s:param name="estateId" value="#item.estateId"></s:param>
		</s:url>
		<tr>
			<td>
				<input type="checkbox" name="selectedPK" value="<s:property value="#item.estateId"/>">
			</td>
			<td><a href="javascript:g_edit('${url}')" ><s:property value="estateName"/></a></td>
			<td><s:property value="address"/></td>
			<td><s:property value="salePrice/10000"/></td>
			<td><fsf:dictTranslate groupName="#sys_user" value="contactUserId" /></td>
			<td>
				<s:date name="createTime" format="yyyy-MM-dd"/>
			</td>
			<td>
				<fsf:dictTranslate groupName="$examine" value="examine"/>
			</td>
			<td>
				<fsf:dictTranslate groupName="$yes_no" value="isRecommond" />
			</td>
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
$(function() {
	f_changeProvince(true);
});

function f_recommond(s){
	var bln = false;
	var arySelectedPK = document.getElementsByName("selectedPK");
	for(var i=0;i<arySelectedPK.length;i++){
		if(arySelectedPK[i].checked){
			bln = true;
			break;
		}
	}
	if(bln){
		document.forms['formList'].action = contextPath+"/sysadmin/est/estateout/ownRecommondBatch.action?isRecommond="+s;
		document.forms['formList'].submit();
	}
}

function f_examine(s){
	var bln = false;
	var arySelectedPK = document.getElementsByName("selectedPK");
	for(var i=0;i<arySelectedPK.length;i++){
		if(arySelectedPK[i].checked){
			bln = true;
			break;
		}
	}
	if(bln){
		document.forms['formList'].action = "<%=contextPath %>/sysadmin/est/estateout/ownExamineSubmitBatch.action?examine="+s;
		document.forms['formList'].submit();
	}
}

function f_recommond(s){
	var bln = false;
	var arySelectedPK = document.getElementsByName("selectedPK");
	for(var i=0;i<arySelectedPK.length;i++){
		if(arySelectedPK[i].checked){
			bln = true;
			break;
		}
	}
	if(bln){
		document.forms['formList'].action = contextPath+"/sysadmin/est/estateout/ownRecommondBatch.action?isRecommond="+s;
		document.forms['formList'].submit();
	}
}

function f_validate(){
	fromName = "formList";
	addfield("estateOutParameter._nge_area","<s:text name="_nge_area"/>","Number",true,6,2);
	addfield("estateOutParameter._nle_area","<s:text name="_nle_area"/>","Number",true,6,2);
	addfield("estateOutParameter._nge_floor","<s:text name="_nge_floor"/>","Integer",true,10);
	addfield("estateOutParameter._nle_floor","<s:text name="_nle_floor"/>","Integer",true,10);
	addfield("estateOutParameter._nge_totalFloor","<s:text name="_nge_totalFloor"/>","Integer",true,10);
	addfield("estateOutParameter._nle_totalFloor","<s:text name="_nle_totalFloor"/>","Integer",true,10);
	addfield("estateOutParameter._ne_hall","<s:text name="_ne_hall"/>","Integer",true,10);
	addfield("estateOutParameter._ne_bedroom","<s:text name="_ne_bedroom"/>","Integer",true,10);
	addfield("estateOutParameter._ne_toilet","<s:text name="_ne_toilet"/>","Integer",true,10);
	addfield("estateOutParameter._ne_porch","<s:text name="_ne_porch"/>","Integer",true,10);
	addfield("estateOutParameter._nge_salePrice","<s:text name="_nge_salePrice"/>","Number",true,14,2);
	addfield("estateOutParameter._nle_salePrice","<s:text name="_nle_salePrice"/>","Number",true,14,2);
	addfield("estateOutParameter._nge_rentPrice","<s:text name="_nge_rentPrice"/>","Number",true,14,2);
	addfield("estateOutParameter._nle_rentPrice","<s:text name="_nle_rentPrice"/>","Number",true,14,2);
	return validate();
}

function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","estateOutParameter._ne_cityId",json.data,"itemKey","itemName","${estateOutParameter._ne_cityId}","f_changeCity()");
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
		var selectTag = new SelectTag("districtId","estateOutParameter._ne_districtId",json.data,"itemKey","itemName","${estateOutParameter._ne_districtId}","f_changeDistrict()");
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
		var selectTag = new SelectTag("areaId","estateOutParameter._ne_areaId",json.data,"itemKey","itemName","${estateOutParameter._ne_areaId}");
		$("#areaTd").html(selectTag.toString());
	},"json");
}
</script>