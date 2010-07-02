<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。" />
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C" />
		<meta name="title" content="帮助中心 - 房上房地产网(http://wwww.fang3fang.com)" />
		<title>店铺 - 房上房地产网</title>
		<link href="css/style-house.css" rel="stylesheet" type="text/css" />
		<link href="css/tuijian.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="js/showDiv.js"></script>
	</head>
	<body>
		<div class="box">
			<!-- new menu -->
			<%@ include file="../CommonPage/New_Menu.jsp"%>
			<!-- head -->
			<%@ include file="../CommonPage/Head.jsp"%>

			<!-- wangpu -->
			<div class="wangpu_top">
				<div class="wangpu_topL">
					<img src="images/wangpu_img01.jpg" width="709" height="101" alt="" title="" />
				</div>
				<div class="wangpu_topR">
					<p class="cOrange bold">
						联系房上房:<s:property value="@chance.common.SystemConfigInitListener@sysConfig.get('work_time')" />
					</p>
					<p>
						<img src="images/info_dot01.jpg" width="5" height="5"
							align="absmiddle" />
						客服MSN：<s:property value="@chance.common.SystemConfigInitListener@sysConfig.get('msn')" />
					</p>
					<p>
						<img src="images/info_dot01.jpg" width="5" height="5"
							align="absmiddle" />
						客服QQ：<s:property value="@chance.common.SystemConfigInitListener@sysConfig.get('qq')" />
					</p>
				</div>
			</div>

			<div class="blank12"></div>
			<!-- content -->

			<div class="wrap">

				<!--contentLayout-->
				<div class="contertLayout">
					<!--contentRight-->
					<div class="conRight right">
						<div class="focusPic" id="loadingDiv" style="display: none;width: 100%;text-align: center;" >
							<img src="<%=contextPath %>/images/loading2.gif" style="margin: 0 auto;margin-top: 80px;" />
							<br />
							<font style="font-weight: bold;" >加载中...</font>
						</div>
						
						<div id="contentDiv" >
							<aa:zone name="recommondZone">
								<!--房源 二手房-->
								<div class="profile s_clear">
									<div class="proDocument">
										<span style="margin-left: -20px; position: absolute; margin-top: -19px">
											<img src="images/shop2s.jpg" />
										</span>
										<br/>
										<s:iterator value="salesRecommond" >
											<p class="top">
												<span class="tuo"><img src="<%=contextPath %>${imagePath }" width="75px" height="60px" style="float: left" ;/></span>
												<span class="title">${estateName }</span>
												<span style="padding-left: 19px;">${bedroom }室${hall }厅 ${area }㎡ <b>${salePrice }元</b></span>
												<br/>
												<span class="Sinfo">${remark }</span>
												<span class="Sdate" style="float: right"><s:date name="createTime" format="yyyy-MM-dd" /></span>
											</p>
										</s:iterator>
									</div>
								</div>
								<!--二手房 end-->
		
								<!--房源 租房-->
								<div class="profile s_clear">
									<div class="proDocument">
										<span style="margin-left: -20px; position: absolute; margin-top: -19px">
											<img src="images/shopZ.jpg" />
										</span>
										<br/>
										<s:iterator value="rentRecommond" >
											<p class="top">
												<span class="tuo"><img src="<%=contextPath %>${imagePath }" width="75px" height="60px" style="float: left" ;/></span>
												<span class="title">${estateName }</span>
												<span style="padding-left: 19px;">${bedroom }室${hall }厅 ${area }㎡ <b>${rentPrice }元/月</b></span>
												<br />
												<span class="Sinfo">${remark }</span>
												<span class="Sdate" style="float: right"><s:date name="createTime" format="yyyy-MM-dd" /></span>
											</p>
										</s:iterator>
									</div>
								</div>
								<!--租房 end-->
							</aa:zone>
						</div>
						
						<div class="blank12"></div>
						<div class="conRight right"></div>
					</div>


					<!--contentLeft-->
					<div class="conLeft left">
						<!--个人资料-->
						<div class="lcnt1">
							<div class="lcntHead"></div>
							<div class="lcntCont s_clear">
								<div class="blogerBox">
									<div class="bpic left">
										<p class="blogImg"><img src="<%=contextPath %>${imagePath }" alt="${realName }" /></p>
										<p class="bact"><a href="#" title="与${realName }在线沟通" target="_blank"><img src="images/bntcom.gif" alt="在线沟通" /></a></p>
									</div>
									<div class="binf right">
										<p>
											<strong>姓名：${realName }</strong>
											<img src="images/blue_1.gif" />
											<img src="images/blue_1.gif" />
										</p>
										<p class="alt">
											<b>执业证号：${license }</b>
										</p>
										<p>区域：<fsf:dictTranslate groupName="#district" value="districtId" /></p>
										<p>
											公司：${company }
										</p>
										<p class="tel">
											电话：${phone }
										</p>
										<p class="alt">
											注册时间：<s:date name="createDate" format="yyyy-MM-dd" />
										</p>
									</div>
								</div>
								<div>
									<p>
										<small class="qq">
											<a href="tencent://message/?uin=${qq }" title="给${realName }发QQ信息">${qq }</a>
										</small>
										<br/>
										<small class="mail"><a href="mailto:${email }" title="给${realName }发邮件">${email }</a></small>
									</p>
								</div>
							</div>
							<div class="lcntFoot"></div>
						</div>
						<input name="hIds" id="hIds" type="hidden" value="," />
						<input name="hETs" id="hETs" type="hidden" value="" />
						<!--/个人资料 end-->
						<!--公告-->
						<div class="lcnt1 mt10" >
							<div class="lcntHead"></div>
							<div class="lcntCont s_clear">
								<div class="noticBox" style="height: 380px;" >
									<div class="title">
										<b>公告栏</b>
									</div>
									<div id="marquee_c" class="cntnotic" style="height: 340px;">
										<div id="marquee">
											<p>${remark }</p>
										</div>
										<div id="marquee_t"></div>
										<div id="marquee_tt" style="position: absolute; top: -500px; left: -1000px;"></div>
									</div>
								</div>
							</div>
							<div class="lcntFoot"></div>
						</div>
					</div>
				</div>
				<!--/contentLayout end-->
			</div>

			<div class="clear"></div>
			<div class="blank12"></div>
			<br />
			<!-- foot -->
			<%@ include file="../CommonPage/Foot.jsp"%>

		</div>

	</body>
</html>
<script language="javascript" >
window.onload = function(){
	ajaxAnywhere.showLoadingMessage = function(){
		document.getElementById('loadingDiv').style.display = "block";
		document.getElementById('contentDiv').style.display = "none";
	}
	ajaxAnywhere.hideLoadingMessage = function(){
		document.getElementById('loadingDiv').style.display = "none";
		document.getElementById('contentDiv').style.display = "block";
	}
	ajaxAnywhere.getAJAX(contextPath+"/invitedexperts/queryRecommond.ajax?userId=${userId}","recommondZone");
}
</script>