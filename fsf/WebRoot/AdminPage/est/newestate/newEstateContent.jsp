<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/jquery.form.min.js"></script>
</head>
<body>
<s:form action="newEstateSave" namespace="/sysadmin/est/newestate" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="newEstateParameter.currentPage" />
<s:hidden name="newEstateParameter.maxResults" />
<s:hidden name="newEstateParameter._ne_estateId" />
<s:hidden name="newEstateParameter._slike_estateName" />
<s:hidden name="newEstateParameter._se_develop" />
<s:hidden name="newEstateParameter._ne_provinceId" />
<s:hidden name="newEstateParameter._ne_cityId" />
<s:hidden name="newEstateParameter._ne_districtId" />
<s:hidden name="newEstateParameter._ne_areaId" />
<s:hidden name="newEstateParameter._se_address" />
<s:hidden name="newEstateParameter._ne_status" />
<s:hidden name="newEstateParameter._ne_isHot" />
<s:hidden name="newEstateParameter._ne_estateType" />
<s:hidden name="newEstateParameter._nge_area" />
<s:hidden name="newEstateParameter._nle_area" />
<s:hidden name="newEstateParameter._ne_isLift" />
<s:hidden name="newEstateParameter._nge_practicalArea" />
<s:hidden name="newEstateParameter._nle_practicalArea" />
<s:hidden name="newEstateParameter._ne_effective" />
<s:hidden name="newEstateParameter._ne_toward" />
<s:hidden name="newEstateParameter._nge_price" />
<s:hidden name="newEstateParameter._nle_price" />
<s:hidden name="newEstateParameter._ne_hall" />
<s:hidden name="newEstateParameter._ne_bedroom" />
<s:hidden name="newEstateParameter._ne_toilet" />
<s:hidden name="newEstateParameter._ne_porch" />
<s:hidden name="newEstateParameter._ne_fitment" />
<s:hidden name="newEstateParameter._dge_createTime" />
<s:hidden name="newEstateParameter._dle_createTime" />
<s:hidden name="newEstateParameter._ne_createUserId" />

<s:hidden name="estateId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="f_newComment()" value="新增留言"/>
			<input type="button" onclick="g_back('/sysadmin/est/newestate/newEstateList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="estateName"/>:
					</td>
					<td>
						<s:textfield name="estateName" />
						<input type="button" value="上传图片" id="btnUpload" />
						<s:hidden name="imagePath" />
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="develop"/>:
					</td>
					<td>
						<s:textfield name="develop" />
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="provinceId"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="provinceId" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey" id="provinceId" onchange="f_changeProvince()"/>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="cityId"/>:
					</td>
					<td id="cityTd">
						
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="districtId"/>:
					</td>
					<td id="districtTd">
						
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="areaId"/>:
					</td>
					<td id="areaTd">
						
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="address"/>:
					</td>
					<td>
						<s:textfield name="address" />
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="status"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="status" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"  /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="isHot"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$yes_no')" name="isHot" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="estateType"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" name="estateType" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="area"/>:
					</td>
					<td>
						<s:textfield name="area" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="isLift"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$is_lift')" name="isLift" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="practicalArea"/>:
					</td>
					<td>
						<s:textfield name="practicalArea" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="effective"/>:
					</td>
					<td>
						<s:textfield name="effective" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="toward"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward',null,'0')" name="toward" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="totalFloor"/>:
					</td>
					<td>
						<s:textfield name="totalFloor" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="price"/>:
					</td>
					<td>
						<s:textfield name="price" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="structure"/>:
					</td>
					<td>
						<s:text name="bedroom" />:
						<s:textfield name="bedroom" cssClass="memberC_input03" />
						<s:text name="hall" />:
						<s:textfield name="hall" cssClass="memberC_input03" />
						<s:text name="toilet" />:
						<s:textfield name="toilet" cssClass="memberC_input03"/>
						<s:text name="porch" />:
						<s:textfield name="porch" cssClass="memberC_input03"/>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="manageCost"/>:
					</td>
					<td>
						<s:textfield name="manageCost" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="otherCost"/>:
					</td>
					<td>
						<s:textfield name="otherCost" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="fitment"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment',null,'0')" name="fitment" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"  /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="remark"/>:
					</td>
					<td>
						<s:textfield name="remark" />
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="createTime"/>:
					</td>
					<td>
						<s:textfield name="createTime"  cssClass="memberC_input01_readonly" readonly="true">
							<s:param name="value">
								<s:date name="createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="createUserId"/>:
					</td>
					<td>
						<s:hidden name="createUserId"/>
						<input class="memberC_input01_readonly" readonly="true" 
						value="<fsf:dictTranslate groupName="#sys_user" value="updateUserId"/>">
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="updateTime"/>:
					</td>
					<td>
						<s:textfield name="updateTime"  cssClass="memberC_input01_readonly" readonly="true">
							<s:param name="value">
								<s:date name="updateTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="updateUserId"/>:
					</td>
					<td>
						<s:hidden name="updateUserId"/>
						<input class="memberC_input01_readonly" readonly="true" 
						value="<fsf:dictTranslate groupName="#sys_user" value="updateUserId"/>">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</s:form>
<%@include file="/share/upload.jsp" %>
</body>
</html>
<script type="text/javascript">
var UploadActionName = "<%=contextPath%>/sysadmin/est/newestate/uploadFile.action";
$(function() {
	f_changeProvince(true);
});
function f_validate(){
	fromName = "formItem";
	//addfield("estateId","<s:text name="estateId"/>","Integer",false,10);
	addfield("estateName","<s:text name="estateName"/>","String",true,80);
	addfield("develop","<s:text name="develop"/>","String",true,50);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("address","<s:text name="address"/>","String",true,80);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	addfield("isHot","<s:text name="isHot"/>","Integer",false,3);
	addfield("estateType","<s:text name="estateType"/>","Integer",false,3);
	addfield("area","<s:text name="area"/>","Number",false,6);
	addfield("isLift","<s:text name="isLift"/>","Integer",false,3);
	addfield("practicalArea","<s:text name="practicalArea"/>","Number",false,6);
	addfield("effective","<s:text name="effective"/>","Integer",false,10);
	addfield("toward","<s:text name="toward"/>","Integer",true,10);
	addfield("totalFloor","<s:text name="totalFloor"/>","Integer",false,10);
	addfield("price","<s:text name="price"/>","Number",true,14);
	addfield("hall","<s:text name="hall"/>","Integer",false,10);
	addfield("bedroom","<s:text name="bedroom"/>","Integer",false,10);
	addfield("toilet","<s:text name="toilet"/>","Integer",false,10);
	addfield("porch","<s:text name="porch"/>","Integer",false,10);
	addfield("manageCost","<s:text name="manageCost"/>","Number",false,14);
	addfield("otherCost","<s:text name="otherCost"/>","Number",true,12);
	addfield("fitment","<s:text name="fitment"/>","Integer",false,3);
	addfield("remark","<s:text name="remark"/>","String",true,65535);
	//addfield("imagePath","<s:text name="imagePath"/>","String",true,80);
	//addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	//addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	//addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	//addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
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

function f_newComment(){
	showModalDialog(contextPath+"/sysadmin/est/comment/newContentFrm.action?estateId=${estateId}&type=2",window,"dialogWidth:800px;dialogHeight:600px;");
}
</script>