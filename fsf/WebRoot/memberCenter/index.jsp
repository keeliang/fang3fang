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
		<script type="text/javascript">
		window.onload = function(){
			ajaxAnywhere.showLoadingMessage = function(){}
			ajaxAnywhere.hideLoadingMessage = function(){}
			ajaxAnywhere.getAJAX("/memberCenter/recommondList.ajax","recommondList");
		}
		</script>
	</head>

	<body>
		<div class="memberC_box">
			<!-- head -->
			<%@ include file="../CommonPage/memberC_head.jsp"%>
			<!-- guide -->
			<div class="guide">
				<p>
					您当前的所在位置：
					<a href="#">房上房</a> &gt;&gt;
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
					
						<aa:zone name="recommondList">
							<div class="memberC_rightC">
								<div class="memberC_rightTitle02">
									<b>自主推荐</b>
								</div>
								<div class="memberC_rightShow">
									<s:iterator value="recommondOwnEstateList">
										<p>
											・<a href="#">${estateName }</a>
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
											・<a href="#">${estateName }</a>
										</p>
									</s:iterator>
								</div>
								<div class="memberC_rightBottom"></div>
							</div>
						</aa:zone>
					
					<div class="clear"></div>
					<div class="blankP"></div>

					<div class="memberC_rightC">
						<div class="memberC_rightTitle03">
							<b>购房卖房百宝箱</b>
						</div>
						<div class="memberC_rightShow">
							<dl>
								<dd>
									<a href="AutonomousCS.jsp">[旺铺发布]</a>
								</dd>
								<dd>
									<a href="#">[房贷计算器]</a>
								</dd>
								<dd>
									<a href="#">[按揭贷款]</a>
								</dd>
								<dd>
									<a href="#">[资金监管]</a>
								</dd>
								<dd>
									<a href="#">[邀请专家]</a>
								</dd>
							</dl>
						</div>
					</div>

				</div>

				<!-- center -->
				<div class="memberC_mid">
					<div class="memberC_midInfo">
						<p>
							<b class="font14">欢迎您，<span class="cOrange"></span>!</b>[ 您是${USER.userCode } ]
						</p>
						<p>
							[
							<span><a href="<%=contextPath %>/memberCenter/memberInfo.action?userId=${USER.userId }"><u>修改密码/个人资料</u></a></span>
							<span class="cGray">|</span>
							<span><a href="../help/freeService.jsp"><u>免费服务说明</u></a></span>
							<span class="cGray">|</span>
							<span><a href="../help/chargeService.jsp"><u>付费服务说明</u></a></span>
							]
						</p>
					</div>

					<div class="clear"></div>
					<div class="blankP"></div>

					<div class="memberC_centerC">
						<div class="memberC_midTitle">
							<b>温馨提醒</b>
						</div>
						<div class="memberC_midShow">
							<p>
								最近1个月您共有发布了
								<span class="cOrange">40</span> 套房源&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#" class="cRed02"><u>[查看发布的房源]</u>
								</a>
							</p>
						</div>
						<div class="memberC_midBottom"></div>
					</div>

					<div class="clear"></div>
					<div class="blankP"></div>

					<div class="clear"></div>
					<div class="blankP"></div>

					<div class="memberC_centerC">
						<div class="memberC_midTitle">
							<b>我的收藏夹</b>
						</div>
						<div class="memberC_midShow">
							<dl>
								<dd>
									<a href="#">金泰・先锋 业主论坛</a>
								</dd>
								<dd>
									<a href="#">新塘新世界小户型 现认购可获88折</a>
								</dd>
								<dd>
									<a href="#">阳光假日园本月加推小户型婚房</a>
								</dd>
								<dd>
									<a href="#">翠城花园目前暂时缺货 预计9月推中小户</a>
								</dd>
								<dd>
									<a href="#">日出观山将于5月底开售 提前登记可获9折</a>
								</dd>
								<dd>
									<a href="#">方圆明月山溪5月28日首次开放 首推大户</a>
								</dd>
								<dd>
									<a href="#">中海金沙磬园推限价房雅郡 现正接受登记</a>
								</dd>
								<dd>
									<a href="#">专家解读廉租房建设规模增加</a>
								</dd>
								<dd>
									<a href="#">豪赌楼市回暖大开发商频出手买地</a>
								</dd>
								<dd>
									<a href="#">十里江湾销售中心已正式开放 </a>
								</dd>
							</dl>
						</div>
						<div class="memberC_midBottom"></div>
					</div>

					<div class="clear"></div>
					<div class="blankP"></div>

					<div class="memberC_centerC">
						<div class="memberC_midTitle">
							<b>交易培训班</b>
						</div>
						<div class="memberC_midShow02">
							<div class="memberC_midShow02L">
								<p>
									<img src="images/head_buy.jpg" width="55" height="50" alt="buy"
										title="buy" align="absmiddle" />
									&nbsp;
									<span class="font14 cRed05"><b>买房注意事项</b>
									</span>
								</p>
								<dl>
									<dd>
										<a href="#">挑选房源时应注意的四大因素</a>
									</dd>
									<dd>
										<a href="#">二手房交易具体流程</a>
									</dd>
									<dd>
										<a href="#">申请办证时资料应清晰</a>
									</dd>
									<dd>
										<a href="#">精装房收房需注意三点</a>
									</dd>
									<dd>
										<a href="#">十大秘技教你淘出二手好房</a>
									</dd>
								</dl>
							</div>
							<div class="memberC_midShow02R">
								<p>
									<img src="images/head_sell.jpg" width="55" height="50"
										alt="sell" title="sell" align="absmiddle" />
									&nbsp;
									<span class="font14 cRed05"><b>卖房注意事项</b>
									</span>
								</p>
								<dl>
									<dd>
										<a href="#">自售房屋有学问</a>
									</dd>
									<dd>
										<a href="#">合同细节要讲清</a>
									</dd>
									<dd>
										<a href="#">全权委托公证</a>
									</dd>
									<dd>
										<a href="#">无证房地产买卖</a>
									</dd>
									<dd>
										<a href="#">注意阴阳合同</a>
									</dd>
								</dl>
							</div>
						</div>
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
