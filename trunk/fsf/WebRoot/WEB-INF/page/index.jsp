<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/page/share/share.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>user index</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <s:form theme="simple" action="entityList" namespace="/system" name="formList" id="formList" >
		<table border="1" style="width: 100%;">
			<tr>
				<td><input type="checkbox" onclick="" /><s:property value="userName2"/></td>
				<td>id</td>
				<td>userName</td>
				<td>password</td>
			</tr>
			<s:iterator value="pageView.records" id="var">
				<tr>
					<td><input type="checkbox" value="<s:property value="#var.id"/>" name="selectedPK" /></td>
					<td><s:property value="#var.id"/></td>
					<td><s:property value="#var.name"/></td>
					<td><s:property value="#var.password"/></td>
				</tr>
			</s:iterator>
		</table>
	</s:form>
  </body>
</html>
