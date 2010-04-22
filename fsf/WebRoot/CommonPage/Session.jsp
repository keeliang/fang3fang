<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
String UserID = (String)session.getAttribute("UserID");
String RealName = (String)session.getAttribute("RealName");
if(RealName==null){
	RealName="您还没有登录";
}
%>
<%
String RoleTypeName = (String)session.getAttribute("RoleTypeName");
String LastLoginDatatime = (String)session.getAttribute("LastLoginDatatime");
%>