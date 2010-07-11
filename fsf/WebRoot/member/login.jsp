<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>会员登录 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
		<script type="text/javascript" src="<%=contextPath %>/js/Form.jquery.js"></script>
		<script type="text/javascript" src="<%=contextPath %>/member/js/login.js"></script>
	</head>
	<body>
		<div class="member_box">
			<!-- head -->
			<%@ include file="../CommonPage/Member_head.jsp"%>

			<!-- content -->
			<div class="member_loginC">
				<div class="member_loginC_left">
					<div class="member_loginC_left_line"></div>
					<p>
						<img src="images/member_loginTitle02.jpg" width="206" height="30"
							alt="登录成功后,你还可以..." title="登录成功后,你还可以..." />
					</p>
					<div class="clear"></div>
					<div class="menu">
						<ul>
							<li>
								<a href="../freetrade/index.jsp"><img
										src="images/head_buy.jpg" width="55" height="50"
										align="absmiddle" /><b>我要买房</b>
								</a>
							</li>
							<li>
								<a href="../freetrade/index.jsp"><img
										src="images/head_sell.jpg" width="55" height="50"
										align="absmiddle" /><b>我要卖房</b>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="member_loginC_right">
					<div class="member_loginC_rightTitle">
						<b>房上房会员登陆-请您登录后继续</b>
					</div>
					<div class="member_loginC_rightContent">
						<form action="<%=contextPath %>/member/login.action" id="formItem" name="formItem" method="post"	>
							<p>会员帐号：<input type="text" name="userCode" id="userCode" class="member_loginC_right_input" /></p>
							<p>帐号密码：<input type="password" name="password" id="password" class="member_loginC_right_input" /></p>
							<div id="loading" style="display: none;text-align: center;">
								<img src="<%=contextPath %>/images/Loading.gif" /><br/>
								处理中，请稍候...
							</div>
							<p class="member_loginC_rightContent_button">
								<img src="images/member_loginButton.jpg" id="login" style="width: 100px;height: 33px;" alt="登录" />
							</p>
							<p class="right">
								<a href="reg.jsp" class="cRed04"><u>注册新帐号</u></a>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<div class="blank12"></div>
		<!-- foot -->
		<%@ include file="../CommonPage/Foot.jsp"%>
	</body>
</html>
