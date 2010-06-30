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
		<meta name="title"
			content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>地产资讯 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />

	</head>
	<body>
		<div class="infoList_box">
			<div class="infoList_head">
				<div class="infoList_logo">
					<a href="#"><img src="images/logo.jpg" width="154" height="51" alt="房上房" title="房上房" />
					</a>
				</div>
				<p>
					<a href="<%=contextPath %>/main/index.jsp"><u>首页</u></a> |
					<a href="<%=contextPath %>/freetrade/index.jsp"><u>自主交易</u></a> |
					<a href="<%=contextPath %>/entrustTrade/index.jsp"><u>委托代理</u></a> |
					<a href="<%=contextPath %>/newHouse/index.jsp"><u>新房推荐</u></a> |
					<a href="<%=contextPath %>/Info/infoIndexList.action"><u>地产资讯</u></a> |
					<a href="<%=contextPath %>/forums/list.page"><u>论坛</u></a> |
					<a href="<%=contextPath %>/CoBank/index.jsp"><u>合作银行</u></a> |
					<a href="<%=contextPath %>/commerce/commerceIndex.action"><u>旺铺招租</u></a> |
					<a href="<%=contextPath %>/invitedexperts/index.action"><u>专家顾问</u></a>
				</p>
			</div>

			<div class="infoList_guide">
				您当前的所在位置：
				<a href="<%=contextPath %>/main/index.jsp">房上房</a> &gt;
				<a href="<%=contextPath %>/Info/infoIndexList.action">资讯</a><span class="cOrange"></span>
			</div>

			<div class="infoList_title">
				<p>
					<span class="float_right">&nbsp;&nbsp; </span>
					<span class="font14"><b><fsf:dictTranslate groupName="$information_type" value="informationParameter._ne_informationType" /></b></span>
				</p>
			</div>

			<div class="infoList_content">
				<s:iterator value="pageView.records" status="i">
					<p>
						<span class="float_right cGray">${updateTime }</span>・
						<a target="_blank"
							href="<%=contextPath%>/Info/infoContent.action?informationId=${informationId }"
							class="font14">${informationTitle }</a>
					</p>
					<s:if test="#i.count%10==0">
						<div class="infoList_content_line"></div>
					</s:if>
				</s:iterator>
			</div>
			<%@ include file="/share/infoPageNavigation.jsp"%>
		</div>
		<div class="clear"></div>
		<div class="blank12"></div>
		<!-- foot -->
		<%@ include file="../CommonPage/Foot.jsp"%>
	</body>
</html>
