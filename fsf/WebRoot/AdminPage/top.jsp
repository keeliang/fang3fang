<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <%@ include file="/share/share.jsp" %>
	<link type="text/css" rel="stylesheet" href="../css/Common.css" />
	<link type="text/css" rel="stylesheet" href="../css/AdminPage.css" />
  </head>
  
  <body>
  <div style="float:left;"><img src="../images/logo.jpg" /></div>
	<div id="Mes">您好，${USER.userCode }！这里是后台管理系统，您是&nbsp;&nbsp;
		<span style="color:#FF0000"><fsf:dictTranslate groupName="$user_type" value="#session.USER.userType" /></span>
		&nbsp;&nbsp;[<a href="<%=contextPath %>/CommonPage/ClearSession.jsp?url=/AdminPage/index.jsp">退出</a>]
	</div>
  </body>
</html>
