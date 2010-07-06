<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>改变审核状态</title>
<%@ include file="/share/share.jsp" %>
</head>

<frameset rows="80,*" border="0">
	<frame src="<%=contextPath %>/sysadmin/est/estateout/estateOutExamine.action?estateId=${estateId }" noresize="noresize"  />
	<frame src="" noresize="noresize" id="userSelect" />
</frameset>
</html>
