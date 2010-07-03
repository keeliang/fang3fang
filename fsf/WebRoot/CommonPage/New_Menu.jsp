<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<style>
<!--
.new_menu{height:23px; line-height:23px;} 
.new_menu li{float:left; list-style:none;margin:0px 5px;}
-->
</style>
  <div class="new_menu">
    	<span class="float_right">
    	<s:if test="#session.USER==null"> 
			  <a href="../member/register.action">[注册会员]</a> 
			  <a href="../member/login.jsp">[登录]</a>
		  </s:if>
		  <s:else>
				您好！<b id="hello">${USER.userCode }</b>！
			</s:else>
		</span>   	 
    	<ul>
        	<li><a href="../main/index.jsp">首页</a></li>
            <li class="cGray">|</li>
            <li><a href="../freetrade/index.jsp">自主交易区</a></li>
            <li class="cGray">|</li>
            <li><a href="../entrustTrade/index.jsp">委托代理区</a></li>
            <li class="cGray">|</li>
            <li><a href="../newHouse/index.jsp">新房推荐</a></li>
            <li class="cGray">|</li>
            <li><a href="<%=contextPath %>/Info/infoIndexList.action">地产资讯</a></li>
            <li class="cGray">|</li>
            <li><a href="<%=contextPath %>/forums/goToForum.action">论坛</a></li>
            <li class="cGray">|</li>
            <li><a href="<%=contextPath %>/CoBank/index.jsp">合作银行</a></li>
            <li class="cGray">|</li>
            <li><a href="<%=contextPath %>/commerce/commerceIndex.action">旺铺招租</a></li>
            <li class="cGray">|</li>
            <li><a href="<%=contextPath %>/invitedexperts/index.action">专家顾问</a></li>
            
        </ul>
    </div>
