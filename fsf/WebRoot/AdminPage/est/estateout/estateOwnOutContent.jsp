<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/share.jsp" %>
<%@include file="/share/validate.jsp" %>

<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<link href="/AdminPage/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/jquery.js"></script> 
</head>

<body style="font-size: 14px;">
<!-- <div class="memberC_allRight02"> -->
<s:form action="estateOutSave" namespace="/sysadmin/est/estateout" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="estateOutParameter.currentPage" />
<s:hidden name="estateOutParameter.maxResults" />
<s:hidden name="estateOutParameter._se_estateCardNo" />
<s:hidden name="estateOutParameter._ne_card5year" />
<s:hidden name="estateOutParameter._se_estateName" />
<s:hidden name="estateOutParameter._ne_tradeType" />
<s:hidden name="estateOutParameter._ne_contactUserId" />
<s:hidden name="estateOutParameter._ne_provinceId" />
<s:hidden name="estateOutParameter._ne_cityId" />
<s:hidden name="estateOutParameter._ne_districtId" />
<s:hidden name="estateOutParameter._ne_areaId" />
<s:hidden name="estateOutParameter._ne_tradeMode" />
<s:hidden name="estateOutParameter._ne_estateType" />
<s:hidden name="estateOutParameter._nge_area" />
<s:hidden name="estateOutParameter._nle_area" />
<s:hidden name="estateOutParameter._ne_isLift" />
<s:hidden name="estateOutParameter._nge_practicalArea" />
<s:hidden name="estateOutParameter._nle_practicalArea" />
<s:hidden name="estateOutParameter._ne_toward" />
<s:hidden name="estateOutParameter._nge_floor" />
<s:hidden name="estateOutParameter._nle_floor" />
<s:hidden name="estateOutParameter._nge_totalFloor" />
<s:hidden name="estateOutParameter._nle_totalFloor" />
<s:hidden name="estateOutParameter._nge_salePrice" />
<s:hidden name="estateOutParameter._nle_salePrice" />
<s:hidden name="estateOutParameter._nge_rentPrice" />
<s:hidden name="estateOutParameter._nle_rentPrice" />
<s:hidden name="estateOutParameter._ne_hall" />
<s:hidden name="estateOutParameter._ne_bedroom" />
<s:hidden name="estateOutParameter._ne_toilet" />
<s:hidden name="estateOutParameter._ne_porch" />
<s:hidden name="estateOutParameter._ne_minMonth" />
<s:hidden name="estateOutParameter._ne_fitment" />
<s:hidden name="estateOutParameter._ne_device" />

