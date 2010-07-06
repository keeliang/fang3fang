<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
</head>

<body>
<s:form action="businessareaList" namespace="/sysadmin/est/businessarea" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="businessareaParameter.currentPage" id="currentPage"  />
<s:hidden name="businessareaParameter.maxResults" id="maxResults" />
<table>
	<tr>
		<td align="left" width="722"><img src="/AdminPage/images/scgl.jpg"/></td>
	</tr>
</table>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_ne_areaId" />:
					</td>
					<td width="35%">
						<s:textfield name="businessareaParameter._ne_areaId" />
					</td>
					<td width="15%" >
						<s:text name="_se_areaName" />:
					</td>
					<td width="35%">
						<s:textfield name="businessareaParameter._se_areaName" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="businessareaParameter._ne_provinceId" 
						listValue="itemName" listKey="itemKey" emptyOption="true" id="provinceId" onchange="f_changeProvince()" cssClass="dropdown"/>
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
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/est/businessarea/businessareaNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/est/businessarea/businessareaDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="areaId"/></td>
	<td><s:text name="areaName"/></td>
	<td><s:text name="provinceId"/></td>
	<td><s:text name="cityId"/></td>
	<td><s:text name="districtId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="businessareaEdit" namespace="/sysadmin/est/businessarea" id="url">
		<s:param name="areaId" value="#item.areaId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.areaId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="areaId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="areaName"/></a></td>
		<td>
			<fsf:dictTranslate groupName="#province" value="provinceId"/>
		</td>
		<td>
			<fsf:dictTranslate groupName="#city" value="cityId"/>
		</td>
		<td>
			<fsf:dictTranslate groupName="#district" value="districtId"/>
		</td>
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
function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","businessareaParameter._ne_cityId",json.data,"itemKey","itemName","${businessareaParameter._ne_cityId}","f_changeCity()");
		$("#cityTd").html(selectTag.toString());
		if(isIndex)
			f_changeCity();
	},"json");
}
function f_changeCity(){
	if($("#provinceId").val()=="")
		return;
	if($("#cityId").val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#provinceId").val(),cityId:$("#cityId").val()},function(json){
		var selectTag = new SelectTag("districtId","businessareaParameter._ne_districtId",json.data,"itemKey","itemName","${businessareaParameter._ne_districtId}");
		$("#districtTd").html(selectTag.toString());
	},"json");
}
</script>