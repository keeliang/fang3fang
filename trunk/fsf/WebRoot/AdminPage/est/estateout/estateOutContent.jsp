<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>

<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/AdminPage.css" />
<link href="/AdminPage/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script> 
<script type="text/javascript" src="<%=contextPath %>/js/jquery.form.min.js"></script>

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
<s:hidden name="estateOutParameter._slike_estateName" />
<s:hidden name="estateOutParameter._ne_tradeType" />
<s:hidden name="estateOutParameter._ne_contactUserId" />
<s:hidden name="estateOutParameter._ne_provinceId" />
<s:hidden name="estateOutParameter._ne_cityId" />
<s:hidden name="estateOutParameter._ne_districtId" />
<s:hidden name="estateOutParameter._ne_areaId" />
<s:hidden name="estateOutParameter._ne_palaceId" />
<s:hidden name="estateOutParameter._ne_tradeMode" />
<s:hidden name="estateOutParameter._ne_estateType" />
<s:hidden name="estateOutParameter._nge_area" />
<s:hidden name="estateOutParameter._nle_area" />
<s:hidden name="estateOutParameter._ne_isLift" />
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
<s:hidden name="estateOutParameter._ne_isRecommond" />
<s:hidden name="estateOutParameter._ne_minMonth" />
<s:hidden name="estateOutParameter._ne_fitment" />
<s:hidden name="estateOutParameter._ne_device" />
<s:hidden name="estateOutParameter._dge_createTime" />
<s:hidden name="estateOutParameter._dle_createTime" />
<input type="hidden" name="estateOutParameter.sortColumns" value="createTime|DESC" />
<s:hidden name="estateId"/>
<s:hidden name="tradeType" value="2"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<s:if test="cmd!='new' && cmd!='select'">
				<input type="button" onclick="f_newComment()" value="新增留言"/>
				<input type="button" onclick="f_examine()" value="<s:text name="changeExamine"/>" >
				<s:if test="isRecommond==0">
					<input type="button" onclick="f_recommond(1)" value="推荐" >
				</s:if>
				<s:if test="isRecommond==1">
					<input type="button" onclick="f_recommond(0)" value="取消推荐" >
				</s:if>
			</s:if>
			<input type="button" onclick="g_back('/sysadmin/est/estateout/estateOutList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<p class="cGray02"><b>委托交易区 - 出租出售信息</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘基本信息<span class="cOrange">(必填)</span></b></p>
