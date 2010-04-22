<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="../CommonPage/Session.jsp" %>
<style>
<!--
.new_menu{height:23px; line-height:23px;} 
.new_menu li{float:left; list-style:none;margin:0px 5px;}
-->
</style>
  <div class="new_menu">
    	<span class="float_right">您好，<b id="hello"><%=RealName%></b>！ 
    	<%if(RealName=="您还没有登录"){ %>
		  <a href="../member/reg.jsp">[注册会员]</a> 
		  <a href="../member/login.jsp">[登录]</a>
		<%} else{ %>
		  <a href="../memberCenter/index.jsp"> [会员中心] </a>
		  <a href="../CommonPage/ClearSession.jsp">[注销]</a>
		<%} %> 
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
            <li><a href="../Info/index.jsp">地产资讯</a></li>
            <li class="cGray">|</li>
            <li><a href="../forum/index.jsp">论坛</a></li>
            <li class="cGray">|</li>
            <li><a href="../CoBank/index.jsp">合作银行</a></li>
            <li class="cGray">|</li>
            <li><a href="../rent/index.jsp">旺铺招租</a></li>
            <li class="cGray">|</li>
            <li><a href="../invitedexperts/index.jsp">专家顾问</a></li>
            
        </ul>
    </div>
