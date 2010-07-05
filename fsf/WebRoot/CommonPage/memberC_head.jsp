<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
  <div class="memberC_head">
		<div class="memberC_logo"><a href="../main/index.jsp"><img src="images/logo.jpg" width="154" height="51" alt="房上房" title="房上房" /></a></div>
    <div class="memberC_des"><span style="display:none;">会员中心</span></div>
		<div class="memberC_Hmenu">
     	<p class="updateSpan"><span><a href="../main/index.jsp">首页</a></span> | <span><a href="../freetrade/index.jsp">自主交易</a></span> | <span><a href="../entrustTrade/index.jsp">委托交易</a></span> | <span><a href="../newHouse/index.jsp">新房推荐</a></span> | <span><a href="../Info/index.jsp">资讯</a></span> | <span><a href="../forum/index.jsp">论坛</a></span> | <span><a href="../CoBank/index.jsp">合作银行</a></span> |  <span><a href="../rent/index.jsp">旺铺招租</a></span>| <span><a href="../invitedexperts/index.jsp">交易顾问</a></span> </p>
       <p> 
				<span class="float_right"></span>
				<span style="color:#666;">[</span>
         <span>
         	<a href="<%=contextPath %>/memberCenter/memberInfo.action?userId=${USER.userId }" class="cOrange"><u>个人设置</u></a>
         </span>|
         <span>
         	<a href="../help/findHouse.jsp" class="cOrange"><u>帮助中心</u></a>
         </span>
         <span style="color:#666;">]</span>
		</div>
	</div>