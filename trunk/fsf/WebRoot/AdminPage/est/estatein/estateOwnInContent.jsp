<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<link type="text/css" rel="stylesheet" href="/AdminPage/css/style.css"/>
<script type="text/javascript" src="${contextPath}/js/jquery.js"></script>
<style type="text/css">
.est_info{
	font-size: 12px;
	font-weight: bold;
	vertical-align: middle;
}
</style>
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

<s:hidden name="estateInParameter._ne_tradeType" />



<s:hidden name="estateId"/>
<s:hidden name="tradeType" value="2"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<s:if test="examine==0 || examine==-1">
				<input type="button" onclick="f_examine(1);" value="审核通过">
			</s:if>
			<s:if test="examine==1 || examine==-1">
				<input type="button" onclick="f_examine(0);" value="审核中">
			</s:if>
			<s:if test="examine==1 || examine==0">
				<input type="button" onclick="f_examine(-1);" value="审核未通过">
			</s:if>
			<input type="button" onclick="g_back('/sysadmin/est/estatein/estateInList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<p class="cGray02"><b>委托交易区 - 求租求售信息</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
有效期：<s:textfield name="effective" id="effective" size="2" />天</p>
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘基本信息</b></p>
<div class="memberC_line"></div>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="label_td">
			<label class="est_label" for=title><s:text name="title"/>:</label>
		</td>
		<td colspan="3">
			<span class="est_info">${title }</span>
		</td>
	</tr>
	<tr>
  	<td class="label_td">
  		<label class="est_label" for="provinceId"><s:text name="provinceId"/>:</label>
  	</td>
  	<td class="content_td">
  		<span class="est_info"><fsf:dictTranslate groupName="#province" value="provinceId"/></span>
  	</td>
    <td class="label_td">
    	<label class="est_label" for="cityId"><s:text name="cityId"/>:</label>
		</td>
		<td class="content_td" >
			<span class="est_info"><fsf:dictTranslate groupName="#city" value="cityId"/></span>
		</td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="districtId"><s:text name="districtId"/>:</label>
    </td>
    <td class="content_td" >
    	<span class="est_info"><fsf:dictTranslate groupName="#district" value="districtId"/></span>
    </td>
    <td class="label_td">
			<label class="est_label" for="area"><s:text name="areaId"/>:</label>
    </td>
    <td class="content_td" id="areaTd">
			<span class="est_info"><fsf:dictTranslate groupName="#business_area" value="areaId"/></span>    
    </td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label"><s:text name="area"/>:</label>
		</td>
		<td class="content_td">
			<span class="est_info">${areaFrom }m<sup>2</sup>到${areaTo }m<sup>2</sup></span>
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="estateType"><s:text name="estateType"/>:</label>
    </td>
    <td class="content_td">
    	<span class="est_info"><fsf:dictTranslate groupName="$estate_type" value="estateType"/></span>
    </td>
    <td class="label_td">
			<label class="est_label" ><s:text name="structure"/>:</label>
    </td>
    <td class="content_td">
    	<span class="est_info">${hall }<s:text name="hall"/></span>
    	<span class="est_info">${bedroom }<s:text name="bedroom"/></span>
    	<span class="est_info">${toilet }<s:text name="toilet"/></span>
    	<span class="est_info">${porch }<s:text name="porch"/></span>
    </td>
  </tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="isLift"><s:text name="isLift"/>:</label>
		</td>
		<td class="content_td">
			<span class="est_info"><fsf:dictTranslate groupName="$is_lift" value="isLift"/></span>
		</td>
		<td>
			<label class="est_label" for="toward"><s:text name="toward"/>:</label>
		</td>
		<td>
			<label class="est_label" for="toward"><s:text name="toward"/>:</label>
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="fitment"><s:text name="fitment"/>:</label>
		</td>
		<td class="content_td">
			<span class="est_info"><fsf:dictTranslate groupName="$fitment" value="fitment"/></span>
		</td>
		<td class="label_td">
			<label class="est_label" for="device"><s:text name="device"/>:</label>
		</td>
		<td class="content_td">
			<span class="est_info"><fsf:dictTranslate groupName="$device" value="device"/></span>
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="examine"><s:text name="examine"/>:</label>
		</td>
		<td class="content_td">
			<fsf:dictTranslate groupName="$examine" value="examine"/>
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="tradeMode"><s:text name="tradeMode"/>:</label>
		</td>
		<td class="content_td">
  		<span class="est_info"><fsf:dictTranslate groupName="$in_trade_mode" value="tradeMode"/></span>
		</td>
	</tr>
	<tr>
		<td class="label_td">
			<label class="est_label" for="remark"><s:text name="remark"/>:</label>
		</td>
		<td colspan="3">
			<span class="est_info">${remark }</span>
		</td>
	</tr>
	<tr>
  	<td class="label_td" >
			<label class="est_label" for="examine"><s:text name="examine" />:</label>
    </td>
    <td class="content_td" >
    	<fsf:dictTranslate groupName="$examine" value="examine"/>
    	<s:hidden name="examine" />
    </td>
  	<td class="label_td" >
  		<label class="est_label" ><s:text name="examineUserId" />:</label>
  	</td>
    <td class="content_td" >
			<s:if test="examineUserId==-1">
    		不需要审核
    	</s:if>
    	<s:else>
    		<fsf:dictTranslate groupName="#sys_user" value="examineUserId"/>
    	</s:else>
    </td>
  </tr>
