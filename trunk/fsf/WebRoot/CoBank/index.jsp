<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp"%>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>银行合作</title>
		<link rel="stylesheet" href="css/style.css" type="text/css" />
	</head>

	<body>
		<input type="hidden" name="currArea" value="self" />
		<div class="box">

			<!-- head -->
			<%@ include file="../CommonPage/Head.jsp"%>
			<!-- menu -->
			<div class="nav">
				<div class="navL">
					<div class="headMenu">
						<div class="headMenuLine"></div>
						<ul class="menuList">
							<li><a href="../main/index.jsp"><span>首页</span></a></li>
							<li><a href="../freetrade/index.jsp"><span>自主交易</span></a></li>
							<li><a href="../entrustTrade/index.jsp"><span>委托代理</span></a></li>
							<li><a href="../newHouse/index.jsp"><span>新房推荐</span></a></li>
							<li><a href="<%=contextPath%>/Info/infoIndexList.action"><span>地产资讯</span></a></li>
							<li><a href="<%=contextPath%>/forum/goToForum.action"><span>论坛</span></a></li>
							<li class="menuHere"><a href="<%=contextPath%>/CoBank/index.action"><span>银行合作</span></a></li>
							<li><a href="<%=contextPath%>/commerce/commerceIndex.action"><span>旺铺招租</span></a></li>
							<li><a href="<%=contextPath%>/invitedexperts/index.action"><span>交易顾问</span></a></li>
						</ul>
					</div>
				</div>
				<div class="navR" id="hello">
					<s:if test="#session.USER==null">
						<a href="../member/toRegister.action" class="cYellow"> [注册会员]
						</a>
						<a href="../member/login.jsp" class="cYellow">[登录]</a>
					</s:if>
					<s:else>
						您好！${USER.userCode }
						<a href="<%=contextPath%>/memberCenter/index.action" class="cYellow"> [会员中心]</a>
						<a href="<%=contextPath%>/CommonPage/ClearSession.jsp" class="cYellow">[注销]</a>
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
				<!-- ad -->
				<div class="info_img">
					<img src="images/ad.gif" width="937" height="121" alt="" title="" />
				</div>
			</div>
			<br />
			<div style="background-image: url(images/bBg.jpg);">
				<div class="BTitleImg">
					<img src="images/coBank.jpg" /><br/>
				</div>
				<div style="float: left; margin-left: 825px; position: absolute; margin-top: -55px"></div>
			</div>
			<a href="<%=contextPath %>/CoBank/loanApplyNew.action">
				<img src="<%=contextPath %>/images/help_button02.jpg" width="155" height="49" alt="在线按揭申请" title="在线按揭申请" />	
			</a>
			<br />
			<br />
			<div class="Bcontent">
				${content }
			</div>
			<!-- foot -->
			<%@ include file="../CommonPage/Foot.jsp"%>
	</body>
</html>
