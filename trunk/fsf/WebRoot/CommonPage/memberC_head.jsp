<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<div class="memberC_head">
	<div class="memberC_logo">
		<a href="../main/index.jsp">
			<img src="images/logo.jpg" width="154" height="51" alt="房上房" title="房上房" />
		</a>
	</div>
	<div class="memberC_des">
		<span style="display: none;">会员中心</span>
	</div>
	<div class="memberC_Hmenu">
		<p class="updateSpan">
			<span><a href="<%=contextPath %>/main/index.jsp">首页</a></span> |
			<span><a href="<%=contextPath %>/freetrade/index.jsp">自主交易</a></span> |
			<span><a href="<%=contextPath %>/entrustTrade/index.jsp">委托交易</a></span> |
			<span><a href="<%=contextPath %>/newHouse/index.jsp">新房推荐</a></span> |
			<span><a href="<%=contextPath %>/Info/infoIndexList.action">资讯</a> </span> |
			<span><a href="<%=contextPath %>/forum/goToForum.action">论坛</a></span> |
			<span><a href="<%=contextPath %>/CoBank/index.action">合作银行</a></span> |
			<span><a href="<%=contextPath %>/commerce/commerceIndex.action">旺铺招租</a></span>|
			<span><a href="<%=contextPath %>/invitedexperts/index.action">交易顾问</a></span>
		</p>
		<p>
			<span class="float_right"></span>
			<span style="color: #666;">[</span>
			<span> <a
				href="<%=contextPath%>/memberCenter/memberInfo.action?userId=${USER.userId }"
				class="cOrange"><u>个人设置</u>
			</a> </span>|
			<span> <a
				href="<%=contextPath%>/help/help.action?infoName=FindHouse"
				class="cOrange"><u>帮助中心</u>
			</a> </span>
			<span style="color: #666;">]</span>
	</div>
</div>