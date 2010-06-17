<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<%@include file="/share/share.jsp"%>
<%@include file="/share/validate.jsp" %>
<title>房上房后台登录</title>
</head>
<body style="background-color:#FFFFFF">
<s:form action="login" namespace="/AdminPage" theme="simple" name="formItem" id="formItem" method="post" onsubmit="return f_validate()">
<div style="position:absolute; top:45%; height:240px; margin-top:-120px;">
<table style="width: 100%;height: 100%;">
	<tr>
		<td width="100%" align="center"><h3>房上房后台登录</h3></td>
	</tr>
	<tr>
		<td width="100%" align="center">
			<div style="margin:auto auto; width: 500px;height: 100%">
			<div id="errorMsg" class="errorMsg" ><s:actionerror/><s:actionmessage/></div>
				<table>
					<tr>
						<td align="right">用户名：</td>
						<td><s:textfield name="userCode"/></td>
					</tr>
					<tr>
						<td align="right">密码：</td>
						<td><s:password name="password" size="22" onkeyup="handleKey()"/></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<br/>
						<input type="button" id="btnLogin" onclick="g_save()" value="登录"/>
						</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
</table>
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