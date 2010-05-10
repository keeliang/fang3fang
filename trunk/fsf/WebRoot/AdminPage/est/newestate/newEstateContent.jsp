<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
</head>

<body>
<s:form action="newEstateSave" namespace="/sysadmin/est/newestate" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="newEstateParameter.currentPage" />
<s:hidden name="newEstateParameter.maxResults" />
<s:hidden name="newEstateParameter._ne_estateId" />
<s:hidden name="newEstateParameter._se_estateName" />
<s:hidden name="newEstateParameter._se_develop" />
<s:hidden name="newEstateParameter._ne_provinceId" />
<s:hidden name="newEstateParameter._ne_cityId" />
<s:hidden name="newEstateParameter._ne_districtId" />
<s:hidden name="newEstateParameter._ne_areaId" />
<s:hidden name="newEstateParameter._se_address" />
<s:hidden name="newEstateParameter._ne_status" />
<s:hidden name="newEstateParameter._ne_isHot" />
<s:hidden name="newEstateParameter._ne_estateType" />
<s:hidden name="newEstateParameter._ne_area" />
<s:hidden name="newEstateParameter._ne_isLift" />
<s:hidden name="newEstateParameter._ne_practicalArea" />
<s:hidden name="newEstateParameter._ne_effective" />
<s:hidden name="newEstateParameter._se_estateAddress" />
<s:hidden name="newEstateParameter._ne_toward" />
<s:hidden name="newEstateParameter._ne_totalFloor" />
<s:hidden name="newEstateParameter._ne_price" />
<s:hidden name="newEstateParameter._ne_hall" />
<s:hidden name="newEstateParameter._ne_bedroom" />
<s:hidden name="newEstateParameter._ne_toilet" />
<s:hidden name="newEstateParameter._ne_porch" />
<s:hidden name="newEstateParameter._ne_manageCost" />
<s:hidden name="newEstateParameter._ne_otherCost" />
<s:hidden name="newEstateParameter._ne_fitment" />
<s:hidden name="newEstateParameter._se_remark" />
<s:hidden name="newEstateParameter._se_imagePath" />
<s:hidden name="newEstateParameter._de_createTime" />
<s:hidden name="newEstateParameter._ne_createUserId" />
<s:hidden name="newEstateParameter._de_updateTime" />
<s:hidden name="newEstateParameter._ne_updateUserId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
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
						<s:text name="estateId"/>:
					</td>
					<td>
						<s:textfield name="estateId" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="estateName"/>:
					</td>
					<td>
						<s:textfield name="estateName" />					</td>
				</tr>
				<tr>
					<td>
						<s:text name="develop"/>:
					</td>
					<td>
						<s:textfield name="develop" />					</td>
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
						<s:text name="status"/>:
					</td>
					<td>
						<s:textfield name="status" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td>
						<s:text name="isHot"/>:
					</td>
					<td>
						<s:textfield name="isHot" /><font color="red">*</font>
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
						<s:textfield name="isLift" /><font color="red">*</font>
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
						<s:text name="estateAddress"/>:
					</td>
					<td>
						<s:textfield name="estateAddress" /><font color="red">*</font>
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
						<s:textfield name="fitment" /><font color="red">*</font>
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
						<s:text name="imagePath"/>:
					</td>
					<td>
						<s:textfield name="imagePath" />					</td>
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
	addfield("estateAddress","<s:text name="estateAddress"/>","String",false,128);
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
	addfield("imagePath","<s:text name="imagePath"/>","String",true,80);
	addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	addfield("updateTime","<s:text name="updateTime"/>","Date",false,19);
	addfield("updateUserId","<s:text name="updateUserId"/>","Integer",false,10);
	return validate();
}
</script>