<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title><s:text name="contentPageTitle"/></title>
<%@include file="/share/share.jsp" %>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="/js/jquery.js"></script>
</head>

<body>
<s:form action="userSave" namespace="/sysadmin/sys/user" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="userParameter.currentPage" />
<s:hidden name="userParameter.maxResults" />
<s:hidden name="userParameter._ne_userId" />
<s:hidden name="userParameter._se_userCode" />
<s:hidden name="userParameter._se_userName" />
<s:hidden name="userParameter._ne_sex" />
<s:hidden name="userParameter._ne_status" />
<s:hidden name="userParameter._ne_userType" />
<s:hidden name="userParameter._ne_provinceId" />
<s:hidden name="userParameter._ne_cityId" />
<s:hidden name="userParameter._ne_districtId" />
<s:hidden name="userParameter._se_tel" />
<s:hidden name="userParameter._se_phone" />
<s:hidden name="userParameter._se_qq" />
<s:hidden name="userParameter._se_msn" />
<s:hidden name="userParameter._se_email" />
<s:hidden name="userParameter._dle_createDate" />
<s:hidden name="userParameter._dge_createDate" />

<s:hidden name="userId" />

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/sys/user/userList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td style="width: 150px;">
			<s:text name="userCode"/>:
		</td>
		<td>
			<s:textfield name="userCode" /><font color="red">*</font>
		</td>
	</tr>
	<s:if test="cmd=='new'">
		<tr>
			<td>
				<s:text name="password"/>:
			</td>
			<td>
				<s:password name="password" /><font color="red">*</font>
			</td>
		</tr>
	</s:if>
	<tr>
		<td>
			<s:text name="question"/>:
		</td>
		<td>
			<s:textfield name="question" cssStyle="width:300px;" /><font color="red">*</font></td>
	</tr>
	<tr>
		<td>
			<s:text name="answer"/>:
		</td>
		<td>
			<s:textfield name="answer" /><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="userName"/>:
		</td>
		<td>
			<s:textfield name="userName" />
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="sex"/>:
		</td>
		<td>
			<s:radio list="@fsf.web.common.SelectTagStaticUtil@getConfig('$sex')" name="sex" 
			listValue="itemName" listKey="itemKey"/><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="status"/>:
		</td>
		<td>
			<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="status" id="status"  
			listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown"/><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="userType"/>:
		</td>
		<td>
			<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$user_type')" name="userType" id="userType"  
			listValue="itemName" listKey="itemKey" emptyOption="true" onchange="f_changeUserType()" cssClass="dropdown"/><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="provinceId"/>:
		</td>
		<td>
			<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="provinceId" onchange="f_chageProvince()" 
			listValue="itemName" listKey="itemKey" emptyOption="true" id="provinceId" cssClass="dropdown"/><font color="red">*</font>
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
	<tr>
		<td>
			<s:text name="address"/>:
		</td>
		<td>
			<s:textfield name="address" />
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="tel"/>:
		</td>
		<td>
			<s:textfield name="tel" />
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="phone"/>:
		</td>
		<td>
			<s:textfield name="phone" />
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="qq"/>:
		</td>
		<td>
			<s:textfield name="qq" />					</td>
	</tr>
	<tr>
		<td>
			<s:text name="msn"/>:
		</td>
		<td>
			<s:textfield name="msn" />					</td>
	</tr>
	<tr>
		<td>
			<s:text name="email"/>:
		</td>
		<td>
			<s:textfield name="email" />					</td>
	</tr>
	<tr>
		<td>
			<s:text name="remark"/>:
		</td>
		<td>
			<s:textfield name="remark" />					</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" id="brokerTbl">
	<tr>
		<td style="width: 150px;">
			<s:text name="realName"/>:
		</td>
		<td>
			<s:textfield name="realName" /><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="workProvinceId"/>:
		</td>
		<td>
			<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="workProvinceId" onchange="f_chageWorkProvince()" 
			listValue="itemName" listKey="itemKey" emptyOption="true" id="workProvinceId" cssClass="dropdown"/><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="workCityId"/>:
		</td>
		<td id="workCityTd">
			
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="workDistrictId"/>:
		</td>
		<td id="workDistrictTd">
			
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="company"/>:
		</td>
		<td>
			<s:textfield name="company" /><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="level"/>:
		</td>
		<td>
			<s:textfield name="level" /><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="license"/>:
		</td>
		<td>
			<s:textfield name="license" /><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="hobby"/>:
		</td>
		<td>
			<s:textfield name="hobby" /><font color="red">*</font>
		</td>
	</tr>
	<tr>
		<td>
			<s:text name="glory"/>:
		</td>
		<td>
			<s:textfield name="glory" /><font color="red">*</font>
		</td>
	</tr>