<s:hidden name="estateId"/>
<s:hidden name="tradeType" value="2"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/est/estateout/estateOutList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<p class="cGray02"><b>委托交易区 - 出售信息</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
有效期：<s:textfield name="effective" id="effective" size="2" />天</p>
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘基本信息<span class="cOrange">(必填)</span></b></p>
<div class="memberC_line"></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td>
			<label class="est_label" for="estateName"><s:text name="estateName"/>:</label>
		</td>
		<td colspan="3">
			<s:textfield name="estateName" id="estateName" cssClass="memberC_input04"/>
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
			<label class="est_label" for="area"><s:text name="area"/>:</label>
    </td>
    <td class="content_td">
    	<s:textfield name="area" id="area" cssClass="memberC_input08"/>m<sup>2</sup>
    </td>
    <td class="label_td">
			<label class="est_label" for="area" ><s:text name="practicalArea"/>:</label>
    </td>
    <td class="content_td">
    	<s:textfield name="practicalArea" id="practicalArea" cssClass="memberC_input08"/>m<sup>2</sup>
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
			<label class="est_label" for="address"><s:text name="address"/>:</label>
    </td>
    <td class="content_td" colspan="3">
    	<s:textfield id="address" name="address" cssClass="memberC_input04" />
    </td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="totalFloor"><s:text name="totalFloor"/>:</label>
    </td>
    <td class="content_td">
    	<s:textfield	name="totalFloor" cssClass="memberC_input08"/>
    </td>
    <td class="label_td">
			<label class="est_label" for="floor"><s:text name="floor"/>:</label>
    </td>
    <td class="content_td">
    	<s:textfield	name="floor" cssClass="memberC_input08"/>
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
    <td class="label_td">
			<label class="est_label" for="toward"><s:text name="toward"/>:</label>
    </td>
    <td class="content_td">
    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward')" cssClass="dropdown"
		 	id="toward" name="toward" emptyOption="true" listValue="itemName" listKey="itemKey" />
    </td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="fitment"><s:text name="fitment"/>:</label>
    </td>
    <td class="content_td">
    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment',null,'0')" cssClass="dropdown"
		 	id="fitment" name="fitment" emptyOption="true" listValue="itemName" listKey="itemKey" />
    </td>
    <td class="label_td">
			<label class="est_label" for="device"><s:text name="device"/>:</label>
    </td>
    <td class="content_td">
	    <s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$device',null,'0')" cssClass="dropdown"
		 	id="device" name="device" emptyOption="true" listValue="itemName" listKey="itemKey" />
    </td>
  </tr>
  <tr>
		<td class="label_td" >
			<label class="est_label" for="manageCost"><s:text name="manageCost"/></label>
    </td>
    <td class="content_td" colspan="3" >
    	<s:textfield name="manageCost" id="manageCost" cssClass="memberC_input08" />元/平方米·月
    </td>
  </tr>
  <tr>
		<td class="label_td" >
			<label class="est_label" for="tradeMode"><s:text name="tradeMode" /></label>
    </td>
    <td class="content_td" >
    	<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$out_trade_mode')" 
  		name="tradeMode" id="tradeMode" listValue="itemName" listKey="itemKey" onchange="f_chageTradeMode(this)"/>
    </td>
  </tr>
</table>

<div id="saleDiv" style="display: none;">
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘出售信息<span class="cOrange">(出售楼盘必填)</span></b></p>
<div class="memberC_line"></div>
</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" style="display: none;">
	<tr>
		<td class="label_td" >
			<label class="est_label" for="estateCardNo"><s:text name="estateCardNo" /></label>:
    </td>
    <td class="content_td" >
    	<s:textfield	name="estateCardNo" id="estateCardNo" cssClass="memberC_input01"/>
    </td>
    <td class="label_td" >
			<label class="est_label" for="buildYear"><s:text name="buildYear" /></label>:
    </td>
    <td class="content_td" >
    	<s:textfield name="buildYear" id="buildYear" cssClass="memberC_input01"/>
    </td>
  </tr>
  <tr>
  	<td class="label_td" >
  		<label class="est_label" for="card5year"><s:text name="card5year" /></label>:
  	</td>
  	<td class="content_td" >
  		<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$yes_no')"
  		name="card5year" id="card5year" listValue="itemName" listKey="itemKey" cssClass="dropdown"/>
  	</td>
  	<td class="label_td" >
  		<label class="est_label" for="salePrice"><s:text name="salePrice"/></label>
  	</td>
  	<td class="content_td" >
  		<s:textfield name="salePrice" id="salePrice" cssClass="memberC_input03" />元
		</td>
  </tr>
  <tr>
		<td class="label_td" >
  		<label class="est_label" for="develop"><s:text name="develop"/></label>
  	</td>
  	<td class="content_td" colspan="3" >
  		<s:textfield name="develop" id="develop" cssClass="memberC_input04" />
		</td>
  </tr>
</table>

