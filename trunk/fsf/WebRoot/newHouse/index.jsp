<%@ page language="java" pageEncoding="UTF-8"	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include  file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C" />
		<meta name="title" content="新房推荐 - 房上房地产网(http://wwww.fang3fang.com)"/> 
		<title>新房推荐 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/jquery.js" type=text/javascript></script>
		<script language="javascript" src="../js/showDiv.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="js/jquery.pagination.js"></script>
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
								<a href="../main/index.jsp"><span>首页</span> </a>
							</li>
							<li>
								<a href="../freetrade/index.jsp"><span>自主交易</span> </a>
							</li>
							<li>
								<a href="../entrustTrade/index.jsp"><span>委托代理</span> </a>
							</li>
							<li class="menuHere">
								<a href="index.jsp"><span>新房推荐</span> </a>
							</li>
							<li>
								<a href="../Info/index.jsp"><span>地产资讯</span> </a>
							</li>
							<li>
								<a href="../forum/index.jsp"><span>论坛</span> </a>
							</li>
							<li>
								<a href="../CoBank/index.jsp"><span>银行合作</span> </a>
							</li>
							<li>
							<li>
								<a href="../rent/index.jsp"><span>旺铺招租</span> </a>
							</li>
							<li>
								<a href="../invitedexperts/index.jsp"><span>专家顾问</span> </a>
							</li>
						</ul>
					</div>
				</div>
				<div class="navR">
					您好！
					<a href="../member/reg.jsp" class="cYellow"> [注册会员] </a>
					<a href="../member/login.jsp" class="cYellow">[登录]</a>
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
					<img src="images/AD-newhouse1.jpg" width="940" height="90" alt=""
						title="" />
				</div>

				<!-- col03 -->
				<%@ include file="/Search/search.jsp"%>

				<!-- city list -->
			</div>

			<div class="clear"></div>
			<div class="blank12"></div>



			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- col04 -->
			<div class="col04">
				<div class="trade_title">
					<div class="nav03_content">
						<div class="tap02_more">
							
						</div>
						<div class="tap02_title">
							新房
						</div>
					</div>
				</div>

				<div class="clear"></div>
				<div class="trade_content">
					<div class="list02" id="about0211" style="display: block;">
						<aa:zone name="listZone">
							<div class="trade_content">
								<div class="list02" id="about0211" style="display: block;">
									<%@ include file="/Search/result.jsp"%>
								</div>
							</div>
						</aa:zone>
						<div id="Trade_des" class="freeTrade_des">
							<p>
								如果没有找到您要的出售房源，请点击
								<a href="#" class="cRed"><u>这里</u> </a>重新设置查找条件，或发布一条求购信息，让房源来找您，现在就
								<a href="../memberCenter/index.jsp" class="cRed"><u>发布求购</u>
								</a>。
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<div class="blank12"></div>

			<!-- foot -->
			<%@ include file="../CommonPage/Foot.jsp"%>
			<!-- box div 结束 -->
		</div>
	</body>

</html>
<script type="text/javascript" >
window.onload = function(){
	document.getElementById("divTradeMode").style.display = "none";
	document.getElementById('divTradeType').style.display = "none";	
}
</script>
