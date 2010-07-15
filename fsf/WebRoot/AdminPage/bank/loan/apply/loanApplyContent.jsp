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
<s:form action="loanApplySave" namespace="/sysadmin/bank/loan/apply" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="loanApplyParameter.currentPage" />
<s:hidden name="loanApplyParameter.maxResults" />
<s:hidden name="loanApplyParameter._ne_applyId" />
<s:hidden name="loanApplyParameter._se_realName" />
<s:hidden name="loanApplyParameter._nge_loanAmount" />
<s:hidden name="loanApplyParameter._nle_loanAmount" />
<s:hidden name="loanApplyParameter._ne_loanYear" />
<s:hidden name="loanApplyParameter._ne_repayType" />
<s:hidden name="loanApplyParameter._ne_loanUsage" />
<s:hidden name="loanApplyParameter._ne_provinceId" />
<s:hidden name="loanApplyParameter._ne_cityId" />
<s:hidden name="loanApplyParameter._ne_districtId" />
<s:hidden name="loanApplyParameter._ne_estateProperty" />
<s:hidden name="loanApplyParameter._ne_area" />
<s:hidden name="loanApplyParameter._dge_createTime" />
<s:hidden name="loanApplyParameter._dle_createTime" />
<s:hidden name="loanApplyParameter._ne_createUserId" />
<s:hidden name="loanApplyParameter._ne_status" />
<input type="hidden" name="loanApplyParameter.sortColumns" value="createTime|DESC" />
<s:hidden name="status"/>
<s:hidden name="applyId"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_back('/sysadmin/bank/loan/apply/loanApplyList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td style="width: 100px;">
						<s:text name="realName"/>:
					</td>
					<td>
						<s:textfield name="realName" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="sex"/>:
					</td>
					<td>
						<fsf:dictTranslate groupName="$sex" value="sex" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="paperType"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$paper_type')" name="paperType" 
						id="paperType" listValue="itemName" listKey="itemKey" emptyOption="true" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="paperNo"/>:
					</td>
					<td>
						<s:textfield name="paperNo" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="company"/>:
					</td>
					<td>
						<s:textfield name="company" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="isMarry"/>:
					</td>
					<td>
						<fsf:dictTranslate groupName="$yes_no" value="isMarry" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="phone"/>:
					</td>
					<td>
						<s:textfield name="phone" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="tel"/>:
					</td>
					<td>
						<s:textfield name="tel" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="loanAmount"/>:
					</td>
					<td>
						<s:textfield name="loanAmount" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="loanYear"/>:
					</td>
					<td>
						<s:textfield name="loanYear" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="repayType"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$repay_type')" name="repayType" 
						id="repayType" listValue="itemName" listKey="itemKey" emptyOption="true" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="loanUsage"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$loan_usage')" name="loanUsage" 
						id="loanUsage" listValue="itemName" listKey="itemKey" emptyOption="true" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="provinceId"/>:
					</td>
					<td>
						<fsf:dictTranslate groupName="#province" value="provinceId" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="cityId"/>:
					</td>
					<td>
						<fsf:dictTranslate groupName="#city" value="cityId" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="districtId"/>:
					</td>
					<td>
						<fsf:dictTranslate groupName="#district" value="districtId" />					
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="estateProperty"/>:
					</td>
					<td>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_property')" name="estateProperty" 
						onchange="f_changeProvince()" id="provinceId" listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="estateName"/>:
					</td>
					<td>
						<s:textfield name="estateName" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="address"/>:
					</td>
					<td>
						<s:textfield name="address" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="estatePrice"/>:
					</td>
					<td>
						<s:textfield name="estatePrice" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="registerPrice"/>:
					</td>
					<td>
						<s:textfield name="registerPrice" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="estateYear"/>:
					</td>
					<td>
						<s:textfield name="estateYear" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="estateMonth"/>:
					</td>
					<td>
						<s:textfield name="estateMonth" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="area"/>:
					</td>
					<td>
						<s:textfield name="area" cssClass="input_text" />m<sup>2</sup>
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="createTime"/>:
					</td>
					<td>
						<s:date name="createTime" format="yyyy-MM-dd" />
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="createUserId"/>:
					</td>
					<td>
						<fsf:dictTranslate groupName="#sys_user" value="createUserId" />
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
	addfield("applyId","<s:text name="applyId"/>","Integer",false,10);
	addfield("realName","<s:text name="realName"/>","String",false,20);
	addfield("sex","<s:text name="sex"/>","Integer",false,3);
	addfield("paperType","<s:text name="paperType"/>","Integer",false,3);
	addfield("paperNo","<s:text name="paperNo"/>","String",false,30);
	addfield("company","<s:text name="company"/>","String",false,30);
	addfield("isMarry","<s:text name="isMarry"/>","Integer",false,3);
	addfield("phone","<s:text name="phone"/>","String",false,20);
	addfield("tel","<s:text name="tel"/>","String",false,20);
	addfield("loanAmount","<s:text name="loanAmount"/>","Number",false,14);
	addfield("loanYear","<s:text name="loanYear"/>","Integer",false,10);
	addfield("repayType","<s:text name="repayType"/>","Integer",false,3);
	addfield("loanUsage","<s:text name="loanUsage"/>","Integer",false,3);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",false,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",false,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("estateProperty","<s:text name="estateProperty"/>","Integer",false,3);
	addfield("address","<s:text name="address"/>","String",false,80);
	addfield("estatePrice","<s:text name="estatePrice"/>","Number",false,14);
	addfield("registerPrice","<s:text name="registerPrice"/>","Number",false,14);
	addfield("estateYear","<s:text name="estateYear"/>","Integer",false,10);
	addfield("estateMonth","<s:text name="estateMonth"/>","Integer",false,10);
	addfield("area","<s:text name="area"/>","Number",false,14);
	addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	return validate();
}
</script>