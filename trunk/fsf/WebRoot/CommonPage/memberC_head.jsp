<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="../CommonPage/Session.jsp" %> 
  <div class="memberC_head">
    	<div class="memberC_logo"><a href="../main/index.jsp"><img src="images/logo.jpg" width="154" height="51" alt="房上房" title="房上房" /></a></div>
      <div class="memberC_des"><span style="display:none;">会员中心</span></div>
        <div class="memberC_Hmenu">
        	<p class="modifySpan"><span><a href="../main/index.jsp">首页</a></span> | <span><a href="../freetrade/index.jsp">自主交易</a></span> | <span><a href="../entrustTrade/index.jsp">委托交易</a></span> | <span><a href="../newHouse/index.jsp">新房推荐</a></span> | <span><a href="../Info/index.jsp">资讯</a></span> | <span><a href="../forum/index.jsp">论坛</a></span> | <span><a href="../CoBank/index.jsp">合作银行</a></span> |  <span><a href="../rent/index.jsp">旺铺招租</a></span>| <span><a href="../invitedexperts/index.jsp">专家顾问</a></span> </p>
             <p> 
               <span class="float_right">
                   <input type="text" class="memberC_input" />
                   <button>搜索楼房</button>
               </span>
               <!--  
               <div class="modifyP">
                 <span style="color:#666;">欢迎您,</span>
                 <span class="cOrange"><%=RealName%></span>&nbsp;
                 
                 -->
                 <span style="color:#666;">[</span>
                 <span><a href="memberInfo_password.jsp" class="cOrange">
                          <u>个人设置</u>
                      </a>
                 </span>|
                 <span><a href="#" class="cOrange">
                          <u>我的收藏夹(402)</u>
                      </a>
                 </span>|
                 <span><a href="../help/findHouse.jsp" class="cOrange">
                           <u>帮助中心</u>
                       </a>
                 </span>
                 <span style="color:#666;">]</span>
                </div>
               
        </div>