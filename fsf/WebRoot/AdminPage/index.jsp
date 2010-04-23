<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
  <head>
    <title></title>
  </head>
  <frameset rows="55,*" >
  	<frame src="top.jsp" noresize="noresize" frameborder="0" />
  	<frameset cols="220,*" id="main" style="margin: 0;padding: 0;" >
  		<frame src="menu.jsp" name="menu" scrolling="auto" frameborder="0"  />
  		<frame src="content.jsp" name="content" id="content" frameborder="0" />
  	</frameset>
  </frameset>
  
</html>