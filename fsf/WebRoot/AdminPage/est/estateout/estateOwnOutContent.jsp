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
<style type="text/css">
.est_info{
	font-size: 12px;
	font-weight: bold;
	vertical-align: middle;
}
</style>
</head>

<body style="font-size: 14px;">
<!-- <div class="memberC_allRight02"> -->
<s:form action="estateOutSave" namespace="/sysadmin/est/estateout" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle">自主交易--<s:text name="contentTitle"/></div>
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
<s:hidden name="estateOutParameter._ne_isRecommond" />
<s:hidden name="estateOutParameter._ne_minMonth" />
<s:hidden name="estateOutParameter._ne_fitment" />
<s:hidden name="estateOutParameter._ne_device" />
<input type="hidden" name="estateOutParameter.sortColumns" value="createTime|DESC" />
<s:hidden name="estateId"/>
<s:hidden name="tradeType" value="1"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="f_newComment()" value="新增留言"/>
			<s:if test="examine==0 || examine==-1">
				<input type="button" onclick="f_examine(1);" value="审核通过">
			</s:if>
			<s:if test="examine==1 || examine==-1">
				<input type="button" onclick="f_examine(0);" value="审核中">
			</s:if>
			<s:if test="examine==1 || examine==0">
				<input type="button" onclick="f_examine(-1);" value="审核未通过">
			</s:if>
			<s:if test="isRecommond==0">
					<input type="button" onclick="f_recommond(1)" value="推荐" >
				</s:if>
				<s:if test="isRecommond==1">
					<input type="button" onclick="f_recommond(0)" value="取消推荐" >
				</s:if>
			<input type="button" onclick="g_back('/sysadmin/est/estateout/estateOwnOutList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<p class="cGray02"><b>自主交易区 - 出售信息</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘基本信息</b></p>
<div class="memberC_line"></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
  	<td class="label_td">
  		<label class="est_label" for="provinceId"><s:text name="provinceId"/>:</label>
  	</td>
  	<td class="content_td">
  		<span class="est_info"><fsf:dictTranslate groupName="#province" value="provinceId" /></span>
  	</td>
    <td class="label_td">
    	<label class="est_label" for="cityId"><s:text name="cityId"/>:</label>
		</td>
		<td class="content_td" >
			<span class="est_info"><fsf:dictTranslate groupName="#city" value="cityId" /></span>
		</td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="districtId"><s:text name="districtId"/>:</label>
    </td>
    <td class="content_td" >
    	<span class="est_info"><fsf:dictTranslate groupName="#district" value="districtId" /></span>
    </td>
    <td class="label_td">
			<label class="est_label" for="area"><s:text name="areaId"/>:</label>
    </td>
    <td class="content_td" >
    	<span class="est_info"><fsf:dictTranslate groupName="#est_businessarea" value="areaId" /></span>
    </td>
  </tr>
  <tr>
		<td>
			<label class="est_label" for="estateName"><s:text name="estateName"/>:</label>
		</td>
		<td colspan="3">
			<span class="est_info">${estateName }</span>
		</td>
	</tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="area"><s:text name="area"/>:</label>
    </td>
    <td class="content_td">
    	<span class="est_info">${area }m<sup>2</sup></span>
    </td>
    <td class="label_td">
			<label class="est_label" for="area" ><s:text name="practicalArea"/>:</label>
    </td>
    <td class="content_td">
    	<span class="est_info">${practicalArea }m<sup>2</sup></span>
    </td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="estateType"><s:text name="estateType"/>:</label>
    </td>
    <td class="content_td">
    	<span class="est_info"><fsf:dictTranslate groupName="$estate_type" value="estateType" /></span>
    </td>
    <td class="label_td">
			<label class="est_label" ><s:text name="structure"/>:</label>
    </td>
    <td class="content_td">
    	<span class="est_info">${bedroom }<s:text name="bedroom"/></span>
    	<span class="est_info">${hall }<s:text name="hall"/></span>
    	<span class="est_info">${toilet }<s:text name="toilet"/></span>
    	<span class="est_info">${porch }<s:text name="porch"/></span>
    </td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="address"><s:text name="address"/>:</label>
    </td>
    <td class="content_td" colspan="3">
    	<span class="est_info">${address }</span>
    </td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="totalFloor"><s:text name="totalFloor"/>:</label>
    </td>
    <td class="content_td">
    	<span class="est_info">${totalFloor }</span>层
    </td>
    <td class="label_td">
			<label class="est_label" for="floor"><s:text name="floor"/>:</label>
    </td>
    <td class="content_td">
    	<span class="est_info">${floor }</span>层
    </td>
  </tr>
  <tr>
		<td class="label_td">
			<label class="est_label" for="isLift"><s:text name="isLift"/>:</label>
    </td>
    <td class="content_td">
		 	<span class="est_info"><fsf:dictTranslate groupName="$is_lift" value="isLift"/></span>
    </td>
    <td class="label_td">
			<label class="est_label" for="toward"><s:text name="toward"/>:</label>
    </td>
    <td class="content_td">
		 	<span class="est_info"><fsf:dictTranslate groupName="$toward" value="toward"/></span>
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
		<td class="label_td" >
			<label class="est_label" for="manageCost"><s:text name="manageCost"/>:</label>
    </td>
    <td class="content_td" >
    	<span class="est_info">${manageCost }元/月</span>
    </td>
    <td class="label_td" >
			<label class="est_label" for="tradeMode"><s:text name="tradeMode" />:</label>
    </td>
    <td class="content_td" >
  		<span class="est_info"><fsf:dictTranslate groupName="$out_trade_mode" value="tradeMode"/></span>
    </td>
  </tr>
  <tr>
		<td class="label_td" >
			<label class="est_label" for="isRecommond"><s:text name="isRecommond"/>:</label>
    </td>
    <td class="content_td" >
    	<fsf:dictTranslate groupName="$yes_no" value="isRecommond"/>
    </td>
  </tr>
  <tr>
  	<td class="label_td" >
  		<label class="est_label" for="remark"><s:text name="remark"/>:</label>
  	</td>
  	<td colspan="3" style="width: 600px;word-wrap:break-word;">
  		${remark }
  	</td>
  </tr>
  <tr>
  	<td class="label_td" >
			<label class="est_label" for="examine"><s:text name="examine" />:</label>
    </td>
    <td class="content_td" >
    	<fsf:dictTranslate groupName="$examine" value="examine"/>
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
  <tr>
  	<td class="label_td" >
  		<label class="est_label" for="effective">有效期：</label>
  	</td>
  	<td colspan="3" class="content_td" >
  		${effective }天
  	</td>
  </tr>
