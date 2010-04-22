<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<% String filename0=null;
   if (session.getAttribute("filename0")==null){
      filename0="";
   }else{
     filename0=(String)session.getAttribute("filename0");
   }
%>