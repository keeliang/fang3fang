<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。">
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C">
		<meta name="title"
			content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)" />
		<title>自由贸易区 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/showQG.js"></script>
		<script type="text/javascript" src="js/Cal.js"></script>
		<script type="text/javascript" src="../js/showDiv.js"></script>
		<SCRIPT type="text/javascript" src="js/slide.js"></SCRIPT>
		<script type="text/javascript" src="../js/SearchMessage.js"></script>

		<style type="text/css">
body .new_menu {
	background: url(../images/bg.jpg) repeat-x top;
}
</style>
	</head>
	<body>
		<div class="box">

			<!-- new menu -->
			<%@ include file="../CommonPage/New_Menu.jsp"%>
			<!-- head -->
			<%@ include file="../CommonPage/Head.jsp"%>
			<div class="clear"></div>
			<!-- guide -->
			<div id="guide" class="guide">
				<p>
					<span class="float_right">
						<img src="images/freeTrade_dot01.jpg" width="20" height="19" align="absmiddle" />
						<a href="#" class="cOrange">收藏</a>&nbsp;&nbsp;&nbsp;
						<img src="images/freeTrade_dot02.jpg" width="20" height="19" align="absmiddle" />
						<a href="#">打印</a>&nbsp;&nbsp;&nbsp;
						<img src="images/freeTrade_dot03.jpg" width="20" height="19" align="absmiddle" />
						<a href="#">推荐给好友</a>
					</span>您当前的所在位置：
					<a href="../main/index.jsp">房上房</a> &gt;
					<a href="../freetrade/index.jsp">自主交易区</a> &gt;
					<a id="TypeInfo" href="../freetrade/index.jsp">求购信息</a> &gt;
					<span id="PropertyInfo" class="cOrange">岭南雅院</span>
				</p>
			</div>

			<!-- content -->
			<div class="freeTrade_contnet">
				<!-- left -->
				<div class="freeTrade_contnetL">
					<div class="freeTrade_contnetL_show">
						<div id="EstateInfo" class="freeTrade_contnetL_title01">
							<span class="float_right">
								发布日期：<s:date name="createTime" format="yyyy-MM-dd HH:mm:ss" />&nbsp;&nbsp;&nbsp;&nbsp;
								有效期：<span class="cOrange">${effective }</span>天
							</span>
							<span	class="cOrange font14"><b>信息</b></span>
							<img src="images/freeTrade_down.jpg" width="13" height="13" align="absmiddle" />
						</div>
						<table border="0" cellpadding="0" cellspacing="0" class="freeTrade_table">
							<tr>
								<td class="grayBg right">
									城&nbsp;&nbsp;市：
								</td>
								<td id="CityName" class="left">
									<fsf:dictTranslate groupName="#city" value="cityId" />
								</td>
								<td class="grayBg right">
									区&nbsp;&nbsp;县：
								</td>
								<td id="DistrictName" class="left">
									<fsf:dictTranslate groupName="#district" value="districtId" />
								</td>
							</tr>
							<tr>
								<td class="grayBg right">
									商&nbsp;&nbsp;圈：
								</td>
								<td id="TownName" class="left">&nbsp;
									<fsf:dictTranslate groupName="#business_area" value="areaId" />
								</td>
								<td class="grayBg right">
									&nbsp;&nbsp;物业类型：
								</td>
								<td id="PropertyTypeName" class="left">
									<fsf:dictTranslate groupName="$estate_type" value="estateType" />
								</td>
							</tr>
							<tr>
								<td class="grayBg right">
									期望户型：
								</td>
								<td id="HouseType" class="left" colspan="3">
									${bedroom } 室 ${hall } 厅 ${toilet } 卫 ${porch } 阳台
								</td>
							</tr>
							<tr>
								<td class="grayBg right">
									朝&nbsp;&nbsp;向：
								</td>
								<td id="OrientationName" class="left">
									<fsf:dictTranslate groupName="$toward" value="toward" />
								</td>
								<td class="grayBg right">
									要求电梯房：
								</td>
								<td id="OrientationName" class="left">
									<fsf:dictTranslate groupName="$is_lift" value="isLift" />
								</td>
							</tr>
							<tr>
								<td class="grayBg right freeTrade_tableW01">
									装修要求：
								</td>
								<td id="RenovationStandardName" class="left freeTrade_tableW03">
									<fsf:dictTranslate groupName="$fitment" value="fitment" />
								</td>
								<td class="grayBg right freeTrade_tableW01">
									家电设备要求：
								</td>
								<td id="RenovationStandardName" class="left freeTrade_tableW03">
									<fsf:dictTranslate groupName="$device" value="device" />
								</td>
							</tr>
							<tr>
								<td class="grayBg right">
									期望面积：
								</td>
								<td id="StartArea" class="left">
									<span class="cOrange">${areaFrom }</span>平方米
								</td>
								<td class="grayBg right">
									至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
								<td id="EndArea" class="left">
									<span class="cOrange">${areaTo }</span>平方米
								</td>
							</tr>
							<s:if test="tradeMode==2 || tradeMode==3">
								<tr>
									<td class="grayBg right">
										期望售价：
									</td>
									<td id="StartPrice" class="left">
										<span class="cOrange">${buyPriceFrom }</span>元
									</td>
									<td class="grayBg right">
										至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
									<td id="EndPrice" class="left">
										<span class="cOrange">${buyPriceTo }</span>元
										<span class="cOrange">[房贷计算器 <a href="#"><img
												src="images/freeTrade_count.jpg" width="14" height="14"
												align="absmiddle" />
									</a> ]</span>
									</td>
								</tr>
							</s:if>
							<s:if test="tradeMode==1 || tradeMode==3">
								<tr>
									<td class="grayBg right">
										期望租价：
									</td>
									<td id="StartPrice" class="left">
										<span class="cOrange">${rentPriceFrom }</span>元/月
									</td>
									<td class="grayBg right">
										至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</td>
									<td id="EndPrice" class="left">
										<span class="cOrange">${rentPriceTo }</span>元/月
									</td>
								</tr>
							</s:if>
						</table>

						<div class="clear"></div>
						<div class="blank12"></div>
						<div class="freeTrade_contnetL_title02">
							<span class="float_right"><a href="#" class="cRed03"><u>[如果联系人是中介，点击投诉]</u></a></span>
							<span class="cOrange font14"><b>联系方式</b></span>
							<img src="images/freeTrade_down02.jpg" width="13" height="13"	align="absmiddle" />&nbsp;&nbsp;[自主交易]
						</div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%"	class="freeTrade_table">
							<tr>
								<td class="grayBg right freeTrade_tableW01">
									求购者姓名：
								</td>
								<td id="Contacter" class="left freeTrade_tableW03">
									${contactUser.userCode }
								</td>
								<td class="grayBg right freeTrade_tableW02">
									联系电话：
								</td>
								<td id="HomePhone" class="left freeTrade_tableW04">
									${contactUser.tel }
								</td>
							</tr>
							<tr>
								<td class="grayBg right">
									手&nbsp;&nbsp;机：
								</td>
								<td id="MobilePhone" class="left">
									${contactUser.phone }
									<span class="cRed03">(中介免问)</span>
								</td>
								<td class="grayBg right">
									QQ：
								</td>
								<td id="QQ" class="left">
									${contactUser.qq }
								</td>
							</tr>
							<tr>
								<td class="grayBg right">
									MSN：
								</td>
								<td id="MSN" class="left">
									${contactUser.msn }
								</td>
								<td class="grayBg right">
									E-mail：
								</td>
								<td id="Email" class="left">
									${contactUser.email }
								</td>
							</tr>
							<tr>
								<td colspan="4" class="left cOrange">
									温馨提醒：自主交易有一定风险，在实际交易过程中，请您务必保持警惕，查验相关证件，并签署正式合同。
								</td>
							</tr>
						</table>
						<div class="clear"></div>
						<div class="blank12"></div>

					</div>

					<div class="clear"></div>
					<div id="photo" class="blank12"></div>
					<div class="freeTrade_contnetL_show02">
						<div class="freeTrade_contnetL_title03">
							<div class="freeTrade_contnetL_title03_title"></div>
							<div id="HLoanRate" class="freeTrade_contnetL_title03_more">
								<a href="#" class="cWhite">[最新房贷利率]</a>
							</div>
							<div id="CalMethod" class="freeTrade_contnetL_title03_nav">
								<ul>
									<li id="NavOn1" class="NavOn">
										<a href="#"><span></span> 等额本息还款法</a>
									</li>
									<li>
										|
									</li>
									<li id="NavOn2">
										<a href="#"><span></span> 等额本金还款法</a>
									</li>
									<li>
										|
									</li>
									<li id="NavOn3">
										<a href="#"><span></span> 公积金贷款计算器</a>
									</li>
									<li>
										|
									</li>
									<li id="NavOn4">
										<a href="#"><span></span> 提前还款计算器</a>
									</li>
								</ul>
							</div>
						</div>
						<form name="calc" action="" method="post">
							<div class="freeTrade_contnetL_show02_con">
								<div class="freeTrade_contnetL_show02_conL">
									<table id="CalculatorTable" border="0" cellpadding="0"
										cellspacing="0" width="100%" class="freeTrade_table03">
										<tr>
											<td colspan="2" class="grayBg">
												填写贷款信息
											</td>
										</tr>
										<tr>
											<td class="grayBg right freeTrade_tableW01">
												贷款类别：
											</td>
											<td class="left">
												<select name="type" onchange="changehz(this)">
													<option value="1" selected="selected">
														商业贷款
													</option>
													<option value="2">
														公积金
													</option>
													<option value="3">
														组合型
													</option>
												</select>
											</td>
										</tr>
										<tr>
											<td class="grayBg right" valign="middle">
												计算方式：
											</td>
											<td class="left">
												<div>
													<p id="other1" class="padt5">
														<input id="calc_radio1" name="jisuan_radio" type="radio"
															value="1" checked="checked"
															onclick="exc_js(this.form,1);" />
														根据面积、单价计算
													</p>
													<p class="padt5" id="pricep">
														单价：
														<input name="price" type="text" class="inputW01" />
														元/平米
													</p>
													<p class="padt5" id="sqmp">
														面积：
														<input name="sqm" type="text" class="inputW01" />
														平方米
													</p>
													<p class="padt5" id="anjiep">
														按揭成数：
														<select name="anjie">
															<option value="9">
																9成
															</option>
															<option value="8">
																8成
															</option>
															<option value="7" selected="selected">
																7成
															</option>
															<option value="6">
																6成
															</option>
															<option value="5">
																5成
															</option>
															<option value="4">
																4成
															</option>
															<option value="3">
																3成
															</option>
															<option value="2">
																2成
															</option>
														</select>
													</p>
													<p id="other2" class="padt5">
														<input id="calc_radio2" name="jisuan_radio" type="radio"
															value="2" onclick="exc_js(this.form,2);" />
														根据贷款总额计算
													</p>
													<p id="calc_js_div2" class="padt5" style="display: none;">
														贷款总额：
														<input maxLength="8" size="10" name="daikuan_total000" />
														元
													</p>
													<p id="hz" style="display: none">
													<table class="ttt9" cellspacing="0" cellpadding="0"
														width="100%">
														<tbody>
															<tr>
																<td>
																	<b>组合比例(组合型)：</b>
																</td>
															</tr>
															<tr>
																<td>
																	商业性：
																	<input maxlength="8" size="8" name="total_sy" />
																	元
																</td>
															</tr>
															<tr>
																<td>
																	公积金：
																	<input maxlength="8" size="8" name="total_gjj" />
																	元
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</td>
										</tr>
										<tr>
											<td class="grayBg right freeTrade_tableW01">
												按揭年数：
											</td>
											<td class="left">
												<select id="years" name="years">
													<option value="1">
														1年（12期）
													</option>
													<option value="2">
														2年（24期）
													</option>
													<option value="3">
														3年（36期）
													</option>
													<option value="4">
														4年（48期）
													</option>
													<option value="5">
														5年（60期）
													</option>
													<option value="6">
														6年（72期）
													</option>
													<option value="7">
														7年（84期）
													</option>
													<option value="8">
														8年（96期）
													</option>
													<option value="9">
														9年（108期）
													</option>
													<option value="10">
														10年（120期）
													</option>
													<option value="11">
														11年（132期）
													</option>
													<option value="12">
														12年（144期）
													</option>
													<option value="13">
														13年（156期）
													</option>
													<option value="14">
														14年（168期）
													</option>
													<option value="15">
														15年（180期）
													</option>
													<option value="16">
														16年（192期）
													</option>
													<option value="17">
														17年（204期）
													</option>
													<option value="18">
														18年（216期）
													</option>
													<option value="19">
														19年（228期）
													</option>
													<option value="20" selected="selected">
														20年（240期）
													</option>
													<option value="21">
														21年（252期）
													</option>
													<option value="22">
														22年（264期）
													</option>
													<option value="23">
														23年（276期）
													</option>
													<option value="24">
														24年（288期）
													</option>
													<option value="25">
														25年（300期）
													</option>
													<option value="26">
														26年（312期）
													</option>
													<option value="27">
														27年（324期）
													</option>
													<option value="28">
														28年（336期）
													</option>
													<option value="29">
														29年（348期）
													</option>
													<option value="30">
														30年（360期）
													</option>
												</select>
											</td>
										</tr>
										<tr>
											<td class="grayBg right freeTrade_tableW01">
												利&nbsp;&nbsp;&nbsp;&nbsp;率：
											</td>
											<td class="left">
												<select id="lilv" name="lilv">
													<option value='42'>
														08年12月23日利率上限
													</option>
													<option value='41' selected>
														08年12月23日利率下限
													</option>
													<option value='40'>
														08年11月27日第二套房
													</option>
													<option value='39'>
														08年11月27日利率基准
													</option>
													<option value='38'>
														08年11月27日利率上限
													</option>
													<option value='37'>
														08年11月27日利率下限
													</option>
													<option value='36'>
														08年10月30日第二套房
													</option>
													<option value='35'>
														08年10月30日利率基准
													</option>
													<option value='34'>
														08年10月30日利率上限
													</option>
													<option value='33'>
														08年10月30日利率下限
													</option>
													<option value='32'>
														08年10月27日第二套房
													</option>
													<option value='31'>
														08年10月27日利率基准
													</option>
													<option value='30'>
														08年10月27日利率上限
													</option>
													<option value='29'>
														08年10月27日利率下限
													</option>
													<option value='28'>
														08年10月09日第二套房
													</option>
													<option value='27'>
														08年10月09日利率上限
													</option>
													<option value='26'>
														08年10月09日利率下限
													</option>
													<option value='25'>
														08年09月16日第二套房
													</option>
													<option value='24'>
														08年09月16日利率上限
													</option>
													<option value='23'>
														08年09月16日利率下限
													</option>
													<option value='22'>
														07年12月21日第二套房
													</option>
													<option value='21'>
														07年12月21日利率上限
													</option>
													<option value='20'>
														07年12月21日利率下限
													</option>
													<option value='19'>
														07年9月15日第二套房
													</option>
													<option value='18'>
														07年9月15日利率上限
													</option>
													<option value='17'>
														07年9月15日利率下限
													</option>
													<option value='16'>
														07年8月22日利率上限
													</option>
													<option value='15'>
														07年8月22日利率下限
													</option>
													<option value='14'>
														07年7月21日利率上限
													</option>
													<option value='13'>
														07年7月21日利率下限
													</option>
													<option value='12'>
														07年5月19日利率上限
													</option>
													<option value='11'>
														07年5月19日利率下限
													</option>
													<option value='10'>
														07年3月18日利率上限
													</option>
													<option value='9'>
														07年3月18日利率下限
													</option>
													<option value='8'>
														06年8月19日利率上限
													</option>
													<option value='7'>
														06年8月19日利率下限
													</option>
													<option value='6'>
														06年4月28日利率上限
													</option>
													<option value='5'>
														06年4月28日利率下限
													</option>
													<option value='4'>
														05年3月17日后利率上限
													</option>
													<option value='3'>
														05年3月17日后利率下限
													</option>
													<option value='2'>
														05年1月1日-3月17日利率
													</option>
													<option value='1'>
														05年1月1日前利率
													</option>
												</select>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<button class="freeTrade_button" onclick="ext_total();">
													开始计算
												</button>
												&nbsp;&nbsp;
												<button class="freeTrade_button" onclick="formReset();">
													清除
												</button>
											</td>
										</tr>
									</table>
								</div>
								<div class="freeTrade_contnetL_show02_conR">
									<div id="CalculatorResult"
										class="freeTrade_contnetL_show02_conR_content">
										<p>
											<b>计算结果：</b>
										</p>
										<p>
											<label>
												房款总额：
											</label>
											<input name="fangkuan_total" type="text" />
										</p>
										<p>
											<label>
												贷款总额：
											</label>
											<input name="daikuan_total" type="text" />
										</p>
										<p>
											<label>
												还款总额：
											</label>
											<input name="all_total" type="text" />
										</p>
										<p>
											<label>
												支付利息款：
											</label>
											<input name="accrual" type="text" />
										</p>
										<p>
											<label>
												首期付款：
											</label>
											<input name="money_first" type="text" />
										</p>
										<p>
											<label>
												贷款月数：
											</label>
											<input name="month" type="text" />
										</p>
										<p>
											<label>
												月均还款：
											</label>
											<input name="month_money" type="text" />
										</p>
									</div>
								</div>
							</div>
						</form>

						<div class="freeTrade_contnetL_show03_con">
							<form id="LoginForm" name="LoginForm" method="post"
								action="/Fang3FangWeb/Access">
								<p>
									<span class="float_right font14">已有<span class="cRed03">248</span>位对此房源感兴趣的用户留言&nbsp;
										<button class="freeTrade_button02">
											点击查看
										</button>
									</span><span class="font14 cOrange"><b>顾客留言</b>
									</span>
									<img src="images/freeTrade_line04.jpg" width="250" height="6"
										align="absmiddle" />
								</p>
								<p>
									<textarea id="QuestionMsg" name="QuestionMsg"
										class="freeTrade_area">我来写几句！</textarea>
								</p>
								<p class="right">
									<input type="hidden" name="UserID" id="UserID"
										value="" />
									用户名：
									<input type="text" name="Username" id="Username"
										class="login_input" />
									密码：
									<input type="password" name="Password" id="Password"
										class="login_input" />
									&nbsp;
									<input type="button" name="Login" id="Login"
										class="freeTrade_button03" value="登录" />
									<a href="#" class="cRed03">[我的留言记录]</a>
									<input id="anonymous" name="anonymous" type="checkbox"
										value="0" />
									匿名&nbsp;
									<input type="button" name="Publish" id="Publish"
										class="freeTrade_button04" value="马上发表" />
								</p>
							</form>
						</div>
					</div>
				</div>
				<!-- right -->
				<%@ include file="../freetrade/show_rightQ.jsp"%>
				<div class="clear"></div>
				<div class="blank12"></div>
				<!-- foot -->
				<%@ include file="../CommonPage/Foot.jsp"%>

			</div>
	</body>
</html>