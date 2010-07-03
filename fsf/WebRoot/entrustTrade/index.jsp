<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="委托交易 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>委托交易 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="js/showDiv.js"></script>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script language="javascript" src="../js/showDiv.js"></script>
		<script type="text/javascript" src="js/jquery.pagination.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="../js/SearchMessage.js"></script>

		<script type="text/javascript" src="<%=contextPath%>/Search/js/search.js"></script>
	</head>
	<body>
		<div class="box">

			<!-- head -->
			<%@ include file="../CommonPage/Head.jsp"%>

			<!-- menu -->
			<div class="nav">
				<div class="navL">
					<div class="headMenu">
						<div class="headMenuLine"></div>
						<ul class="menuList">
							<li>
								<a href="<%=contextPath %>/main/index.jsp"><span>首页</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/freetrade/index.jsp"><span>自主交易</span></a>
							</li>
							<li class="menuHere">
								<a href="<%=contextPath %>/entrustTrade/index.jsp"><span>委托代理</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/newHouse/index.jsp"><span>新房推荐</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/Info/infoIndexList.action"><span>地产资讯</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/forum/goToForum.action"><span>论坛</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/CoBank/index.jsp"><span>银行合作</span> </a>
							</li>
							<li>
								<a href="<%=contextPath %>/commerce/commerceIndex.action"><span>旺铺招租</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/invitedexperts/index.action"><span>专家顾问</span> </a>
							</li>
						</ul>
					</div>
				</div>
				<div class="navR">
					<s:if test="#session.USER==null" >
						<a href="../member/toRegister.action" class="cYellow"> [注册会员] </a>
						<a href="../member/login.jsp" class="cYellow">[登录]</a>
					</s:if>
					<s:else>
						您好！${USER.userCode }
						<a href="../memberCenter/index.action" class="cYellow"> [会员中心] </a>
						<a href="../CommonPage/ClearSession.jsp" class="cYellow">[注销]</a>
					</s:else>
				</div>
				<div class="clear"></div>
				<div class="nav_bottom">
					<div class="nav_bottomL"></div>
					<div class="nav_bottomR"></div>
				</div>
			</div>

			<!-- content -->
			<div class="content">
				<!-- A D -->
				<div class="info_img">
					<img src="images/AD-entrust.jpg" alt="" title="" />
				</div>

				<!-- col03 -->
				<%@ include file="/Search/search.jsp"%>
			</div>

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- col04 -->
			<div class="col04">
				<div class="trade_title">
					<div class="nav03_content">
						<div class="tap02_more">
							<a href="<%=contextPath %>/entrustTrade/estateOwnRelease.action?flag=out" class="cWhite">[&nbsp;我要发布&nbsp;]</a>
						</div>
						<div class="tap02_title">
							<img src="images/trade_title02.jpg" width="203" height="15"	alt="委托交易区" title="委托交易区" />
						</div>
					</div>
				</div>
				
				<div class="clear"></div>
				<aa:zone name="listZone">
					<div class="trade_content">
						<div class="list02" id="about0211" style="display: block;">
							<%@ include file="/Search/result.jsp"%>
						</div>
					</div>
				</aa:zone>
			</div>

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- foot -->
			<%@ include file="../CommonPage/Foot.jsp"%>
		</div>
	</body>
</html>
<script type="text/javascript">
tradeTypeFlag = 2;
window.onload = function(){
	document.getElementById('divTradeType').style.display = "none";
	f_query();
}
</script>