</table>

<div id="saleDiv" style="display: none;">
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘出售信息</b></p>
<div class="memberC_line"></div>
</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" style="display: none;">
	<tr>
		<td class="label_td" >
			<label class="est_label" for="estateCardNo"><s:text name="estateCardNo" />:</label>:
    </td>
    <td class="content_td" >
    	<span class="est_info">${estateCardNo }</span>
    </td>
    <td class="label_td" >
			<label class="est_label" for="buildYear"><s:text name="buildYear" />:</label>:
    </td>
    <td class="content_td" >
    	<span class="est_info">${buildYear }</span>
    </td>
  </tr>
  <tr>
  	<td class="label_td" >
  		<label class="est_label" for="card5year"><s:text name="card5year" />:</label>:
  	</td>
  	<td class="content_td" >
  		<span class="est_info"><fsf:dictTranslate groupName="$yes_no" value="card5year"/></span>
  	</td>
  	<td class="label_td" >
  		<label class="est_label" for="salePrice"><s:text name="salePrice"/>:</label>
  	</td>
  	<td class="content_td" >
  		<span class="est_info">${salePrice }元</span>
		</td>
  </tr>
  <tr>
		<td class="label_td" >
  		<label class="est_label" for="develop"><s:text name="develop"/>:</label>
  	</td>
  	<td class="content_td" colspan="3" >
  		<span class="est_info">${develop }</span>
		</td>
  </tr>
</table>

<div id="rentDiv" style="display: none;">
<div class="memberC_line"></div>
<p class="est_title"><b>楼盘出租信息</b></p>
<div class="memberC_line"></div>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="rentTbl" style="display: none;">
	<tr>
  	<td class="label_td" >
  		<label class="est_label" for="rentPrice"><s:text name="rentPrice"/>:</label>
		</td>
		<td class="content_td" >
  		<span class="est_info">${rentPrice }元/月</span>
		</td>
		<td class="label_td" >
			<label class="est_label" for="minMonth"><s:text name="minMonth"/>:</label>
		</td>
		<td class="content_td" >
			<span class="est_info">${minMonth }年</span>
		</td>
	</tr>
	<tr>
		<td class="label_td" >
  		<label class="est_label" for="deposit"><s:text name="deposit"/>:</label>
		</td>
		<td class="content_td" >
			<span class="est_info">${deposit }元</span>
		</td>
		<td class="label_td" >
  		<label class="est_label" for="waterCost"><s:text name="waterCost"/>:</label>
		</td>
		<td class="content_td" >
			<span class="est_info">
			<s:if test="waterCost =-1">
				按当地政府标准			
			</s:if>
			<s:else>
				${waterCost }元/度
			</s:else>
			</span>
		</td>
  </tr>
  <tr>
		<td class="label_td" >
  		<label class="est_label" for="electricCost"><s:text name="electricCost"/>:</label>
		</td>
		<td class="content_td" >
			<span class="est_info">
			<s:if test="electricCost =-1">
				按当地政府标准
			</s:if>
			<s:else>
				${electricCost }元/度
			</s:else>
			</span>
		</td>
		<td class="label_td" >
  		<label class="est_label" for="otherCost"><s:text name="otherCost"/>:</label>
		</td>
		<td class="content_td" >
			<span class="est_info">${otherCost }元/月</span>
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
    	<span class="est_info">${contactUser.userCode }</span>
    </td>
    <td class="label_td" >
			<label class="est_label" >电话</label>:
    </td>
    <td class="content_td" >
    	<span class="est_info">${contactUser.tel }</span>
    </td>
  </tr>
  <tr>
		<td class="label_td" >
			<label class="est_label" >手机</label>:
    </td>
    <td class="content_td" >
    	<span class="est_info">${contactUser.phone }</span>
    </td>
    <td class="label_td" >
			<label class="est_label" >QQ</label>:
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
	document.forms['formItem'].action = "<%=contextPath %>/sysadmin/est/estateout/ownExamineSubmit.action?examine="+s;
	document.forms['formItem'].submit();
}

function f_recommond(s){
	document.forms['formItem'].isRecommond.value = s;
	document.forms['formItem'].action = contextPath+"/sysadmin/est/estateout/ownRecommond.action";
	document.forms['formItem'].submit();
}

function f_validate(){
	fromName = "formItem";
	addfield("estateName","<s:text name="estateName"/>","String",true,80);
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
	var v = ${tradeMode}
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
function f_newComment(){
	showModalDialog(contextPath+"/sysadmin/est/comment/newContentFrm.action?estateId=${estateId}&type=1",window,"dialogWidth:800px;dialogHeight:600px;");
}
</script>