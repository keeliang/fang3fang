<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="fsf.web.listener.SystemConfigInitListener" %>
<div class="foot">
	<p>
		<a href="<%=contextPath %>/help/help.action?infoName=FindHouse">新手帮助</a>
		<a href="<%=contextPath %>/member/toRegister.action">会员注册</a>
		<a href="<%=contextPath %>/help/help.action?infoName=FreeService">免费服务</a>
		<a href="<%=contextPath %>/help/help.action?infoName=ChargeService">收费服务</a>
		<a href="<%=contextPath %>/main/help.action?infoName=Disclaimer">免责声明</a>
		<a href="<%=contextPath %>/main/help.action?infoName=Recruitment">人才招聘</a>
	</p>
  <div class="bottom">
  	<div class="bottom_left"></div>
    <div class="bottom_right"></div>
	</div>
  <p>copyright &copy; <%=SystemConfigInitListener.sysConfig.get("copy_right") %> Fang3Fang.com Limited,All Rights Reserved</p>
  <p>网站备案号<%=SystemConfigInitListener.sysConfig.get("ba_no") %>   版权所有 房上房地产公司</p>
  <p>文明办网文明上网 举报电话：<%=SystemConfigInitListener.sysConfig.get("tel") %> 举报邮箱：<%=SystemConfigInitListener.sysConfig.get("email") %></p>
  <p><img src="<%=contextPath %>/images/copy01.jpg" width="120" height="50" />&nbsp;&nbsp;<img src="<%=contextPath %>/images/copy02.jpg" width="120" height="50" /></p>
</div>