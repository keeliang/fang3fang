<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<div class="help_info">
	<p>如果您还有疑问，您可以来 自主交易社区 提问，或找寻答案 </p>
	<p>帮助内容解决了您的问题了吗？</p>
	<p><span class="cGreen">是，已经解决</span> &gt; <a href="<%=contextPath %>/help/findHouse.jsp"><u>返回交易帮助首页</u></a> </p>
	<p><span class="cRed03">否，尚未解决</span> &gt; <u>请致给电我们：<s:property value="@chance.common.SystemConfigInitListener@sysConfig.get('service_tel1')" /></u></p>
</div>