<div class="memberC_line"></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
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
		<td>
			<label class="est_label" for="estateName"><s:text name="estateName"/>:</label>
		</td>
		<td colspan="3">
			<s:textfield name="estateName" id="estateName" cssClass="memberC_input04"/>
			<input type="button" value="上传图片" id="btnUpload" />
			<s:hidden name="imagePath" />
		</td>
	</tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="area"><s:text name="area"/>:</label>
    </td>
    <td class="content_td" colspan="3" >
    	<s:textfield name="area" id="area" cssClass="memberC_input08"/>m<sup>2</sup>
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
    	<s:textfield name="bedroom" cssClass="memberC_input06" /><s:text name="bedroom"/>
    	<s:textfield name="hall" cssClass="memberC_input06" /><s:text name="hall"/>
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
    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward',null,'0')" cssClass="dropdown"
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
			<label class="est_label" for="manageCost"><s:text name="manageCost"/>:</label>
    </td>
    <td class="content_td">
    	<s:textfield name="manageCost" id="manageCost" cssClass="memberC_input08" />元/月
    </td>
    <td class="label_td" >
			<label class="est_label" for="tradeMode"><s:text name="tradeMode" />:</label>
    </td>
    <td class="content_td" >
    	<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$out_trade_mode')" cssClass="dropdown"
  		name="tradeMode" id="tradeMode" listValue="itemName" listKey="itemKey" onchange="f_chageTradeMode()"/>
    </td>
  </tr>
  <tr>
  	<td class="label_td" >
  		<label class="est_label" for="isRecommond"><s:text name="isRecommond"/>:</label>
  	</td>
  	<td class="content_td" >
  		<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$yes_no')" cssClass="dropdown"
  		name="isRecommond" id="isRecommond" listValue="itemName" listKey="itemKey" />
  	</td>
  </tr>
  <tr>
  	<td class="label_td" >
  		<label class="est_label" for="remark"><s:text name="remark"/>:</label>
  	</td>
  	<td colspan="3">
  		<s:textarea rows="4" cols="70" name="remark" ></s:textarea>
  	</td>
  </tr>
  <s:if test="cmd!='new'">
	  <tr>
	    <td class="label_td" >
				<label class="est_label" for="examine"><s:text name="examine" />:</label>
	    </td>
	    <td class="content_td" >
	    	<fsf:dictTranslate groupName="$examine" value="examine"/>
	    	<s:hidden name="examine" />
	    </td>
	    <td class="label_td" >
				<label class="est_label" for="examine"><s:text name="examineUserId" />:</label>
	    </td>
	    <td class="content_td" >
	  		<fsf:dictTranslate groupName="#sys_user" value="examineUserId"/>  	
	    	<s:hidden name="examineUserId"/>
	    </td>
	  </tr>
  </s:if>
  <s:if test="cmd=='new'">
  	<input name="examine" type="hidden" value="1" />
  	<input name="examineUserId" type="hidden" value="${USER.userId }" />
  </s:if>
  <tr>
  	<td class="label_td" >
  		<label class="est_label" for="effective">有效期：</label>
  	</td>
  	<td colspan="3" class="content_td" >
  		<s:textfield name="effective" id="effective" size="2" />天
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
  		<s:textfield name="salePrice" id="salePrice" cssClass="memberC_input08" >
  			<s:param value="salePrice/10000" name="value" />
  		</s:textfield>万元
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
			<s:textfield name="minMonth" id="minMonth" cssClass="memberC_input08" />年
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
			<input type="text" onchange="f_changeCost(this)" 
				<s:if test="waterCost==-1">readonly class="memberC_input08_readonly" value=""</s:if>
				<s:else>value="${electricCost }" class="memberC_input082"</s:else> 
			/>元/度
			<input type="checkbox" <s:if test="waterCost==-1">checked</s:if> onclick="f_changeCost(this)" />
			<label for="waterCost">按当地政府标准</label>
			<s:hidden name="waterCost" id="waterCost" />
		</td>
  </tr>
  <tr>
		<td class="label_td" >
  		<label class="est_label" for="electricCost"><s:text name="electricCost"/></label>
		</td>
		<td class="content_td" >
			<input type="text" onchange="f_changeCost(this)" 
				<s:if test="electricCost==-1">readonly class="memberC_input08_readonly" value=""</s:if>
				<s:else>value="${electricCost }" class="memberC_input082"</s:else> 
			/>元/度
			<input type="checkbox" <s:if test="electricCost==-1">checked</s:if> onclick="f_changeCost(this)" />
			<label for="electricCost">按当地政府标准</label>
			<s:hidden name="electricCost" id="electricCost" />
		</td>
		<td class="label_td" >
  		<label class="est_label" for="otherCost"><s:text name="otherCost"/></label>
		</td>
		<td class="content_td" >
			<s:textfield name="otherCost" id="otherCost" cssClass="memberC_input08" />元/月
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
    	<s:if test="cmd=='new'">
    		<input value="${USER.userCode }" class="memberC_input01_readonly" readonly="true" />
    	</s:if>
    	<s:if test="cmd!='new'">
    		<s:hidden name="contactUserId" />
				<s:textfield name="contactUser.userCode" cssClass="memberC_input01_readonly" readonly="true"/>    	
    	</s:if>
    </td>
    <td class="label_td" >
			<label class="est_label" >电话</label>:
    </td>
    <td class="content_td" >
    	<s:if test="cmd=='new'">
    		<input value="${USER.tel }" class="memberC_input01_readonly" readonly="true" />
    	</s:if>
    	<s:if test="cmd!='new'">
				<s:textfield name="contactUser.tel" cssClass="memberC_input01_readonly" readonly="true"/>    	
    	</s:if>
    </td>
  </tr>
  <tr>
		<td class="label_td" >
			<label class="est_label" >手机</label>:
    </td>
    <td class="content_td" >
    	<s:if test="cmd=='new'">
    		<input value="${USER.phone }" class="memberC_input01_readonly" readonly="true" />
    	</s:if>
    	<s:if test="cmd!='new'">
				<s:textfield name="contactUser.phone" cssClass="memberC_input01_readonly" readonly="true"/>    	
    	</s:if>
    </td>
    <td class="label_td" >
			<label class="est_label" >QQ</label>:
    </td>
    <td class="content_td" >
    	<s:if test="cmd=='new'">
    		<input value="${USER.qq }" class="memberC_input01_readonly" readonly="true" />
    	</s:if>
    	<s:if test="cmd!='new'">
				<s:textfield name="contactUser.qq" cssClass="memberC_input01_readonly" readonly="true"/>    	
    	</s:if>
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
			<input class="memberC_input01_readonly" readonly="true" 
			value="<fsf:dictTranslate groupName="#sys_user" value="updateUserId"/>">
		</td>
	</tr>
