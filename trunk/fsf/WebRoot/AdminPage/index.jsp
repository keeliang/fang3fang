<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
  <head>
    <title>房上房后台管理</title>
  </head>
  <frameset rows="55,*" >
  	<frame src="top.jsp" noresize="noresize" frameborder="0" />
  	<frameset cols="220,25,*" id="main" style="margin: 0;padding: 0;" >
  		<frame src="menu.jsp" name="menu" scrolling="auto" noresize="noresize" frameborder="0"  />
  		<frame src="bar.html" name="menu" scrolling="no" noresize="noresize" frameborder="0"  />
  		<frame src="content.jsp" name="content" id="content" noresize="noresize" frameborder="0" />
  	</frameset>
  </frameset>
  
</html>