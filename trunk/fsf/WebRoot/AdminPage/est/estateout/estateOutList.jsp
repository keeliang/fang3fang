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
<s:form action="estateOutList" namespace="/sysadmin/est/estateout" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="estateOutParameter.currentPage" id="currentPage"  />
<s:hidden name="estateOutParameter.maxResults" id="maxResults" />
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
						<s:textfield name="estateOutParameter._ne_estateId" />
					</td>
					<td width="15%" >
						<s:text name="_se_estateCardNo" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._se_estateCardNo" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_card5year" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_card5year" />
					</td>
					<td width="15%" >
						<s:text name="_se_estateName" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._se_estateName" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_develop" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._se_develop" />
					</td>
					<td width="15%" >
						<s:text name="_ne_tradeType" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_tradeType" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_contactUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_contactUserId" />
					</td>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_provinceId" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_cityId" />
					</td>
					<td width="15%" >
						<s:text name="_ne_districtId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_districtId" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_areaId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_areaId" />
					</td>
					<td width="15%" >
						<s:text name="_ne_tradeMode" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_tradeMode" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_estateType" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_estateType" />
					</td>
					<td width="15%" >
						<s:text name="_ne_area" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_area" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_isLift" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_isLift" />
					</td>
					<td width="15%" >
						<s:text name="_ne_practicalArea" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_practicalArea" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_effective" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_effective" />
					</td>
					<td width="15%" >
						<s:text name="_se_estateAddress" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._se_estateAddress" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_toward" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_toward" />
					</td>
					<td width="15%" >
						<s:text name="_ne_floor" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_floor" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_totalFloor" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_totalFloor" />
					</td>
					<td width="15%" >
						<s:text name="_ne_salePrice" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_salePrice" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_rentPrice" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_rentPrice" />
					</td>
					<td width="15%" >
						<s:text name="_ne_hall" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_hall" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_bedroom" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_bedroom" />
					</td>
					<td width="15%" >
						<s:text name="_ne_toilet" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_toilet" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_porch" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_porch" />
					</td>
					<td width="15%" >
						<s:text name="_ne_manageCost" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_manageCost" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_waterCost" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_waterCost" />
					</td>
					<td width="15%" >
						<s:text name="_ne_electricCost" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_electricCost" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_otherCost" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_otherCost" />
					</td>
					<td width="15%" >
						<s:text name="_ne_buildYear" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_buildYear" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_minMonth" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_minMonth" />
					</td>
					<td width="15%" >
						<s:text name="_ne_deposit" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_deposit" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_fitment" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_fitment" />
					</td>
					<td width="15%" >
						<s:text name="_ne_device" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_device" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_remark" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._se_remark" />
					</td>
					<td width="15%" >
						<s:text name="_se_imagePath" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._se_imagePath" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_de_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._de_createTime" />
					</td>
					<td width="15%" >
						<s:text name="_ne_createUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_createUserId" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_de_updateTime" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._de_updateTime" />
					</td>
					<td width="15%" >
						<s:text name="_ne_updateUserId" />:
					</td>
					<td width="35%">
						<s:textfield name="estateOutParameter._ne_updateUserId" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<input type="button" onclick="g_new('/sysadmin/est/estateout/estateOutNew.action')" value="<s:text name="g_new"/>"/>
	<input type="button" onclick="g_delete('/sysadmin/est/estateout/estateOutDelete.action');" value="<s:text name="g_delete"/>">
	<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
	<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
</div>

<table width="100%" border="0" class="AdminTableStyle TableContent" id="tblList">
	<tr>
		<td width="4%" height="28" class="table_hdr">
			<input type="checkbox" onclick="g_select(this)" >
		</td>
		<td><s:text name="estateId"/></td>
		<td><s:text name="estateName"/></td>
		<td><s:text name="address"/></td>
		<td><s:text name="salePrice"/></td>
		<td><s:text name="contactUserId"/></td>
		<td><s:text name="createTime"/></td>
	</tr>
	<s:iterator value="pageView.records" id="item">
		<s:url action="estateOutEdit" namespace="/sysadmin/est/estateout" id="url">
			<s:param name="estateId" value="#item.estateId"></s:param>
		</s:url>
		<tr>
			<td>
				<input type="checkbox" name="selectedPK" value="<s:property value="#item.estateId"/>">
			</td>
			<td><a href="javascript:g_edit('${url}')" ><s:property value="estateId"/></a></td>
			
			<td><a href="javascript:g_edit('${url}')" ><s:property value="estateName"/></a></td>
			
			<td><a href="javascript:g_edit('${url}')" ><s:property value="address"/></a></td>
			
			<td><a href="javascript:g_edit('${url}')" ><s:property value="salePrice"/></a></td>
			
			<td><a href="javascript:g_edit('${url}')" ><s:property value="contactUserId"/></a></td>
			
			<td><a href="javascript:g_edit('${url}')" ><s:property value="createTime"/></a></td>
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