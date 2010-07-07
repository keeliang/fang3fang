<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>会员中心 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
	</head>

	<body>
		<div class="memberC_box">
			<!-- head -->
			<%@ include file="../CommonPage/memberC_head.jsp"%>
			<!-- guide -->
			<div class="guide">
				<p>
					您当前的所在位置：
					<a href="<%=contextPath %>/main/index.jsp">房上房</a> &gt;&gt;
					<span class="cOrange">会员中心</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>
				<!-- right -->
				<div class="memberC_right">
					<div class="clear"></div>
					<div class="blankP"></div>
						<div class="memberC_rightC">
							<div class="memberC_rightTitle02">
								<b>自主推荐</b>
							</div>
							<div class="memberC_rightShow">
								<s:iterator value="recommondOwnEstateList">
									<p>
										・<a href="<%=contextPath %>/freetrade/outContent.action?estateId=${estateId }" target="blank" >${estateName }</a>
									</p>
								</s:iterator>
							</div>
							<div class="memberC_rightBottom"></div>
						</div>
	
						<div class="clear"></div>
						<div class="blankP"></div>
	
						<div class="memberC_rightC">
							<div class="memberC_rightTitle02">
								<b>委托推荐</b>
							</div>
							<div class="memberC_rightShow">
								<s:iterator value="recommondEstateList">
									<p>
										・<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=${estateId }">${estateName }</a>
									</p>
								</s:iterator>
							</div>
							<div class="memberC_rightBottom"></div>
						</div>
					
					<div class="clear"></div>
					<div class="blankP"></div>

				</div>

				<!-- center -->
				<div class="memberC_mid">
					<div class="memberC_midInfo">
						<p>
							<b class="font14">欢迎您，<span class="cOrange"></span>!</b>[ 您是${USER.userCode } ]&nbsp;您是:<fsf:dictTranslate groupName="$user_type" value="#session.USER.userType" />
						</p>
						<p>
							[
							<span><a href="<%=contextPath %>/memberCenter/memberInfo.action?userId=${USER.userId }"><u>修改密码/个人资料</u></a></span>
							<span class="cGray">|</span>
							<span><a href="<%=contextPath %>/help/help.action?infoName=FreeService"><u>免费服务说明</u></a></span>
							<span class="cGray">|</span>
							<span><a href="<%=contextPath %>/help/help.action?infoName=ChargeService"><u>付费服务说明</u></a></span>
							]
						</p>
					</div>

					<div class="clear"></div>
					<div class="blankP"></div>

					<div class="clear"></div>
					<div class="blankP"></div>

					<div class="clear"></div>
					<div class="blankP"></div>

					<div class="memberC_centerC">
						<aa:zone name="attentionZone">
							<div class="memberC_midTitle">
								<b>交易培训班</b>
							</div>
							<div class="memberC_midShow02">
								<s:if test="cmd==null">
									<div class="memberC_midShow02L">
										<p>
											<img src="images/head_buy.jpg" width="55" height="50" alt="buy" title="buy" align="absmiddle" />
											&nbsp;
											<span class="font14 cRed05"><b>买房注意事项</b></span>
										</p>
										<dl>
											<s:iterator value="@fsf.web.common.ConstantCache@SALEATTENTIONCACHE" >
												<dd><a href="javascript:f_attention(${key })">${value }</a></dd>
											</s:iterator>
										</dl>
									</div>
									<div class="memberC_midShow02R">
										<p>
											<img src="images/head_sell.jpg" width="55" height="50" alt="sell" title="sell" align="absmiddle" />
											&nbsp;
											<span class="font14 cRed05"><b>卖房注意事项</b></span>
										</p>
										<dl>
											<s:iterator value="@fsf.web.common.ConstantCache@BUYATTENTIONCACHE" >
												<dd><a href="javascript:f_attention(${key })">${value }</a></dd>
											</s:iterator>
										</dl>
									</div>
								</s:if>
								<s:else>
									<div style="width: 100%;text-align: center;font-weight: bold;font: 16px;">${title }</div>
									${content }
									<div style="width: 100%;text-align: right;"><a href="javascript:f_attention(0)" >返回</a></div>
								</s:else>
							</div>
						</aa:zone>
					</div>
				</div>
				<div class="memberC_bottom"></div>
			</div>

		</div>

		<div class="clear"></div>
		<div class="blank12"></div>
		<!-- foot -->
		<%@ include file="../CommonPage/Foot.jsp"%>
	</body>
</html>
<script type="text/javascript">
function f_attention(attentionId){
	ajaxAnywhere.showLoadingMessage = function(){}
	ajaxAnywhere.hideLoadingMessage = function(){}
	if(attentionId==0){
		ajaxAnywhere.getAJAX("/memberCenter/attentionBack.ajax","attentionZone");
	}else{
		ajaxAnywhere.getAJAX("/memberCenter/attentionContent.ajax?attentionId="+attentionId,"attentionZone");
	}
}
</script>