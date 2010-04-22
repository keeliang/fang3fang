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
<s:form action="userSave" namespace="/sysadmin/sys/user" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div class="contentTitle"><s:text name="contentTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<s:hidden name="cmd" />
<s:hidden name="userParameter.currentPage" />
<s:hidden name="userParameter.maxResults" />
<s:hidden name="userParameter._ne_userId" />
<s:hidden name="userParameter._se_userCode" />
<s:hidden name="userParameter._se_password" />
<s:hidden name="userParameter._se_question" />
<s:hidden name="userParameter._se_answer" />
<s:hidden name="userParameter._se_userName" />
<s:hidden name="userParameter._ne_sex" />
<s:hidden name="userParameter._ne_status" />
<s:hidden name="userParameter._ne_userType" />
<s:hidden name="userParameter._ne_provinceId" />
<s:hidden name="userParameter._ne_cityId" />
<s:hidden name="userParameter._ne_districtId" />
<s:hidden name="userParameter._se_address" />
<s:hidden name="userParameter._se_tel" />
<s:hidden name="userParameter._se_phone" />
<s:hidden name="userParameter._se_qq" />
<s:hidden name="userParameter._se_msn" />
<s:hidden name="userParameter._se_email" />
<s:hidden name="userParameter._se_remark" />
<s:hidden name="userParameter._de_createDate" />
<s:hidden name="userParameter._se_imagePath" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="middle">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="g_back('/sysadmin/sys/user/userList.action')" value="<s:text name="g_back"/>" >
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class="input_name">
						<s:text name="userId"/>:
					</td>
					<td>
						<s:textfield name="userId" cssClass="input_text" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="userCode"/>:
					</td>
					<td>
						<s:textfield name="userCode" cssClass="input_text" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="password"/>:
					</td>
					<td>
						<s:textfield name="password" cssClass="input_text" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="question"/>:
					</td>
					<td>
						<s:textfield name="question" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="answer"/>:
					</td>
					<td>
						<s:textfield name="answer" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="userName"/>:
					</td>
					<td>
						<s:textfield name="userName" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="sex"/>:
					</td>
					<td>
						<s:textfield name="sex" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="status"/>:
					</td>
					<td>
						<s:textfield name="status" cssClass="input_text" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="userType"/>:
					</td>
					<td>
						<s:textfield name="userType" cssClass="input_text" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="provinceId"/>:
					</td>
					<td>
						<s:textfield name="provinceId" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="cityId"/>:
					</td>
					<td>
						<s:textfield name="cityId" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="districtId"/>:
					</td>
					<td>
						<s:textfield name="districtId" cssClass="input_text" />					</td>
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
						<s:text name="tel"/>:
					</td>
					<td>
						<s:textfield name="tel" cssClass="input_text" />					</td>
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
						<s:text name="qq"/>:
					</td>
					<td>
						<s:textfield name="qq" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="msn"/>:
					</td>
					<td>
						<s:textfield name="msn" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="email"/>:
					</td>
					<td>
						<s:textfield name="email" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="remark"/>:
					</td>
					<td>
						<s:textfield name="remark" cssClass="input_text" />					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="createDate"/>:
					</td>
					<td>
						<s:textfield name="createDate" cssClass="input_text" /><font color="red">*</font>
					</td>
				</tr>
				<tr>
					<td class="input_name">
						<s:text name="imagePath"/>:
					</td>
					<td>
						<s:textfield name="imagePath" cssClass="input_text" />					</td>
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
	//addfield("userId","<s:text name="userId"/>","Integer",false,10);
	addfield("userCode","<s:text name="userCode"/>","String",false,50);
	addfield("password","<s:text name="password"/>","String",false,50);
	addfield("question","<s:text name="question"/>","String",true,30);
	addfield("answer","<s:text name="answer"/>","String",true,30);
	addfield("userName","<s:text name="userName"/>","String",true,50);
	addfield("sex","<s:text name="sex"/>","Integer",true,3);
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
	addfield("email","<s:text name="email"/>","String",true,80);
	addfield("remark","<s:text name="remark"/>","String",true,65535);
	addfield("createDate","<s:text name="createDate"/>","Date",false,19);
	addfield("imagePath","<s:text name="imagePath"/>","String",true,100);
	return validate();
}
</script>