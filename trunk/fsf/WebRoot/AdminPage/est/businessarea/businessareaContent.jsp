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
</head>

<body>
<s:form action="businessareaSave" namespace="/sysadmin/est/businessarea" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="businessareaParameter.currentPage" />
<s:hidden name="businessareaParameter.maxResults" />
<s:hidden name="businessareaParameter._ne_areaId" />
<s:hidden name="businessareaParameter._se_areaName" />
<s:hidden name="businessareaParameter._ne_provinceId" />
<s:hidden name="businessareaParameter._ne_cityId" />
<s:hidden name="businessareaParameter._ne_districtId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/est/businessarea/businessareaList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="areaId"/>:
					</td>
					<td>
						<s:textfield name="areaId" readonly="only" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="areaName"/>:
					</td>
					<td>
						<s:textfield name="areaName" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="provinceId"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="provinceId" cssClass="dropdown"
						listValue="itemName" listKey="itemKey" emptyOption="true" id="provinceId" onchange="f_changeProvince()"/>
						<font color="red">*</font>
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
			</table>
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
	//addfield("areaId","<s:text name="areaId"/>","Integer",false,10);
	addfield("areaName","<s:text name="areaName"/>","String",false,50);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",false,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",false,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",false,10);
	return validate();
}
function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","cityId",json.data,"itemKey","itemName","${cityId}","f_changeCity()");
		$("#cityTd").html(selectTag.toString()+"<font color='red'>*</font>");
		if(isIndex)
			f_chageCity();
	},"json");
}
function f_changeCity(){
	if($("#provinceId").val()=="")
		return;
	if($("#cityId").val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#provinceId").val(),cityId:$("#cityId").val()},function(json){
		var selectTag = new SelectTag("districtId","districtId",json.data,"itemKey","itemName","${districtId}");
		$("#districtTd").html(selectTag.toString()+"<font color='red'>*</font>");
	},"json");
}
</script>