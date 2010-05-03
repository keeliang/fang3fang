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
<s:form action="estateInList" namespace="/sysadmin/est/estatein" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="estateInParameter.currentPage" id="currentPage"  />
<s:hidden name="estateInParameter.maxResults" id="maxResults" />
<table>
	<tr>
		<td align="left" width="722">picture</td>
	</tr>
</table>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_ne_estateId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_estateId" />
					</td>
					<td width="15%" >
						<s:text name="_se_title" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._se_title" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_provinceId" />
					</td>
					<td width="15%" >
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_cityId" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_districtId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_districtId" />
					</td>
					<td width="15%" >
						<s:text name="_ne_areaId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_areaId" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_address" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._se_address" />
					</td>
					<td width="15%" >
						<s:text name="_ne_examine" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_examine" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_tradeMode" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_tradeMode" />
					</td>
					<td width="15%" >
						<s:text name="_ne_estateType" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_estateType" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_buildYear" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_buildYear" />
					</td>
					<td width="15%" >
						<s:text name="_ne_hall" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_hall" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_bedroom" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_bedroom" />
					</td>
					<td width="15%" >
						<s:text name="_ne_toilet" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_toilet" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_porch" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_porch" />
					</td>
					<td width="15%" >
						<s:text name="_ne_toward" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_toward" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_buyPriceFrom" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_buyPriceFrom" />
					</td>
					<td width="15%" >
						<s:text name="_ne_buyPriceTo" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_buyPriceTo" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_rentPriceFrom" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_rentPriceFrom" />
					</td>
					<td width="15%" >
						<s:text name="_ne_rentPriceTo" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_rentPriceTo" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_areaFrom" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_areaFrom" />
					</td>
					<td width="15%" >
						<s:text name="_ne_areaTo" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_areaTo" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_isLift" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_isLift" />
					</td>
					<td width="15%" >
						<s:text name="_ne_fitment" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_fitment" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_device" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_device" />
					</td>
					<td width="15%" >
						<s:text name="_se_remark" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._se_remark" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_de_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._de_createTime" />
					</td>
					<td width="15%" >
						<s:text name="_ne_createUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_createUserId" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_de_updateTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._de_updateTime" />
					</td>
					<td width="15%" >
						<s:text name="_ne_updateUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateInParameter._ne_updateUserId" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/est/estatein/estateInNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/est/estatein/estateInDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="estateId"/></td>
	<td><s:text name="title"/></td>
	<td><s:text name="provinceId"/></td>
	<td><s:text name="cityId"/></td>
	<td><s:text name="districtId"/></td>
	<td><s:text name="areaId"/></td>
	<td><s:text name="address"/></td>
	<td><s:text name="examine"/></td>
	<td><s:text name="tradeMode"/></td>
	<td><s:text name="estateType"/></td>
	<td><s:text name="buildYear"/></td>
	<td><s:text name="hall"/></td>
	<td><s:text name="bedroom"/></td>
	<td><s:text name="toilet"/></td>
	<td><s:text name="porch"/></td>
	<td><s:text name="toward"/></td>
	<td><s:text name="buyPriceFrom"/></td>
	<td><s:text name="buyPriceTo"/></td>
	<td><s:text name="rentPriceFrom"/></td>
	<td><s:text name="rentPriceTo"/></td>
	<td><s:text name="areaFrom"/></td>
	<td><s:text name="areaTo"/></td>
	<td><s:text name="isLift"/></td>
	<td><s:text name="fitment"/></td>
	<td><s:text name="device"/></td>
	<td><s:text name="remark"/></td>
	<td><s:text name="createTime"/></td>
	<td><s:text name="createUserId"/></td>
	<td><s:text name="updateTime"/></td>
	<td><s:text name="updateUserId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="estateInEdit" namespace="/sysadmin/est/estatein" id="url">
		<s:param name="estateId" value="#item.estateId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.estateId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="estateId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="title"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="provinceId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="cityId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="districtId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="areaId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="address"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="examine"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="tradeMode"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="estateType"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="buildYear"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="hall"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="bedroom"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="toilet"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="porch"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="toward"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="buyPriceFrom"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="buyPriceTo"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="rentPriceFrom"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="rentPriceTo"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="areaFrom"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="areaTo"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="isLift"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="fitment"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="device"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="remark"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="createTime"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="createUserId"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="updateTime"/></a></td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="updateUserId"/></a></td>
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