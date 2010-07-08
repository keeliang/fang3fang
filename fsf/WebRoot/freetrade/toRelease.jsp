<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp"%>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="自主交易 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>自主交易 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
		<script src="js/swfobject_modified.js" type="text/javascript"></script>

		<script type="text/javascript" src="<%=contextPath%>/Search/js/search.js"></script>
	</head>
	<body>
		<div class="box">
			<!-- head -->
			<%@ include file="../CommonPage/Head.jsp"%>

			<div class="nav">
				<div class="navL">
					<div class="headMenu">
						<div class="headMenuLine"></div>
						<ul class="menuList">
							<li>
								<a href="<%=contextPath %>/main/index.jsp"><span>首页</span></a>
							</li>
							<li class="menuHere" >
								<a href="<%=contextPath %>/freetrade/index.jsp"><span>自主交易</span></a>
							</li>
							<li>
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
								<a href="<%=contextPath %>/CoBank/index.action"><span>银行合作</span> </a>
							</li>
							<li>
								<a href="<%=contextPath %>/commerce/commerceIndex.action"><span>旺铺招租</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/invitedexperts/index.action"><span>交易顾问</span> </a>
							</li>
						</ul>
					</div>
				</div>
				<div class="navR">
					<s:if test="#session.USER==null" >
						<a href="<%=contextPath %>/member/toRegister.action" class="cYellow"> [注册会员] </a>
						<a href="<%=contextPath %>/member/login.jsp" class="cYellow">[登录]</a>
					</s:if>
					<s:else>
						您好！${USER.userCode }
						<a href="<%=contextPath %>/memberCenter/index.action" class="cYellow"> [会员中心] </a>
						<a href="<%=contextPath %>/CommonPage/ClearSession.jsp" class="cYellow">[注销]</a>
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
					<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
						width="898" height="90" id="FlashID" title="手机用户自主交易Flash">
						<param name="movie" value="images/Bank.swf" />
						<param name="quality" value="high" />
						<param name="wmode" value="opaque" />
						<param name="swfversion" value="8.0.35.0" />
						<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
						<param name="expressinstall" value="js/expressInstall.swf" />
						<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
						<!--[if !IE]>-->
						<object type="application/x-shockwave-flash" data="Bank.swf"
							width="898" height="90">
							<!--<![endif]-->
							<param name="quality" value="high" />
							<param name="wmode" value="opaque" />
							<param name="swfversion" value="8.0.35.0" />
							<param name="expressinstall" value="../swf/expressInstall.swf" />
							<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
							<div>
								<h4>
									此页面上的内容需要较新版本的 Adobe Flash Player。
								</h4>
								<p>
									<a href="http://www.adobe.com/go/getflashplayer"><img
											src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
											alt="获取 Adobe Flash Player" width="112" height="33" /> </a>
								</p>
							</div>
							<!--[if !IE]>-->
						</object>
						<!--<![endif]-->
					</object>
					<script type="text/javascript">
			<!--
			swfobject.registerObject("FlashID");
			//-->
			</script>
				</div>

			</div>

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- col04 -->
			<div class="col04">
				<table>
					<tr>
						<td>已经是房上房会员：</td>
						<td><a href="<%=contextPath %>/member/login.jsp" ><img src="<%=contextPath %>/images/login.gif" /></a></td>
					</tr>
					<tr>
						<td>想成为房上房会员：</td>
						<td><a href="<%=contextPath %>/member/toRegister.action" ><img src="<%=contextPath %>/images/reg.gif" /></a></td>
					</tr>
					<tr>
						<td>想直接发布：</td>
						<td><a href="<%=contextPath %>/freetrade/release.jsp?flag=${flag }" ><img src="<%=contextPath %>/images/release.gif" /></a></td>
					</tr>
				</table>
			</div>
			
			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- col05 -->

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- foot -->

			<%@ include file="../CommonPage/Foot.jsp"%>

		</div>
	</body>
</html>
<script type="text/javascript">
</script>