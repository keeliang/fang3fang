<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String username = (String)request.getAttribute("username");
String password = (String)request.getAttribute("password");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Go To Forum</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body onload="winLoad()">
	<form action="<%=basePath %>/fsf/jforum.page" name="gotoforum" id="gotoforum" method="post" accept-charset="utf-8">
		<input type="hidden" name="module" value="user" />
		<input type="hidden" name="action" value="validateLogin" />
		<input type="hidden" name="username" value="<%=username %>" />
		<input type="hidden" name="password" value="<%=password %>" />
	</form>
  </body>
</html>

<script language="javascript">
function winLoad(){
	gotoforum.submit();
}
</script>