<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/share.jsp" %>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
</head>

<body>
<s:form action="estateInSave" namespace="/sysadmin/est/estatein" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="estateInParameter.currentPage" />
<s:hidden name="estateInParameter.maxResults" />
<s:hidden name="estateInParameter._ne_estateId" />
<s:hidden name="estateInParameter._se_title" />
<s:hidden name="estateInParameter._ne_provinceId" />
<s:hidden name="estateInParameter._ne_cityId" />
<s:hidden name="estateInParameter._ne_districtId" />
<s:hidden name="estateInParameter._ne_areaId" />
<s:hidden name="estateInParameter._se_address" />
<s:hidden name="estateInParameter._ne_examine" />
<s:hidden name="estateInParameter._ne_tradeMode" />
<s:hidden name="estateInParameter._ne_estateType" />
<s:hidden name="estateInParameter._ne_buildYear" />
<s:hidden name="estateInParameter._ne_hall" />
<s:hidden name="estateInParameter._ne_bedroom" />
<s:hidden name="estateInParameter._ne_toilet" />
<s:hidden name="estateInParameter._ne_porch" />
<s:hidden name="estateInParameter._ne_toward" />
<s:hidden name="estateInParameter._ne_buyPriceFrom" />
<s:hidden name="estateInParameter._ne_buyPriceTo" />
<s:hidden name="estateInParameter._ne_rentPriceFrom" />
<s:hidden name="estateInParameter._ne_rentPriceTo" />
<s:hidden name="estateInParameter._ne_areaFrom" />
<s:hidden name="estateInParameter._ne_areaTo" />
<s:hidden name="estateInParameter._ne_isLift" />
<s:hidden name="estateInParameter._ne_fitment" />
<s:hidden name="estateInParameter._ne_device" />
<s:hidden name="estateInParameter._se_remark" />
<s:hidden name="estateInParameter._de_createTime" />
<s:hidden name="estateInParameter._ne_createUserId" />
<s:hidden name="estateInParameter._de_updateTime" />
<s:hidden name="estateInParameter._ne_updateUserId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/est/estatein/estateInList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<s:text name="estateId"/>:
					</td>
					<td>
						<s:textfield name="estateId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="title"/>:
					</td>
					<td>
						<s:textfield name="title" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="provinceId"/>:
					</td>
					<td>
						<s:textfield name="provinceId" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="cityId"/>:
					</td>
					<td>
						<s:textfield name="cityId" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="districtId"/>:
					</td>
					<td>
						<s:textfield name="districtId" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="areaId"/>:
					</td>
					<td>
						<s:textfield name="areaId" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="address"/>:
					</td>
					<td>
						<s:textfield name="address" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="examine"/>:
					</td>
					<td>
						<s:textfield name="examine" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="tradeMode"/>:
					</td>
					<td>
						<s:textfield name="tradeMode" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="estateType"/>:
					</td>
					<td>
						<s:textfield name="estateType" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="buildYear"/>:
					</td>
					<td>
						<s:textfield name="buildYear" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="hall"/>:
					</td>
					<td>
						<s:textfield name="hall" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="bedroom"/>:
					</td>
					<td>
						<s:textfield name="bedroom" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="toilet"/>:
					</td>
					<td>
						<s:textfield name="toilet" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="porch"/>:
					</td>
					<td>
						<s:textfield name="porch" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="toward"/>:
					</td>
					<td>
						<s:textfield name="toward" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="buyPriceFrom"/>:
					</td>
					<td>
						<s:textfield name="buyPriceFrom" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="buyPriceTo"/>:
					</td>
					<td>
						<s:textfield name="buyPriceTo" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="rentPriceFrom"/>:
					</td>
					<td>
						<s:textfield name="rentPriceFrom" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="rentPriceTo"/>:
					</td>
					<td>
						<s:textfield name="rentPriceTo" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="areaFrom"/>:
					</td>
					<td>
						<s:textfield name="areaFrom" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="areaTo"/>:
					</td>
					<td>
						<s:textfield name="areaTo" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="isLift"/>:
					</td>
					<td>
						<s:textfield name="isLift" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="fitment"/>:
					</td>
					<td>
						<s:textfield name="fitment" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="device"/>:
					</td>
					<td>
						<s:textfield name="device" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="remark"/>:
					</td>
					<td>
						<s:textfield name="remark" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="createTime"/>:
					</td>
					<td>
						<s:textfield name="createTime" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="createUserId"/>:
					</td>
					<td>
						<s:textfield name="createUserId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="updateTime"/>:
					</td>
					<td>
						<s:textfield name="updateTime" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="updateUserId"/>:
					</td>
					<td>
						<s:textfield name="updateUserId" /><font color="red">*</font>
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
function f_validate(){
	fromName = "formItem";
	addfield("estateId","<s:text name="estateId"/>","Integer",false,10);
	addfield("title","<s:text name="title"/>","String",false,80);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("address","<s:text name="address"/>","String",true,80);
	addfield("examine","<s:text name="examine"/>","Integer",true,3);
	addfield("tradeMode","<s:text name="tradeMode"/>","Integer",false,3);
	addfield("estateType","<s:text name="estateType"/>","Integer",false,3);
	addfield("buildYear","<s:text name="buildYear"/>","Integer",true,10);
	addfield("hall","<s:text name="hall"/>","Integer",false,10);
	addfield("bedroom","<s:text name="bedroom"/>","Integer",false,10);
	addfield("toilet","<s:text name="toilet"/>","Integer",false,10);
	addfield("porch","<s:text name="porch"/>","Integer",false,10);
	addfield("toward","<s:text name="toward"/>","Integer",true,10);
	addfield("buyPriceFrom","<s:text name="buyPriceFrom"/>","Number",true,14);
	addfield("buyPriceTo","<s:text name="buyPriceTo"/>","Number",true,14);
	addfield("rentPriceFrom","<s:text name="rentPriceFrom"/>","Number",true,14);
	addfield("rentPriceTo","<s:text name="rentPriceTo"/>","Number",true,14);
	addfield("areaFrom","<s:text name="areaFrom"/>","Number",false,12);
	addfield("areaTo","<s:text name="areaTo"/>","Number",false,12);
	addfield("isLift","<s:text name="isLift"/>","Integer",false,3);
	addfield("fitment","<s:text name="fitment"/>","Integer",false,3);
	addfield("device","<s:text name="device"/>","Integer",false,3);
	addfield("remark","<s:text name="remark"/>","String",true,65535);
	addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
}
</script>