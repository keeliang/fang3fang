<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/share.jsp" %>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="/js/jquery.js"></script> 
</head>

<body>
<s:form action="districtList" namespace="/sysadmin/sys/district" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="districtParameter.currentPage" id="currentPage"  />
<s:hidden name="districtParameter.maxResults" id="maxResults" />
<table>
	<tr>
		<td align="left" width="722"><img src="/AdminPage/images/dcgl.jpg"/></td>
	</tr>
</table>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_ne_districtId" />:
					</td>
					<td width="35%">
						<s:textfield name="districtParameter._ne_districtId" />
					</td>
					<td width="15%" >
						<s:text name="_se_districtName" />:
					</td>
					<td width="35%">
						<s:textfield name="districtParameter._se_districtName" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="districtParameter._ne_provinceId" 
						listValue="itemName" listKey="itemKey" emptyOption="true" id="provinceId" onchange="f_chageProvince()" cssClass="dropdown"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%" id="cityTd">
						
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
	<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
</div>

<div class="Title">&nbsp;</div>
<div class="MainContent">

<table width="100%" border="0" class="AdminTableStyle TableContent" id="tblList">
<tr class="TH">
	<td><s:text name="districtId"/></td>
	<td><s:text name="districtName"/></td>
	<td><s:text name="provinceId"/></td>
	<td><s:text name="cityId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="districtEdit" namespace="/sysadmin/sys/district" id="url">
		<s:param name="districtId" value="#item.districtId"></s:param>
	</s:url>
	<tr>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="districtId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="districtName"/></a></td>
		<td><fsf:dictTranslate groupName="#province" value="provinceId"/></td>
		<td><fsf:dictTranslate groupName="#city" value="cityId"/></td>
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
	f_chageProvince();
});
function f_chageProvince(){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("city","districtParameter._ne_cityId",json.data,"itemKey","itemName","${districtParameter._ne_cityId}");
		$("#cityTd").html(selectTag.toString());
	},"json");
}
</script>