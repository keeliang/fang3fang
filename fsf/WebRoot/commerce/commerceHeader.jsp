<%@ page language="java" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<div class="box">

	<!-- new menu -->
    	
	<!-- head -->
     <%@ include file="../CommonPage/Head.jsp" %>
     
     <!-- menu -->
     <div class="nav">    	 
       <div class="navL">
					<div class="headMenu">
						<div class="headMenuLine"></div>
						<ul class="menuList">
							<li>
								<a href="../main/index.jsp"><span>首页</span>
								</a>
							</li>
							<li>
								<a href="../freetrade/index.jsp"><span>自主交易</span>
								</a>
							</li>
							<li>
								<a href="../entrustTrade/index.jsp"><span>委托代理</span>
								</a>
							</li>
							<li>
								<a href="../newHouse/index.jsp"><span>新房推荐</span>
								</a>
							</li>
							<li>
								<a href="../Info/index.jsp"><span>地产资讯</span>
								</a>
							</li>
							<li>
								<a href="<%=contextPath%>/index.htm"><span>论坛</span>
								</a>
							</li>
							<li>
								<a href="../CoBank/index.jsp"><span>银行合作</span>
								</a>
							</li>
							<li class="menuHere"><a href="<%=contextPath%>/commerce/commerceIndex.action"><span>旺铺招租</span></a></li> 
                  			<li><a href="../invitedexperts/index.jsp"><span>专家顾问</span></a></li>
						</ul>
					</div>
				</div> 
       <div class="navR">
					
					<a href="../member/reg.jsp" class="cYellow"> [注册会员] </a>
					<a href="../member/login.jsp" class="cYellow">[登录]</a>
					
					<a href="../memberCenter/index.jsp" class="cYellow"> [会员中心] </a>
					<a href="../CommonPage/ClearSession.jsp" class="cYellow">[注销]</a>
					
		</div>
        <div class="clear"></div>
    	<div class="nav_bottom">
        	<div class="nav_bottomL"></div>
            <div class="nav_bottomR"></div>
        </div>
    </div>
    
    <!-- wangpu -->
    <div class="wangpu_top">
    	<div class="wangpu_topL"><img src="<%=contextPath %>/commerce/images/wangpu_img01.jpg" width="709" height="101" alt="" title="" /></div>
      <div class="wangpu_topR">
       	  <p class="cOrange bold">联系房上房 (周一至周五9:30~18:00) </p>
          <p><img src="images/info_dot01.jpg" width="5" height="5" align="absmiddle"  /> 客服MSN：sever@fang3fang.com</p>
          <p><img src="images/info_dot01.jpg" width="5" height="5" align="absmiddle"  /> 客服QQ：3921958912</p>
          <p><img src="images/info_dot01.jpg" width="5" height="5" align="absmiddle"  /> 客服电话：86-10-82790251</p>
        </div>
    </div>