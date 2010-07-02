<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	session.invalidate();
	if(request.getParameter("url")!=null){
		response.sendRedirect(request.getContextPath()+request.getParameter("url"));
	}else{
		response.sendRedirect(request.getContextPath()+"/main/index.jsp");
	}
%>