</table>

<div id="saleDiv" style="display: none;">
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘求售信息</b></p>
<div class="memberC_line"></div>
</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" style="display: none;">
	<tr>
		<td class="label_td">
			<label class="est_label" ><s:text name="buyPrice"/>:
		</td>
		<td>
			<span class="est_info">
				${buyPriceFrom }元-${buyPriceTo }元
			</span>
		</td>
	</tr>
</table>

<div id="rentDiv" style="display: none;">
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘求租信息</b></p>
<div class="memberC_line"></div>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="rentTbl" style="display: none;">
	<tr>
		<td class="label_td">
			<label class="est_label" ><s:text name="rentPrice"/>:</label>
		</td>
		<td>
			<span class="est_info">
				${rentPriceFrom }元/月-${rentPriceTo }元/月
			</span>
		</td>
	</tr>
</table>

<div class="memberC_line"></div>
<p class="est_title"><b>联系人信息</b></p>
<div class="memberC_line"></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" >
	<tr>
		<td class="label_td" >
			<label class="est_label" >联系人:</label>
    </td>
    <td class="content_td" >
    	<span class="est_info">${contactUser.userCode }</span>
    </td>
    <td class="label_td" >
			<label class="est_label" >电话"</label>
    </td>
    <td class="content_td" >
    	<span class="est_info">${contactUser.tel }</span>
    </td>
  </tr>
  <tr>
		<td class="label_td" >
			<label class="est_label" >手机:</label>
    </td>
    <td class="content_td" >
    	<span class="est_info">${contactUser.phone }</span>
    </td>
    <td class="label_td" >
			<label class="est_label" >QQ:</label>
    </td>
    <td class="content_td" >
    	<span class="est_info">${contactUser.qq }</span>
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
			<span class="est_info"><s:date name="createTime" format="yyyy-MM-dd" /></span>
		</td>
		<td class="label_td" >
			<s:text name="createUserId" />:
		</td>
		<td class="content_td" >
			<span class="est_info"><fsf:dictTranslate groupName="#sys_user" value="updateUserId"/></span>
		</td>
	</tr>
	<tr>
		<td class="label_td" >
			<s:text name="updateTime"/>:
		</td>
		<td class="content_td" >
			<span class="est_info"><s:date name="updateTime" format="yyyy-MM-dd"/></span>
		</td>
		<td class="label_td" >
			<s:text name="updateUserId"/>:
		</td>
		<td class="content_td" >
			<span class="est_info"><fsf:dictTranslate groupName="#sys_user" value="updateUserId"/></span>
		</td>
	</tr>
</table>

</s:form>
</body>
</html>
<script type="text/javascript">
$(function() {
	f_chageTradeMode();
});

function f_examine(s){
	document.forms['formItem'].action = "${contextPath}/sysadmin/est/estatein/ownExamineSubmit.action?examine="+s;
	document.forms['formItem'].submit();
}

function f_validate(){
	fromName = "formItem";
	//addfield("estateId","<s:text name="estateId"/>","Integer",false,10);
	addfield("title","<s:text name="title"/>","String",false,80);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("address","<s:text name="address"/>","String",true,80);
	//addfield("examine","<s:text name="examine"/>","Integer",true,3);
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
function f_chageTradeMode(){
	var v = ${tradeMode};
	if(v==1){
		$('#rentDiv').show();
		$('#rentTbl').show();
		$('#saleDiv').hide();
		$('#saleTbl').hide();
	}else if(v==2){
		$('#rentDiv').hide();
		$('#rentTbl').hide();
		$('#saleDiv').show();
		$('#saleTbl').show();
	}else if(v==3){
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
</script>