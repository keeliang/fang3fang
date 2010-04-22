<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/ClearSession.js"></script>
<%
	session.removeAttribute("UserID");
	session.removeAttribute("RealName");
	session.removeAttribute("RoleTypeName"); 
	session.removeAttribute("LastLoginDatatime"); 
	//取消页面缓存,防止回退
	response.sendRedirect("/Fang3FangWeb/f3f/main/index.jsp");
%>