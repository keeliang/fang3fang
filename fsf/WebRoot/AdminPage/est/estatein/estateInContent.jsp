<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<link type="text/css" rel="stylesheet" href="/AdminPage/css/style.css"/>
<script type="text/javascript" src="/js/jquery.js"></script>
</head>

<body style="font-size: 14px;">
<s:form action="estateInSave" namespace="/sysadmin/est/estatein" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="estateInParameter.currentPage" />
<s:hidden name="estateInParameter.maxResults" />
<s:hidden name="estateInParameter._ne_estateId" />
<s:hidden name="estateInParameter._slike_title" />
<s:hidden name="estateInParameter._ne_provinceId" />
<s:hidden name="estateInParameter._ne_cityId" />
<s:hidden name="estateInParameter._ne_districtId" />
<s:hidden name="estateInParameter._ne_areaId" />
<s:hidden name="estateInParameter._ne_examine" />
<s:hidden name="estateInParameter._ne_tradeMode" />
<s:hidden name="estateInParameter._ne_estateType" />
<s:hidden name="estateInParameter._ne_buildYear" />
<s:hidden name="estateInParameter._ne_hall" />
<s:hidden name="estateInParameter._ne_bedroom" />
<s:hidden name="estateInParameter._ne_toilet" />
<s:hidden name="estateInParameter._ne_porch" />
<s:hidden name="estateInParameter._ne_toward" />
<s:hidden name="estateInParameter._nge_buyPriceFrom" />
<s:hidden name="estateInParameter._nle_buyPriceTo" />
<s:hidden name="estateInParameter._nge_rentPriceFrom" />
<s:hidden name="estateInParameter._nle_rentPriceTo" />
<s:hidden name="estateInParameter._nge_areaFrom" />
<s:hidden name="estateInParameter._nle_areaTo" />
<s:hidden name="estateInParameter._ne_isLift" />
<s:hidden name="estateInParameter._ne_fitment" />
<s:hidden name="estateInParameter._ne_device" />
<s:hidden name="estateInParameter._dge_createTime" />
<s:hidden name="estateInParameter._dle_createTime" />


<s:hidden name="estateId"/>
<s:hidden name="tradeType" value="2"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/est/estatein/estateInList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<p class="cGray02"><b>委托交易区 - 求租求售信息</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
有效期：<s:textfield name="effective" id="effective" size="2" />天</p>
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘基本信息<span class="cOrange">(必填)</span></b></p>
<div class="memberC_line"></div>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="label_td">
			<label class="est_label" for=title><s:text name="title"/>:</label>
		</td>
		<td colspan="3">
			<s:textfield name="title" id="title" cssClass="memberC_input04"/>
		</td>
	</tr>
	<tr>
  	<td class="label_td">
  		<label class="est_label" for="provinceId"><s:text name="provinceId"/>:</label>
  	</td>
  	<td class="content_td">
  		<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" cssClass="dropdown" 
  		id="provinceId" name="provinceId" emptyOption="true" onchange="f_changeProvince()" listValue="itemName" listKey="itemKey"/>
  	</td>
    <td class="label_td">
    	<label class="est_label" for="cityId"><s:text name="cityId"/>:</label>
		</td>
		<td class="content_td" id="cityTd">
		
		</td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="districtId"><s:text name="districtId"/>:</label>
			
    </td>
    <td class="content_td" id="districtTd">
    
    </td>
    <td class="label_td">
			<label class="est_label" for="area"><s:text name="areaId"/>:</label>
			
    </td>
    <td class="content_td" id="areaTd">
    
    </td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label"><s:text name="area"/>:</label>
		</td>
		<td class="content_td">
			<s:textfield name="areaFrom" cssClass="memberC_input08"/>m<sup>2</sup>到<s:textfield name="areaTo" cssClass="memberC_input08"/>m<sup>2</sup>
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="estateType"><s:text name="estateType"/>:</label>
    </td>
    <td class="content_td">
    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" cssClass="dropdown"
    	id="estateType" name="estateType" emptyOption="true" listValue="itemName" listKey="itemKey" />
    </td>
    <td class="label_td">
			<label class="est_label" ><s:text name="structure"/>:</label>
    </td>
    <td class="content_td">
    	<s:textfield name="hall" cssClass="memberC_input06" /><s:text name="hall"/>
			<s:textfield name="bedroom" cssClass="memberC_input06" /><s:text name="bedroom"/>
			<s:textfield name="toilet" cssClass="memberC_input06" /><s:text name="toilet"/>
			<s:textfield name="porch" cssClass="memberC_input06" /><s:text name="porch"/>
    </td>
  </tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="isLift"><s:text name="isLift"/>:</label>
		</td>
		<td class="content_td">
			<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$is_lift')" cssClass="dropdown"
		 	id="isLift" name="isLift" emptyOption="true" listValue="itemName" listKey="itemKey" />
		</td>
		<td>
			<label class="est_label" for="toward"><s:text name="toward"/>:</label>
		</td>
		<td>
			<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward')" cssClass="dropdown"
		 	id="toward" name="toward" emptyOption="true" listValue="itemName" listKey="itemKey" />
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="fitment"><s:text name="fitment"/>:</label>
		</td>
		<td class="content_td">
			<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment',null,'6')" cssClass="dropdown"
		 	id="fitment" name="fitment" emptyOption="true" listValue="itemName" listKey="itemKey" />
		</td>
		<td class="label_td">
			<label class="est_label" for="device"><s:text name="device"/>:</label>
		</td>
		<td class="content_td">
			<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$device',null,'4')" cssClass="dropdown"
		 	id="device" name="device" emptyOption="true" listValue="itemName" listKey="itemKey" />
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="examine"><s:text name="examine"/>:</label>
		</td>
		<td class="content_td">
			<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$examine')" cssClass="dropdown"
  		name="examine" id="examine" listValue="itemName" listKey="itemKey" onchange="f_chageTradeMode(this)"/>
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="tradeMode"><s:text name="tradeMode"/>:</label>
		</td>
		<td class="content_td">
			<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$in_trade_mode')" cssClass="dropdown"
  		name="tradeMode" id="tradeMode" listValue="itemName" listKey="itemKey" onchange="f_chageTradeMode(this)"/>
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="remark"><s:text name="remark"/>:</label>
		</td>
		<td colspan="3">
			<s:textfield name="remark" />
		</td>
	</tr>
	
