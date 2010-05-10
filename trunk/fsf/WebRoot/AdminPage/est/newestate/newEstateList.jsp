<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="/js/jquery.js"></script> 
</head>

<body>
<s:form action="newEstateList" namespace="/sysadmin/est/newestate" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="newEstateParameter.currentPage" id="currentPage"  />
<s:hidden name="newEstateParameter.maxResults" id="maxResults" />
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
						<s:textfield name="newEstateParameter._ne_estateId" />
					</td>
					<td width="15%" >
						<s:text name="_se_estateName" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._se_estateName" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_develop" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._se_develop" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="newEstateParameter._ne_provinceId" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey" id="provinceId" onchange="f_changeProvince()"/>
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
					<td width="15%" >
						<s:text name="_ne_areaId" />:
					</td>
					<td width="35%">
						
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_address" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._se_address" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="estateOutParameter._ne_status" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey" id="provinceId" onchange="f_changeProvince()"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_isHot" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_isHot" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_estateType" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" name="newEstateParameter._ne_estateType" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_area" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_area" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_isLift" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$is_lift')" name="newEstateParameter._ne_isLift" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_practicalArea" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_practicalArea" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_toward" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward',null,'0')" name="newEstateParameter._ne_toward" 
						cssClass="dropdown" emptyOption="true" listValue="itemName" listKey="itemKey"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_totalFloor" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_totalFloor" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_price" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_price" />
					</td>
					<td width="15%" >
						<s:text name="_ne_hall" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_hall" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_bedroom" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_bedroom" />
					</td>
					<td width="15%" >
						<s:text name="_ne_toilet" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_toilet" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_porch" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_porch" />
					</td>
					<td width="15%" >
						<s:text name="_ne_manageCost" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_manageCost" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_otherCost" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_otherCost" />
					</td>
					<td width="15%" >
						<s:text name="_ne_fitment" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._ne_fitment" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_de_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newEstateParameter._de_createTime" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/est/newestate/newEstateNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/est/newestate/newEstateDelete.action');" value="<s:text name="g_delete"/>">
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
	<td><s:text name="estateName"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="isHot"/></td>
	<td><s:text name="estateType"/></td>
	<td><s:text name="area"/></td>
	<td><s:text name="price"/></td>
	<td><s:text name="createTime"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="newEstateEdit" namespace="/sysadmin/est/newestate" id="url">
		<s:param name="estateId" value="#item.estateId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.estateId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="estateName"/></a></td>
		<td><s:property value="status"/></td>
		<td><s:property value="isHot"/></td>
		<td><s:property value="estateType"/></td>
		<td><s:property value="area"/></td>
		<td><s:property value="price"/></td>
		<td><s:property value="createTime"/></td>
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