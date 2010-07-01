<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<%@include file="/share/share.jsp"%>
<%@include file="/share/validate.jsp" %>
<link href="css/style2.css" rel="stylesheet" type="text/css" />
<title>房上房后台登录</title>
</head>
<body style="background-color:#FFFFFF">
<s:form action="login" namespace="/AdminPage" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">

<div style="position:absolute; top:45%; height:240px; margin-top:-120px;width: 100%">
<div class="member_loginC_right" >
	<div class="member_loginC_rightTitle">
		<b>房上房会员登陆-请您登录后继续</b>
	</div>
	<div style="margin:auto auto; width: 100%;height: 100%;">
	<div class="member_loginC_rightContent">
		<div id="errorMsg" class="errorMsg" style="width: 100%;text-align: center;" ><s:actionerror/><s:actionmessage/></div>
		<table>
			<tr>
				<td align="right">用户名：</td>
				<td><s:textfield name="userCode" cssClass="member_loginC_right_input"/></td>
			</tr>
			<tr>
				<td align="right">密码：</td>
				<td><s:password name="password" size="22" onkeyup="handleKey()" cssClass="member_loginC_right_input"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<br/>
					<img src="images/member_loginButton.jpg" id="btnLogin" style="width: 100px;height: 33px;cursor: pointer;" alt="登录" onclick="g_save()" />
				</td>
			</tr>
		</table>
	</div>
	</div>
</div>
</div>

</s:form>
</body>
</html>
<script type="text/javascript">
function f_validate(){
	fromName = "formItem";
	addfield("userCode","用户名","String",false,50);
	addfield("password","密码","String",false,50);
	return validate();
}

function handleKey(evt){
   	evt = (evt) ? evt : ((window.event) ? event : null);
   	if(evt){
		if(evt.keyCode==13){//回车
			document.formItem.btnLogin.click();
	    }else{
			return;
		}
	}
}
</script>