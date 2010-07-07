<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" ontent="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>地产资讯 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
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
							<li>
								<a href="<%=contextPath %>/entrustTrade/index.jsp"><span>委托代理</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/newHouse/index.jsp"><span>新房推荐</span></a>
							</li>
							<li class="menuHere" >
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
					<img src="images/AD-info.jpg" width="940" height="90" alt=""
						title="" />
				</div>

				<!-- col01 -->
				<div class="info_col01">

				</div>

				<div class="clear"></div>
				<div class="blank12"></div>
				<!-- col02 -->
				<div class="info_col02">
					<div class="info_col02_top"></div>
					<div class="info_col02_content">
					
						<div class="col02_1">
							<div class="info_col02_contentL" >
								<div class="info_col02_contentL_left" >
									
									<div class="info_leftTitle">
										<b>焦点</b>
									</div>
									<div class="info_fjNews">
										<%@ include file="info1.jsp" %>
									</div>
									
									<div class="info_leftTitle">
										<b>深度报道</b>
									</div>
									<div class="info_fjNews">
										<%@ include file="info2.jsp" %>
									</div>
						
									<div class="info_leftTitle">
										<b>房价新闻</b>
									</div>
									<div class="info_fjNews">
										<%@ include file="info3.jsp" %>
									</div>

									<div class="info_leftTitle">
										<b>区域报告</b>
									</div>
									<div class="info_fjNews">
										<%@ include file="info4.jsp" %>
									</div>

									<div class="blank12b"></div>
									<div class="info_img07">
										<img src="images/info_img007.jpg" width="279" height="193" />
									</div>
									<div class="blank12a"></div>

									<div class="info_leftLine"></div>
									<div class="blank12"></div>

									<div class="info_leftTitle">
										<b>房产政策</b>
									</div>
									<div class="info_baodao">
										<%@ include file="info5.jsp" %>
									</div>

									<div class="info_leftLine"></div>
									<div class="blank12"></div>


									<div class="info_leftTitle">
										<b>国际家居</b>
									</div>
									<div class="info_tushuo" id="jiaju">
										<%@ include file="info6.jsp" %>
									</div>

									<div class="info_img04">
										<img src="images/info_img004.jpg" width="285" height="100"
											alt="" title="" />
									</div>
									<div class="blank12"></div>

								</div>
								
								<aa:zone name="listZone" >
									<div style="text-align:left; width: 410px;float: left;padding-left: 15px;">
										<s:iterator value="listNewsType" >
											<div class="info_midTitle">
												<div class="info_midTitle_jiantou"></div>
												<span class="float_right"><a href="<%=contextPath %>/Info/newsList.action?newsParameter._ne_newsTypeId=${newsTypeId }&newsParameter.currentPage=1&newsParameter.maxResults=30">更多&gt;&gt;</a></span>
												<span	class="cOrange font14"><b>${title }</b></span>
											</div>
											<div class="info_midNews" id="shichangdongtai">
												<ul>
													<s:iterator value="listNews" >
														<li><a href="<%=contextPath %>/Info/newsContent.action?newsId=${newsId }" >${newsTitle }</a></li>
													</s:iterator>
												</ul>
												<div class="clear"></div>
											</div>
										</s:iterator>
									</div>
								</aa:zone>
								
							</div>
						</div>
						
						
						
						
						<div class="info_col02_contentR">
								<div class="info_news_list" id="top">
									<div></div>

								</div>

								<div class="info_rightTitle">
									<b>楼房推荐</b>
								</div>
								<!-- 
								<div id="loadingDiv" >
									<img src="<%=contextPath %>/images/loading2.gif" />
									<br />
									<font style="font-weight: bold;" >加载中...</font>
								</div>
								 -->
								
								<div class="info_tuijian" id="estateDiv" >
									<ul>
										<s:iterator value="@fsf.web.common.ConstantCache@LISTRECOMMONDSALE" >
											<li>
												<p>
													<s:if test="imagePath!=null && imagePath.trim()!=''">
														<img src="<%=contextPath %>${imagePath }" width="131" height="86" />
													</s:if>
													<s:else>
														<img src="<%=contextPath %>/images/logo.jpg" width="154" height="51" />
													</s:else>
												</p>
												<p>
													<s:if test="tradeType==1">
														<a href="<%=contextPath %>/freetrade/outContent.action?estateId=${estateId }" class="cRed02">${estateName }</a>
													</s:if>
													<s:if test="tradeType==2">
														<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=${estateId }" class="cRed02">${estateName }</a>
													</s:if>
												</p>
												<p>
													<span class="cRed02"><s:date name="createTime" format="yyyy-MM-dd" /></span>&nbsp;&nbsp;
													<span class="cRed02">${unitPrice}元/平方</span>
												</p>
											</li>
										</s:iterator>
									</ul>
								</div>

								<div class="info_button">
									<a href="<%=contextPath %>/freetrade/index.jsp">
										<img src="images/info_button.jpg" width="174" height="27" alt="更多房源尽在自主交易" title="更多房源尽在自主交易" />
									</a>
								</div>
								<br />
							</div>
						<!-- col02_1 -->
						
					</div>
				</div>
				<div class="info_col02_bottom"></div>
			</div>

			<!-- link -->
			<div class="clear"></div>
			<div class="blank12"></div>
			<div class="info_link">
				<p>
					<a href="http://www.chinahr.com/">中华英才网</a> |
					<a href="http://www.gov.cn/">中国政府网</a>|
					<a href="http://www.zhcw.com/">中 彩 网</a>
					<a href="http://www.xcar.com.cn/">爱卡汽车网</a>
					<a href="http://www.xiaonei.com/">校 内 网</a>|
					<a target="_blank" href="http://www.anjuke.com/?&amp;pi=H-1">安居客房产网</a>
					<a href="http://www.taobao.com/">淘 宝 网</a> |&nbsp;
					<a target="_blank" href="http://www.ddmap.com/">丁丁地图</a> |&nbsp;
					<a href="http://www.people.com.cn/">人 民 网</a> |&nbsp;
					<a href="http://cn.msn.com/">MSN中文网</a> |&nbsp;
					<a href="http://www.xinhuanet.com/">新 华 网</a> |&nbsp;
					<a href="http://fund.eastmoney.com/">天天基金</a> |
					<a href="http://sports.sina.com.cn/">新浪体育</a> |
					<a href="http://www.bitauto.com/" class="greenfont">易车网</a> |
					<a href="http://www.myspace.cn/">聚友网</a>
					<a href="http://www.lottery.gov.cn/">中国体彩网</a>
					<a href="http://www.eastmoney.com/">东方财富网</a>
				</p>
			</div>

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- foot -->
			<%@ include file="../CommonPage/Foot.jsp"%>
		</div>
	</body>
</html>
<script type="text/javascript">
window.onload = function(){
	ajaxAnywhere.showLoadingMessage = function(){}
	ajaxAnywhere.hideLoadingMessage = function(){}
	ajaxAnywhere.getAJAX("<%=contextPath %>/Info/newsIndexList.ajax","listZone");
	ajaxAnywhere.onAfterResponseProcessing = function (){}
}
</script>