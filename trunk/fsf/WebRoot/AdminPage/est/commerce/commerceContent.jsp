<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath%>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath%>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=contextPath %>/fckeditor/fckeditor.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/jquery.form.min.js"></script>
</head>

<body style="background-color:#FFFFFF">
<s:form action="commerceSave" namespace="/sysadmin/est/commerce" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="commerceParameter.currentPage" />
<s:hidden name="commerceParameter.maxResults" />
<s:hidden name="commerceParameter._slike_title" />
<s:hidden name="commerceParameter._slike_content" />
<s:hidden name="commerceParameter._ne_provinceId" />
<s:hidden name="commerceParameter._ne_cityId" />
<s:hidden name="commerceParameter._ne_districtId" />
<s:hidden name="commerceParameter._ne_areaId" />
<s:hidden name="commerceParameter._ne_commerceType" />
<s:hidden name="commerceParameter._ne_status" />
<s:hidden name="commerceParameter._se_address" />
<s:hidden name="commerceParameter._se_contacter" />
<s:hidden name="commerceParameter._se_contactTel" />

<input type="hidden" name="commerceParameter.sortColumns" value="createTime|DESC" />
<s:hidden name="commerceId"/>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/est/commerce/commerceList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class="contentColumnNameTd"><s:text name="title"/>:</td>
					<td><s:textfield name="title" /><font color="red">*</font><input type="button" value="上传图片" id="btnUpload" /></td>
					<s:hidden name="imagePath" />
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="content"/>:</td>
					<td><s:textarea name="content" rows="4" cols="20"/><font color="red">*</font></td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="provinceId"/>:</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" cssClass="dropdown" 
  						id="provinceId" name="provinceId" emptyOption="true" onchange="f_changeProvince()" listValue="itemName" listKey="itemKey"/>
					</td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="cityId"/>:</td>
					<td id="cityTd"></td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="districtId"/>:</td>
					<td id="districtTd"></td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="areaId"/>:</td>
					<td id="areaTd"></td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="address"/>:</td>
					<td><s:textfield name="address" /></td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="contacter"/>:</td>
					<td><s:textfield name="contactUser.userName" cssClass="memberC_input01_readonly" readonly="true" /></td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="contactTel"/>:</td>
					<td><s:textfield name="contactUser.phone" cssClass="memberC_input01_readonly" readonly="true" /></td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="commerceType"/>:</td>
					<td>
						<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$commerce_type')" cssClass="dropdown"
    					id="commerceType" name="commerceType" emptyOption="false" listValue="itemName" listKey="itemKey" />
    					<font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="status"/>:</td>
					<td>
						<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" cssClass="dropdown"
    					id="status" name="status" emptyOption="false" listValue="itemName" listKey="itemKey" />
    					<font color="red">*</font>
					</td>
				</tr>
				
				<tr>
					<td class="contentColumnNameTd"><s:text name="ip"/>:</td>
					<td><s:textfield name="ip" readonly="true"/></td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="createTime"/>:</td>
					<td>
						<s:textfield name="createTime"  cssClass="memberC_input01_readonly" readonly="true">
							<s:param name="value">
								<s:date name="createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="createUserId"/>:</td>
					<td>
						<s:hidden name="createUserId"/>
						<input class="memberC_input01_readonly" readonly="true" 
						value="<fsf:dictTranslate groupName="#sys_user" value="createUserId"/>">
					</td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="updateTime"/>:</td>
					<td>
						<s:textfield name="updateTime"  cssClass="memberC_input01_readonly" readonly="true">
							<s:param name="value">
								<s:date name="updateTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
				<tr>
					<td class="contentColumnNameTd"><s:text name="updateUserId"/>:</td>
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
var UploadActionName = "<%=contextPath%>/sysadmin/est/commerce/uploadFile.action";
window.onload = function(){
	var oFCKeditor = new FCKeditor( 'content' ) ;
	oFCKeditor.BasePath	= "/fckeditor/" ;
	oFCKeditor.Height = "300";
	oFCKeditor.Width = "800";
	oFCKeditor.ReplaceTextarea() ;
}

$(function() {
	f_changeProvince(true);
});

function f_validate(){
	fromName = "formItem";
	addfield("title","<s:text name="title"/>","String",false,50);
	//addfield("content","<s:text name="content"/>","String",false,65535);
	addfield("content","<s:text name="content"/>","String",false,65535,null,null,null,null,FCKeditorAPI.GetInstance("content").GetXHTML(true));
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("commerceType","<s:text name="commerceType"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
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
</script>