</table>
</s:form>
<%@include file="/share/upload.jsp" %>
</body>
</html>
<script type="text/javascript">
var UploadActionName = "<%=contextPath%>/sysadmin/est/estateout/uploadFile.action";
$(function() {
	f_changeProvince(true);
	f_chageTradeMode();
});

function f_examine(){
	showModalDialog(contextPath+"/sysadmin/est/estateout/estateOutExamineFrm.action?estateId=${estateId}",window,"dialogWidth:800px;dialogHeight:600px;");
}

function f_recommond(s){
	document.forms['formItem'].isRecommond.value = s;
	document.forms['formItem'].action = contextPath+"/sysadmin/est/estateout/recommond.action";
	document.forms['formItem'].submit();
}

function f_finishSelectUser(obj){
	document.forms['formItem'].action = "<%=contextPath %>/sysadmin/est/estateout/examineSubmit.action";
	var a = document.forms['formItem'].examine.value;
	if(typeof(obj)=="string"){
		if(obj==a){
			return;
		}else{
			document.forms['formItem'].examine.value = obj;
		}
	}else{
		document.forms['formItem'].contactUserId.value = obj.userId;
		document.forms['formItem'].examine.value = 1;
	}
	document.forms['formItem'].submit();
}

function f_validate(){
	fromName = "formItem";
	addfield("estateName","<s:text name="estateName"/>","String",false,80);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",false,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",false,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",false,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("tradeMode","<s:text name="tradeMode"/>","Integer",false,3);
	addfield("estateType","<s:text name="estateType"/>","Integer",false,3);
	addfield("area","<s:text name="area"/>","Number",false,6,2);
	addfield("isLift","<s:text name="isLift"/>","Integer",false,3);
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
	//addfield("examine","<s:text name="examine"/>","Integer",false,3);
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
function f_chageTradeMode(){
	var obj = $('#tradeMode').get(0);
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

function f_changeCost(obj){
	var o = $(obj.parentNode).find("input[type='text']");
	if(obj.type=="checkbox"){
		o.attr("readonly",obj.checked);
		o.val("");
		if(obj.checked){
			o.addClass("memberC_input08_readonly");
			o.removeClass("memberC_input082");
			$(obj.parentNode).find("input[type='hidden']").val("-1");
		}else{
			o.addClass("memberC_input082");
			o.removeClass("memberC_input08_readonly");
			$(obj.parentNode).find("input[type='hidden']").val("");
		}
	}else if(obj.type=="text"){
		$(obj.parentNode).find("input[type='hidden']").val(obj.value)
	}
}

function f_newComment(){
	showModalDialog(contextPath+"/sysadmin/est/comment/newContentFrm.action?estateId=${estateId}&type=1",window,"dialogWidth:800px;dialogHeight:600px;");
}
</script>