</table>
</s:form>
</body>
</html>
<script type="text/javascript">
$(function() {
	f_chageProvince(true);
	f_chageWorkProvince(true);
	f_changeUserType();
});
function f_changeUserType(){
	if($('#userType').val() == 2)
		$("#brokerTbl").show();
	else
		$("#brokerTbl").hide();
}
function f_validate(){
	fromName = "formItem";
	//addfield("userId","<s:text name="userId"/>","Integer",false,10);
	addfield("userCode","<s:text name="userCode"/>","String",false,50);
	addfield("password","<s:text name="password"/>","String",false,50);
	addfield("question","<s:text name="question"/>","String",false,30);
	addfield("answer","<s:text name="answer"/>","String",false,30);
	addfield("userName","<s:text name="userName"/>","String",true,50);
	addfield("sex","<s:text name="sex"/>","Integer",false,3);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	addfield("userType","<s:text name="userType"/>","Integer",false,3);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("address","<s:text name="address"/>","String",true,200);
	addfield("tel","<s:text name="tel"/>","String",true,20);
	addfield("phone","<s:text name="phone"/>","String",true,32);
	addfield("qq","<s:text name="qq"/>","String",true,20);
	addfield("msn","<s:text name="msn"/>","String",true,20);
	addfield("email","<s:text name="email"/>","Email",true,80);
	addfield("remark","<s:text name="remark"/>","String",true,65535);
	//addfield("createDate","<s:text name="createDate"/>","Date",false,19);
	//addfield("imagePath","<s:text name="imagePath"/>","String",true,100);
	if($('#userType').val() == 2){
		addfield("realName","<s:text name="realName"/>","String",false,20);
		addfield("workProvinceId","<s:text name="workProvinceId"/>","Integer",false,10);
		addfield("workCityId","<s:text name="workCityId"/>","Integer",false,10);
		addfield("workDistrictId","<s:text name="workDistrictId"/>","Integer",false,10);
		addfield("company","<s:text name="company"/>","String",false,50);
		addfield("level","<s:text name="level"/>","String",false,20);
		addfield("license","<s:text name="license"/>","String",false,30);
		addfield("hobby","<s:text name="hobby"/>","String",false,300);
		addfield("glory","<s:text name="glory"/>","String",false,300);
	}
	return validate();
}

function f_chageProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","cityId",json.data,"itemKey","itemName","${cityId}","f_changeCity()");
		$("#cityTd").html(selectTag.toString()+"<font color='red'>*</font>");
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
		var selectTag = new SelectTag("districtId","districtId",json.data,"itemKey","itemName","${districtId}");
		$("#districtTd").html(selectTag.toString()+"<font color='red'>*</font>");
	},"json");
}

function f_chageWorkProvince(isIndex){
	if($("#workProvinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#workProvinceId").val()},function(json){
		var selectTag = new SelectTag("workCityId","workCityId",json.data,"itemKey","itemName","${workCityId}","f_changeWorkCity()");
		$("#workCityTd").html(selectTag.toString()+"<font color='red'>*</font>");
		if(isIndex)
			f_changeWorkCity();
	},"json");
}

function f_changeWorkCity(){
	if($("#workProvinceId").val()=="")
		return;
	if($("#workCityId").val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#workProvinceId").val(),cityId:$("#workCityId").val()},function(json){
		var selectTag = new SelectTag("districtId","districtId",json.data,"itemKey","itemName","${districtId}");
		$("#workDistrictTd").html(selectTag.toString()+"<font color='red'>*</font>");
	},"json");
}

</script>