</table>

<div id="saleDiv" style="display: none;">
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘求售信息<span class="cOrange">(求售楼盘必填)</span></b></p>
<div class="memberC_line"></div>
</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" style="display: none;">
	<tr>
		<td class="label_td">
			<label class="est_label" ><s:text name="buyPrice"/>:
		</td>
		<td>
			<s:textfield name="buyPriceFrom" />元-<s:textfield name="buyPriceTo" />元
		</td>
	</tr>
</table>

<div id="rentDiv" style="display: none;">
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘求租信息<span class="cOrange">(求租楼盘必填)</span></b></p>
<div class="memberC_line"></div>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="rentTbl" style="display: none;">
	<tr>
		<td class="label_td">
			<label class="est_label" ><s:text name="rentPrice"/>:</label>
		</td>
		<td>
			<s:textfield name="rentPriceFrom" />元/月-<s:textfield name="rentPriceTo" />元/月
		</td>
	</tr>
</table>

<div class="memberC_line"></div>
<p class="est_title"><b>联系人信息</b></p>
<div class="memberC_line"></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" >
	<tr>
		<td class="label_td" >
			<label class="est_label" >联系人</label>:
    </td>
    <td class="content_td" >
    	<input value="${USER.userCode }" class="memberC_input01_readonly" readonly="true" />
    </td>
    <td class="label_td" >
			<label class="est_label" >电话</label>:
    </td>
    <td class="content_td" >
    	<input value="${USER.tel }" class="memberC_input01_readonly" readonly="true" />
    </td>
  </tr>
  <tr>
		<td class="label_td" >
			<label class="est_label" >手机</label>:
    </td>
    <td class="content_td" >
    	<input value="${USER.phone }" class="memberC_input01_readonly" readonly="true" />
    </td>
    <td class="label_td" >
			<label class="est_label" >QQ</label>:
    </td>
    <td class="content_td" >
    	<input value="${USER.qq }" class="memberC_input01_readonly" readonly="true" />
    </td>
  </tr>
</table>

<div class="memberC_line"></div>
<p class="est_title"><b>其他信息</b></p>
<div class="memberC_line"></div>