<div id="rentDiv" style="display: none;">
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘出租信息<span class="cOrange">(出租楼盘必填)</span></b></p>
<div class="memberC_line"></div>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="rentTbl" style="display: none;">
	<tr>
  	<td class="label_td" >
  		<label class="est_label" for="rentPrice"><s:text name="rentPrice"/></label>
		</td>
		<td class="content_td" >
  		<s:textfield name="rentPrice" id="rentPrice" cssClass="memberC_input08" />元/月
		</td>
		<td class="label_td" >
			<label class="est_label" for="minMonth"><s:text name="minMonth"/></label>
		</td>
		<td class="content_td" >
			<s:textfield name="minMonth" id="minMonth" cssClass="memberC_input08" />
		</td>
	</tr>
	<tr>
		<td class="label_td" >
  		<label class="est_label" for="deposit"><s:text name="deposit"/></label>
		</td>
		<td class="content_td" >
			<s:textfield name="deposit" id="deposit" cssClass="memberC_input08" />元	
		</td>
		<td class="label_td" >
  		<label class="est_label" for="waterCost"><s:text name="waterCost"/></label>
		</td>
		<td class="content_td" >
			<s:textfield name="waterCost" id="waterCost" cssClass="memberC_input08" />元/度
			按当地政府标准
		</td>
  </tr>
  <tr>
		<td class="label_td" >
  		<label class="est_label" for="electricCost"><s:text name="electricCost"/></label>
		</td>
		<td class="content_td" >
			<s:textfield name="electricCost" id="electricCost" cssClass="memberC_input08" />元/度
			<s:checkbox name="a" />		
		</td>
		<td class="label_td" >
  		<label class="est_label" for="otherCost"><s:text name="otherCost"/></label>
		</td>
		<td class="content_td" >
			<s:textfield name="otherCost" id="otherCost" cssClass="memberC_input08" />元/月
			<s:checkbox name="a" />
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
	//addfield("estateId","<s:text name="estateId"/>","Integer",false,10);
	addfield("estateName","<s:text name="estateName"/>","String",true,80);
	//addfield("tradeType","<s:text name="tradeType"/>","Integer",false,3);
	//addfield("contactUserId","<s:text name="contactUserId"/>","Integer",false,10);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",false,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",false,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",false,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("tradeMode","<s:text name="tradeMode"/>","Integer",false,3);
	addfield("estateType","<s:text name="estateType"/>","Integer",false,3);
	addfield("area","<s:text name="area"/>","Number",false,6,2);
	addfield("isLift","<s:text name="isLift"/>","Integer",false,3);
	addfield("practicalArea","<s:text name="practicalArea"/>","Number",false,6,2);
	addfield("effective","<s:text name="effective"/>","Integer",false,10);
	addfield("address","<s:text name="address"/>","String",false,128);
	addfield("toward","<s:text name="toward"/>","Integer",false,10);
	addfield("floor","<s:text name="floor"/>","Integer",false,10);
	addfield("totalFloor","<s:text name="totalFloor"/>","Integer",false,10);
	addfield("hall","<s:text name="hall"/>","Integer",false,10);
	addfield("bedroom","<s:text name="bedroom"/>","Integer",false,10);
	addfield("toilet","<s:text name="toilet"/>","Integer",false,10);
	addfield("porch","<s:text name="porch"/>","Integer",false,10);
	addfield("manageCost","<s:text name="manageCost"/>","Number",false,14,2);
	addfield("fitment","<s:text name="fitment"/>","Integer",false,3);
	addfield("device","<s:text name="device"/>","Integer",false,3);
	//addfield("remark","<s:text name="remark"/>","String",true,65535);
	//addfield("imagePath","<s:text name="imagePath"/>","String",true,80);
	//addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	//addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	//addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	//addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	var o = $('#tradeMode'); 
	if(o.val()==1 || o.val()==3){
		addfield("rentPrice","<s:text name="rentPrice"/>","Number",false,14,2);
		addfield("minMonth","<s:text name="minMonth"/>","Integer",false,10);
		addfield("waterCost","<s:text name="waterCost"/>","Number",false,6,2);
		addfield("electricCost","<s:text name="electricCost"/>","Number",false,6,2);
		addfield("otherCost","<s:text name="otherCost"/>","Number",false,12,2);
		addfield("deposit","<s:text name="deposit"/>","Number",false,12,2);
	}else if(o.val()==2 || o.val()==3){
		addfield("estateCardNo","<s:text name="estateCardNo"/>","String",false,50);
		addfield("card5year","<s:text name="card5year"/>","Integer",false,3);
		addfield("salePrice","<s:text name="salePrice"/>","Number",false,14,2);
		addfield("develop","<s:text name="develop"/>","String",false,50);
		addfield("buildYear","<s:text name="buildYear"/>","Integer",false,10);
	}
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