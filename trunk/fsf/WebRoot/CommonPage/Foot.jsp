<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="chance.common.SystemConfigInitListener" %>
 <div class="foot">
  		<p><a href="#">新手帮助</a>
			<a href="#">会员注册</a>
			<a href="#">在线申请</a>
			<a href="#">自主交易论坛</a>
			<a href="#">免费服务</a>
			<a href="#">收费服务</a>
			<a href="#">房产评估</a>
			<a href="#">交易税费</a>
			<a href="#">贷款计算</a>
		</p>
        <div class="bottom">
        	<div class="bottom_left"></div>
            <div class="bottom_right"></div>
        </div>
        <p><a href="#">关于房上房</a>|
        	<a href="#">网站合作</a>|
        	<a href="#">联系方式</a>|
        	<a href="#">网络营销解决方案</a>|
        	<a href="#">招聘信息</a>|
        	<a href="#">房上房家族</a>|
        	<a href="#">意见反馈</a>
        </p>
        <p>copyright &copy; <%=SystemConfigInitListener.sysConfig.get("copy_right") %> Fang3Fang.com Limited,All Rights Reserved</p>
        <p>网站备案号<%=SystemConfigInitListener.sysConfig.get("ba_no") %>   版权所有 房上房地产公司</p>
    <p>文明办网文明上网 举报电话：<%=SystemConfigInitListener.sysConfig.get("tel") %> 举报邮箱：<%=SystemConfigInitListener.sysConfig.get("email") %></p>
        <p><img src="<%=contextPath %>/images/copy01.jpg" width="120" height="50" />&nbsp;&nbsp;<img src="<%=contextPath %>/images/copy02.jpg" width="120" height="50" /></p>
  </div>