<table border="0" cellpadding="0" cellspacing="0" width="100%" >
  <tr>
		<td class="label_td" >
			<s:text name="createTime"/>:
		</td>
		<td class="content_td" >
			<s:textfield name="createTime"  cssClass="memberC_input01_readonly" readonly="true">
				<s:param name="value">
					<s:date name="createTime" format="yyyy-MM-dd"/>
				</s:param>
			</s:textfield>
		</td>
		<td class="label_td" >
			<s:text name="createUserId" />:
		</td>
		<td class="content_td" >
			<s:hidden name="createUserId"/>
			<input class="memberC_input01_readonly" readonly="true" 
			value="<fsf:dictTranslate groupName="#sys_user" value="updateUserId"/>">
		</td>
	</tr>
	<tr>
		<td class="label_td" >
			<s:text name="updateTime"/>:
		</td>
		<td class="content_td" >
			<s:textfield name="updateTime"  cssClass="memberC_input01_readonly" readonly="true">
				<s:param name="value">
					<s:date name="updateTime" format="yyyy-MM-dd"/>
				</s:param>
			</s:textfield>
		</td>
		<td class="label_td" >
			<s:text name="updateUserId"/>:
		</td>
		<td class="content_td" >
			<s:hidden name="updateUserId"/>
			<input class="memberC_input01_readonly" readonly="true" 
			value="<fsf:dictTranslate groupName="#sys_user" value="updateUserId"/>">
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
	fromName = "formItem";
	addfield("estateId","<s:text name="estateId"/>","Integer",false,10);
	addfield("title","<s:text name="title"/>","String",false,80);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("address","<s:text name="address"/>","String",true,80);
	addfield("examine","<s:text name="examine"/>","Integer",true,3);
	addfield("tradeMode","<s:text name="tradeMode"/>","Integer",false,3);
	addfield("estateType","<s:text name="estateType"/>","Integer",false,3);
	addfield("buildYear","<s:text name="buildYear"/>","Integer",true,10);
	addfield("hall","<s:text name="hall"/>","Integer",false,10);
	addfield("bedroom","<s:text name="bedroom"/>","Integer",false,10);
	addfield("toilet","<s:text name="toilet"/>","Integer",false,10);
	addfield("porch","<s:text name="porch"/>","Integer",false,10);
	addfield("toward","<s:text name="toward"/>","Integer",true,10);
	addfield("buyPriceFrom","<s:text name="buyPriceFrom"/>","Number",true,14);
	addfield("buyPriceTo","<s:text name="buyPriceTo"/>","Number",true,14);
	addfield("rentPriceFrom","<s:text name="rentPriceFrom"/>","Number",true,14);
	addfield("rentPriceTo","<s:text name="rentPriceTo"/>","Number",true,14);
	addfield("areaFrom","<s:text name="areaFrom"/>","Number",false,12);
	addfield("areaTo","<s:text name="areaTo"/>","Number",false,12);
	addfield("isLift","<s:text name="isLift"/>","Integer",false,3);
	addfield("fitment","<s:text name="fitment"/>","Integer",false,3);
	addfield("device","<s:text name="device"/>","Integer",false,3);
	addfield("remark","<s:text name="remark"/>","String",true,65535);
	addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
}
function f_chageTradeMode(obj){
	if(obj.value==1){
		$('#rentDiv').show();
		$('#rentTbl').show();
		$('#saleDiv').hide();
		$('#saleTbl').hide();
	}else if(obj.value==2){
		$('#rentDiv').hide();
		$('#rentTbl').hide();
		$('#saleDiv').show();
		$('#saleTbl').show();
	}else if(obj.value==3){
		$('#rentDiv').show();
		$('#rentTbl').show();
		$('#saleDiv').show();
		$('#saleTbl').show();
	}else{
		$('#rentDiv').hide();	
		$('#rentTbl').hide();
		$('#saleDiv').hide();
		$('#saleTbl').hide();
	}
}
function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","cityId",json.data,"itemKey","itemName","${cityId}","f_changeCity()");
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
		var selectTag = new SelectTag("districtId","districtId",json.data,"itemKey","itemName","${districtId}","f_changeDistrict()");
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
		var selectTag = new SelectTag("areaId","areaId",json.data,"itemKey","itemName","${areaId}");
		$("#areaTd").html(selectTag.toString());
	},"json");
}
</script>