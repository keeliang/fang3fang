<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="../CommonPage/Session.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。" />
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C" />
		<meta name="title"
			content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)" />
		<title>番禺房地产门户 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
        <script language="javascript" src="../js/showDiv.js"></script>
        <script type="text/javascript" src="js/index.js"></script>
        <script language="javascript" src="js/jump.js"></script>
        <script language="javascript" src="js/moveDiv.js"></script>
        <script language="javascript" src="js/moveContent.js"></script>
        <script type="text/javascript" src="../js/SearchMessage.js"></script>
		
		<link rel="stylesheet" href="css/general.css" type="text/css" media="screen" />
		<script src="js/popup.js" type="text/javascript"></script>
		
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
							<li class="menuHere">
								<a href="index.jsp"><span>首页</span>
								</a>
							</li>
							<li>
								<a href="../freetrade/index.jsp"><span>自主交易</span>
								</a>
							</li>
							<li>
								<a href="../entrustTrade/index.jsp"><span>委托代理</span>
								</a>
							</li>
							<li>
								<a href="../newHouse/index.jsp"><span>新房推荐</span>
								</a>
							</li>
							<li>
								<a href="../Info/index.jsp"><span>地产资讯</span>
								</a>
							</li>
							<li>
								<a href="../forum/index.jsp"><span>论坛</span>
								</a>
							</li>
							<li>
								<a href="../CoBank/index.jsp"><span>银行合作</span>
								</a>
							</li>
							<li>
								<a href="../rent/index.jsp"><span>旺铺招租</span>
								</a>
							</li>
							<li>
								<a href="../invitedexperts/index.jsp"><span>专家顾问</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="navR">
					您好！<%=RealName%>
					<%
						if (RealName == "您还没有登录") {
					%>
					<a href="../member/reg.jsp" class="cYellow"> [注册会员] </a>
					<a href="../member/login.jsp" class="cYellow">[登录]</a>
					<%
						} else {
					%>
					<a href="../memberCenter/index.jsp" class="cYellow"> [会员中心] </a>
					<a href="../CommonPage/ClearSession.jsp" class="cYellow">[注销]</a>
					<%
						}
					%>
				</div>
				<div class="clear"></div>
				<div class="nav_bottom">
					<div class="nav_bottomL"></div>
					<div class="nav_bottomR"></div>
				</div>
			</div>




			<div class="info_img" align="left">
				<EMBED src='images/gg06.swf' quality=high WIDTH=820 HEIGHT=102
					TYPE='application/x-shockwave-flash' id=ad wmode=opaque></EMBED>&nbsp;<span><a href="http://webchat.tq.cn/sendmain.jsp?uin=8827338&ltype=0&page=&localurl=http://localhost:8080/Fang3FangWeb/f3f/main/&uingroup=8827338&chattype=5&transferpage=1&tq_bottom_ad_url=http://qtt.tq.cn/post/sendmain.html&tq_right_infocard_url=http://qtt.tq.cn/showcard.do&buttonsflag=&buttonsflag=&iscallback=1&agentid=0&isnoshowuser=no&rand=149091121842"><img src="http://sysimages.tq.cn/images/kefu7.gif"/></a></span>
			</div>
			<!-- content -->
			<div class="content">
				<!-- col01 -->
				<div class="col01">
					<div class="BuySell_left">

						<div class="nav_content" id="a1" style="display: block;">
							<div class="nav_content_list">
								<div class="qq">
									服务热线：020-84881393 <span class="cGray">|</span>
										020-84881510
								</div>
								<ul>
									<li>
										<a href="#" onmouseover="javascript:jumpTo(1);"><img
												src="images/BuySell_nav01On.jpg" width="119" height="30"
												alt="我要买房" title="我要买房" /> </a>
									</li>
									<li>
										<a href="#" onmouseover="javascript:jumpTo(2);"><img
												src="images/BuySell_nav02.jpg" width="119" height="30"
												alt="我要卖房" title="我要卖房" /> </a>
									</li>
								</ul>
								<div class="clear"></div>
							</div>
							<div class="nav_content_show">
								<div class="nav_content_input01" id="b1">
									您要买房，房上房为您提供数量丰富的业主房源信息，您也可以发布求购信息，让卖家找到您。
								</div>
								<div class="nav_content_input02" id="b2" style="display: none;">
									您联络到卖家了，但要看房并如何与业主洽谈买卖房产，请您留意了。
								</div>
								<div class="nav_content_input03" id="b3" style="display: none;">
									签署买卖合同时，有些问题需要您特别留意。您也可以邀请房上房经纪人上门签约。
								</div>
								<div class="nav_content_input04" id="b4" style="display: none;">
									银行为您提供免费的交易资金监护服务。
								</div>
								<div class="nav_content_input05" id="b5" style="display: none;">
									您买房缺资金吗？银行提供网上在线的按揭申请，为您提供优质的多组合的按揭贷款。
								</div>
								<div class="nav_content_input06" id="b6" style="display: none;">
									房上房为您提供上门签署“三方合同”及银行按揭服务等，只需要很少的费用就可以为您省心省力。
								</div>
								<ul>
									<li>
										<a href="../help/findHouse.jsp"
											onmouseover="javascript:jumpTo2(1);"><img
												src="images/BuySell_button01.jpg" width="87" height="31"
												alt="查看房源" title="查看房源" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/comTalk.jsp"
											onmouseover="javascript:jumpTo2(2);"><img
												src="images/BuySell_button02.jpg" width="87" height="31"
												alt="联系洽谈" title="联系洽谈" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/bargain.jsp"
											onmouseover="javascript:jumpTo2(3);"><img
												src="images/BuySell_button03.jpg" width="87" height="31"
												alt="合同签署" title="合同签署" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/moneyManage.jsp"
											onmouseover="javascript:jumpTo2(4);"><img
												src="images/BuySell_button04.jpg" width="87" height="31"
												alt="资金监管" title="资金监管" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/anjie.jsp"
											onmouseover="javascript:jumpTo2(5);"><img
												src="images/BuySell_button05.jpg" width="87" height="31"
												alt="按揭贷款" title="按揭贷款" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/diya.jsp"
											onmouseover="javascript:jumpTo2(6);"><img
												src="images/BuySell_button06.jpg" width="87" height="31"
												alt="过户抵押" title="过户抵押" /> </a>
									</li>
								</ul>
							</div>
						</div>

						<div class="nav_content" id="a2" style="display: none">
							<div class="nav_content_list">
								<div class="qq">
									服务热线：020-84881393 <span class="cGray">|</span>
										020-84881510
								</div>
								<ul>
									<li>
										<a href="#" onmouseover="javascript:jumpTo(1);"><img
												src="images/BuySell_nav01.jpg" width="119" height="30"
												alt="我要买房" title="我要买房" /> </a>
									</li>
									<li>
										<a href="#" onmouseover="javascript:jumpTo(2);"><img
												src="images/BuySell_nav02On.jpg" width="119" height="30"
												alt="我要卖房" title="我要卖房" /> </a>
									</li>
								</ul>
								<div class="clear"></div>
							</div>
							<div class="nav_content_show">
								<div class="nav_content_input01" id="c1">
									您想要免费卖房吗？您只需要免费注册为房上房的会员就可以做到了。
								</div>
								<div class="nav_content_input02" id="c2" style="display: none;">
									免费的交易平台，为您提供卖家信息和专业的交易服务。
								</div>
								<div class="nav_content_input03" id="c3" style="display: none;">
									签署买卖合同时，有些问题需要您特别留意。您也可以邀请房上房经纪人上门签约。
								</div>
								<div class="nav_content_input04" id="c4" style="display: none;">
									银行为您提供免费的交易资金监护服务。
								</div>
								<div class="nav_content_input05" id="c5" style="display: none;">
									您的房子还在按揭或抵押状态吗？那么出售前您需要进行赎屋。
								</div>
								<div class="nav_content_input06" id="c6" style="display: none;">
									房上房为您提供上门签署“三方合同”及银行按揭服务等，只需要很少的费用就可以为您省心省力。
								</div>
								<ul>
									<li>
										<a href="../help/issueHouse.jsp"
											onmouseover="javascript:jumpTo3(1);"><img
												src="images/BuySell02_button01.jpg" width="87" height="31"
												alt="发布房源" title="发布房源" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/goutong.jsp"
											onmouseover="javascript:jumpTo3(2);"><img
												src="images/BuySell02_button02.jpg" width="87" height="31"
												alt="沟通平台" title="沟通平台" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/bargain02.jsp"
											onmouseover="javascript:jumpTo3(3);"><img
												src="images/BuySell02_button03.jpg" width="87" height="31"
												alt="合同签署" title="合同签署" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/moneyManage02.jsp"
											onmouseover="javascript:jumpTo3(4);"><img
												src="images/BuySell02_button04.jpg" width="87" height="31"
												alt="资金监管" title="资金监管" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/danbao.jsp"
											onmouseover="javascript:jumpTo3(5);"><img
												src="images/BuySell02_button05.jpg" width="87" height="31"
												alt="担保赎楼" title="担保赎楼" /> </a>
									</li>
									<li class="BuySell_jiantou"></li>
									<li>
										<a href="../help/guohu.jsp"
											onmouseover="javascript:jumpTo3(6);"><img
												src="images/BuySell_button06.jpg" width="87" height="31"
												alt="过户抵押" title="过户抵押" /> </a>
									</li>
								</ul>
							</div>
						</div>

					</div>
					<div class="BuySell_right">
						<p>
							<a href="choosef3f.jsp"><img src="images/list01.jpg"
									width="205" height="31" alt="为什么要选择房上房？" title="为什么要选择房上房？" />
							</a>
						</p>
						<p>
							<a href="howto.jsp"><img src="images/list02.jpg" width="205"
									height="34" alt="如何发布商业招商，旺铺转让？" title="如何发布商业招商，旺铺转让？" /> </a>
						</p>
						<p>
							<a href="care.jsp"><img src="images/list03.jpg" width="205"
									height="34" alt="二手房交易注意事项！" title="二手房交易注意事项！" /> </a>
						</p>
					</div>
				</div>

				<div class="blank12"></div>

				<!-- col02 -->
				<div class="col02">

					<div id="part3">

						<div id="kbb_content1" style="display: block;">
							<div class="con">
								<div class="center">


									<!--  左侧滚动图片资讯 -->
									


									<div class="focusPic">
										<div id="focusPic1" style="display: block;">
											<div class="pic">
												<img src="newsImg/l1.jpg" alt="" border="0" height="200"
													width="274"/>
											</div>
											<div class="le02">
												<p class="font14">
													<a href="#" class="cOrange"><b>多省延迟优惠政策至明年</b>
													</a>
												</p>
												<p>
													对于是否调整，中央层面尚未定调...
													<a href="#" class="cOrange"><b>&nbsp;&nbsp;详细</b>

													</a>
												</p>
											</div>
										</div>

										<div id="focusPic2" style="display: none;">
											<div class="pic">
												<img src="newsImg/l2.jpg" alt="" border="0" height="200"
													width="274"/>
											</div>
											<div class="le02">
												<p class="font14">
													<a href="#" class="cOrange"><b>市场恢复助后市稳定 </b>
													</a>
												</p>
												<p>
													
													<a href="#" class="cOrange"><b>&nbsp;&nbsp;详细</b>
													</a>
												</p>
											</div>
										</div>

										<div id="focusPic3" style="display: none;">
											<div class="pic">
												<img src="newsImg/l3.jpg" alt="" border="0" height="200"
													width="274"/>
											</div>
											<div class="le02">
												<p class="font14">
													<a href="#" class="cOrange"><b>大型生活社区 ·配套完善</b>
													</a>
												</p>
												<p>
													推出全新洋房 VIP登记可享95折...
													<a href="#" class="cOrange"><b>&nbsp;&nbsp;详细</b>
													</a>
												</p>
											</div>
										</div>

										<div id="focusPic4" style="display: none;">
											<div class="pic">
												<img src="newsImg/l4.jpg" alt="" border="0" height="200"
													width="274"/>
											</div>
											<div class="le02">
												<p class="font14">
													<a href="#" class="cOrange"><b>经典配色 打造140平和谐家居</b>
													</a>
												</p>
												<p>
													附各大装修公司报价...
													<a href="#" class="cOrange"><b>&nbsp;&nbsp;详细</b>
													</a>
												</p>
											</div>
										</div>

										<!--图片对应下面的序号变改效果-->

										<div class="more">
											<div class="textNum">
												<div class="num bg1" id="focusPic1nav"
													style="display: block;">

													<ul>
														<li>1</li>
														<li>
															<a href="javascript:setFocus1(2);" target="_self">2</a>
														</li>
														<li>
															<a href="javascript:setFocus1(3);" target="_self">3</a>
														</li>
														<li>
															<a href="javascript:setFocus1(4);" target="_self">4</a>
														</li>
													</ul>
												</div>
												<div class="num bg2" id="focusPic2nav"
													style="display: none;">
													<ul>
														<li>
															<a href="javascript:setFocus1(1);" target="_self">1</a>
														</li>
														<li>
															2
														</li>
														<li>
															<a href="javascript:setFocus1(3);" target="_self">3</a>
														</li>
														<li>
															<a href="javascript:setFocus1(4);" target="_self">4</a>
														</li>
													</ul>
												</div>
												<div class="num bg3" id="focusPic3nav"
													style="display: none;">
													<ul>
														<li>
															<a href="javascript:setFocus1(1);" target="_self">1</a>
														</li>
														<li>
															<a href="javascript:setFocus1(2);" target="_self">2</a>
														</li>
														<li>
															3
														</li>
														<li>
															<a href="javascript:setFocus1(4);" target="_self">4</a>
														</li>
													</ul>
												</div>
												<div class="num bg4" id="focusPic4nav"
													style="display: none;">
													<ul>
														<li>
															<a href="javascript:setFocus1(1);" target="_self">1</a>
														</li>
														<li>
															<a href="javascript:setFocus1(2);" target="_self">2</a>
														</li>
														<li>
															<a href="javascript:setFocus1(3);" target="_self">3</a>
														</li>
														<li>
															4
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>





									<!-- 中间精品房源 -->
									<div class="cen">
										<ul>
											<li>
												<p>
													<a href="#" target="_blank"><img src="images/img01.jpg"
															width="70" height="55" border="0" alt="" title="" /> </a>
												</p>
												<h1>
													<a href="#" target="_blank">两居室</a>
												</h1>
												<span><a>广州市番禺区</a> </span>
											</li>

											<li>
												<p>
													<a href="#" target="_blank"><img src="images/img02.jpg"
															width="70" height="55" border="0" alt="" title="" /> </a>
												</p>
												<h1>
													<a href="#" target="_blank">三居室</a>
												</h1>
												<span><a>广州市越秀区</a> </span>
											</li>
											<li>
												<p>
													<a href="#" target="_blank"><img src="images/img03.jpg"
															width="70" height="55" border="0" alt="" title="" /> </a>
												</p>
												<h1>
													<a href="#" target="_blank">四居室</a>
												</h1>
												<span><a>广州市海珠区</a> </span>
											</li>
											<li>
												<p>
													<a href="#" target="_blank"><img src="images/img04.jpg"
															width="70" height="55" border="0" alt="" title="" /> </a>
												</p>
												<h1>
													<a href="#" target="_blank">复式别墅</a>
												</h1>
												<span><a>广州市白云区</a> </span>
											</li>

										</ul>
									</div>

									<!-- 中间最新地产资讯 -->
									<div class="rig">
										<div class="rig1">
											<div class="rig1_title">
												<span class="more"><a href="../Info/index.jsp">MORE</a> </span>最新地产资讯
											</div>
											
											
											 <div class="rig02" id="d1">
												<ul id="lili">
													<li >
														<span>
															<a href="../Info/show.jsp">广州雅缔轩装饰设计工程有限公司 </a>
															<p class="undis">
															详细地址: 中国·广东省·广州市环市东路500号...
														</p>
														</span>
														
													</li>
													<li>
														<span>
														<a href="" >广州艺居装饰有限公司</a>
														<p class="undis">
															详细地址: 中国·广东省·广州市环市东路500号...
														</p>
														</span>
														
													</li>
													<li>
														<span>
														<a href="">广州市月亮湾装饰设计有限公司</a>
														<p class="undis">
															详细地址: 中国·广东省·广州市环市东路500号...
														</p>
														</span>
														
													</li>
													<li>
														<span>
														<a href="">广州御匠装饰设计工程有限公司</a>
														<p class="undis">
															详细地址: 中国·广东省·广州市环市东路500号...
														</p>
														</span>
														
													</li>
													<li>
														<span>
														<a href="">广州市新博装饰有限公司</a>
														<p class="undis">
															详细地址: 中国·广东省·广州市环市东路500号...
														</p>
														</span>
														
													</li>
													<li>
														<span>
														<a href="">广州喜龙设计装饰有限公司</a>
														<p class="undis">
															详细地址: 中国·广东省·广州市环市东路500号...
														</p>
														</span>
														
													</li>
													<li>
														<span>
														<a href="">广州商度装饰设计有限公司</a>
														<p class="undis">
															详细地址: 中国·广东省·广州市环市东路500号...
														</p>
														</span>
														
													</li>
												</ul>
											</div>
											  
											  
											
										</div>

									</div>
								</div>
							</div>
						</div>



						<div class="blank12"></div>
						<div class="info_pic">
							<img src="images/info_pic2.jpg" width="670" height="86" alt=""
								title="" />
						</div>

					</div>

					<!-- right -->
					<div class="info">
						<div class="info_title">
							<span class="float_right"><a href="../rent/index.jsp"
								class="cYellow">[信息分类]</a> </span><span class="font14"><b>商业招商、旺铺转让</b>
							</span>
						</div>
						<div class="info_content">


							<div class="info_content_show" id="e1" style="display: block">
								<ul id="lili2">
									
									<li >
											<!--  
											<span class="float_right cGray02">1分钟前</span>
											-->
											<div id="p1">
										<p><img src="images/sound_note.gif" width="16" height="16" align="absmiddle" />
										<a href="">花都手袋厂转让</a></p>
										<p class="undis"><span>该厂房位于花都区狮岭镇振兴工业区....<a href="../rent/show.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a></span>
										</p>
											</div>
									</li>
							
									
									
									<li >
											<!--  
											<span class="float_right cGray02">1分钟前</span>
											-->
											<div id="p1">
										<p><img src="images/sound_note.gif" width="16" height="16" align="absmiddle" />
										<a href="">白云区太和镇厂房出租</a></p>
										<p class="undis"><span>本厂房位于白云区太和镇草庄南路,全新独院厂房...<a href="../rent/show.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a></span>
										</p>
										</div>
									</li>
									
									
									<li >
											<!--  
											<span class="float_right cGray02">1分钟前</span>
											-->
											<div id="p1">
										<p><img src="images/sound_note.gif" width="16" height="16" align="absmiddle" />
										<a href="">白云区太和镇厂房出租2</a></p>
										<p class="undis"><span>本厂房位于白云区太和镇草庄南路,全新独院厂房22...<a href="../rent/show.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a></span>
										</p>
										</div>
									</li>
									
									<li >
											<!--  
											<span class="float_right cGray02">1分钟前</span>
											-->
											<div id="p1">
										<p><img src="images/sound_note.gif" width="16" height="16" align="absmiddle" />
										<a href="">白云区太和镇厂房出租3</a></p>
										<p class="undis"><span>本厂房位于白云区太和镇草庄南路,全新独院厂房33...<a href="../rent/show.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a></span>
										</p>
										</div>
									</li>
									
									<li >
											<!--  
											<span class="float_right cGray02">1分钟前</span>
											-->
											<div id="p1">
										<p><img src="images/sound_note.gif" width="16" height="16" align="absmiddle" />
										<a href="">白云区太和镇厂房出租4</a></p>
										<p class="undis"><span>本厂房位于白云区太和镇草庄南路,全新独院厂房.44..<a href="../rent/show.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a></span>
										</p>
										</div>
									</li>
									
									
									
									<li >
											<!--  
											<span class="float_right cGray02">1分钟前</span>
											-->
											<div id="p1">
										<p><img src="images/sound_note.gif" width="16" height="16" align="absmiddle" />
										<a href="">白云区太和镇厂房出租5</a></p>
										<p class="undis"><span>本厂房位于白云区太和镇草庄南路,全新独院厂房55...<a href="../rent/show.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a></span>
										</p>
										</div>
									</li>
									
									<li >
											<!--  
											<span class="float_right cGray02">1分钟前</span>
											-->
											<div id="p1">
										<p><img src="images/sound_note.gif" width="16" height="16" align="absmiddle" />
										<a href="">白云区太和镇厂房出租6</a></p>
										<p class="undis"><span>本厂房位于白云区太和镇草庄南路,全新独院厂房6...<a href="../rent/show.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a></span>
										</p>
										</div>
									</li>
									
									<li >
											<!--  
											<span class="float_right cGray02">1分钟前</span>
											-->
											<div id="p1">
										<p><img src="images/sound_note.gif" width="16" height="16" align="absmiddle" />
										<a href="">白云区太和镇厂房出租7</a></p>
										<p class="undis"><span>本厂房位于白云区太和镇草庄南路,全新独院厂房7...<a href="../rent/show.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a></span>
										</p>
										</div>
									</li>
									
									<li >
											<!--  
											<span class="float_right cGray02">1分钟前</span>
											-->
											<div id="p1">
										<p><img src="images/sound_note.gif" width="16" height="16" align="absmiddle" />
										<a href="">白云区太和镇厂房出租8</a></p>
										<p class="undis"><span>本厂房位于白云区太和镇草庄南路,全新独院厂房8...<a href="../rent/show.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a></span>
										</p>
										</div>
									</li>
									
									
									
								
									
								</ul>
							</div>
							
					<!--  

							<div class="info_content_show" id="e2" style="display: none">
								<ul>
									<li>
										<span class="float_right cGray02">1分钟前</span>
										<img src="images/02.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(1);" onmouseover="javascript:jumpTo5(1);">花都手袋厂转让</a>
									</li>
									<li>
										<div class="info_more">
											<a href="../rent/index.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a>
										</div>
										<p>
											<img src="images/01.jpg" width="11" height="11"
												align="absmiddle" />
											<a href="../rent/index.jsp" class="cRed"><b>白云区太和镇厂房出租</b>
											</a>
										</p>
										<p class="indent">
											<span class="cGray">本厂房位于白云区太和镇草庄南路,全新独院厂房...</span>
										</p>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(3);" onmouseover="javascript:jumpTo5(3);">番禺南山工业区厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">3分钟前</span>
										<img src="images/04.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(4);" onmouseover="javascript:jumpTo5(4);">广州白云区全新厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">1个小时前</span>
										<img src="images/05.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(5);" onmouseover="javascript:jumpTo5(5);">广州制衣厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">25分钟前</span>
										<img src="images/06.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(6);" onmouseover="javascript:jumpTo5(6);">天河区棠下大地工业区厂</a>
									</li>
									<li>
										<span class="float_right cGray02">2个小时前</span>
										<img src="images/07.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(7);" onmouseover="javascript:jumpTo5(7);">天河区汽修厂招租或转让</a>
									</li>
									<li>
										<span class="float_right cGray02">14分钟前</span>
										<img src="images/08.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(8);" onmouseover="javascript:jumpTo5(8);">海珠区新港中路制衣厂转</a>
									</li>
									<li>
										<span class="float_right cGray02">4分钟前</span>
										<img src="images/09.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(9);" onmouseover="javascript:jumpTo5(9);">珠江新城临江大道综合楼招租</a>
									</li>
									<li>
										<span class="float_right cGray02">35分钟前</span>
										<img src="images/10.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(10);" onmouseover="javascript:jumpTo5(10);">广州白云区汽修厂转让</a>
									</li>
								</ul>
							</div>

							<div class="info_content_show" id="e3" style="display: none">
								<ul>
									<li>
										<span class="float_right cGray02">1分钟前</span>
										<img src="images/02.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(1);" onmouseover="javascript:jumpTo5(1);">花都手袋厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(2);" onmouseover="javascript:jumpTo5(2);">白云区太和镇厂房出租</a>
									</li>
									<li>
										<div class="info_more">
											<a href="../rent/index.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a>
										</div>
										<p>
											<img src="images/01.jpg" width="11" height="11"
												align="absmiddle" />
											<a href="../rent/index.jsp" class="cRed"><b>番禺南山工业区厂房出租</b>
											</a>
										</p>
										<p class="indent">
											<span class="cGray">位于广州番禺沙头街南双玉村南山工业区7号标准厂房转租....</span>
										</p>
									</li>
									<li>
										<span class="float_right cGray02">3分钟前</span>
										<img src="images/04.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(4);" onmouseover="javascript:jumpTo5(4);">广州白云区全新厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">1个小时前</span>
										<img src="images/05.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(5);" onmouseover="javascript:jumpTo5(5);">广州制衣厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">25分钟前</span>
										<img src="images/06.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(6);" onmouseover="javascript:jumpTo5(6);">天河区棠下大地工业区厂</a>
									</li>
									<li>
										<span class="float_right cGray02">2个小时前</span>
										<img src="images/07.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(7);" onmouseover="javascript:jumpTo5(7);">天河区汽修厂招租或转让</a>
									</li>
									<li>
										<span class="float_right cGray02">14分钟前</span>
										<img src="images/08.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(8);" onmouseover="javascript:jumpTo5(8);">海珠区新港中路制衣厂转</a>
									</li>
									<li>
										<span class="float_right cGray02">4分钟前</span>
										<img src="images/09.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(9);" onmouseover="javascript:jumpTo5(9);">珠江新城临江大道综合楼招租</a>
									</li>
									<li>
										<span class="float_right cGray02">35分钟前</span>
										<img src="images/10.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(10);" onmouseover="javascript:jumpTo5(10);">广州白云区汽修厂转让</a>
									</li>
								</ul>
							</div>

							<div class="info_content_show" id="e4" style="display: none">
								<ul>
									<li>
										<span class="float_right cGray02">1分钟前</span>
										<img src="images/02.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(1);" onmouseover="javascript:jumpTo5(1);">花都手袋厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(2);" onmouseover="javascript:jumpTo5(2);">白云区太和镇厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(3);" onmouseover="javascript:jumpTo5(3);">番禺南山工业区厂房出租</a>
									</li>
									<li>
										<div class="info_more">
											<a href="../rent/index.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a>
										</div>
										<p>
											<img src="images/01.jpg" width="11" height="11"
												align="absmiddle" />
											<a href="../rent/index.jsp" class="cRed"><b>广州白云区全新厂房出租</b>
											</a>
										</p>
										<p class="indent">
											<span class="cGray">该厂房位于花都区狮岭镇振兴工业区....</span>
										</p>
									</li>
									<li>
										<span class="float_right cGray02">1个小时前</span>
										<img src="images/05.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(5);" onmouseover="javascript:jumpTo5(5);">广州制衣厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">25分钟前</span>
										<img src="images/06.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(6);" onmouseover="javascript:jumpTo5(6);">天河区棠下大地工业区厂</a>
									</li>
									<li>
										<span class="float_right cGray02">2个小时前</span>
										<img src="images/07.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(7);" onmouseover="javascript:jumpTo5(7);">天河区汽修厂招租或转让</a>
									</li>
									<li>
										<span class="float_right cGray02">14分钟前</span>
										<img src="images/08.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(8);" onmouseover="javascript:jumpTo5(8);">海珠区新港中路制衣厂转</a>
									</li>
									<li>
										<span class="float_right cGray02">4分钟前</span>
										<img src="images/09.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(9);" onmouseover="javascript:jumpTo5(9);">珠江新城临江大道综合楼招租</a>
									</li>
									<li>
										<span class="float_right cGray02">35分钟前</span>
										<img src="images/10.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(10);" onmouseover="javascript:jumpTo5(10);">广州白云区汽修厂转让</a>
									</li>
								</ul>
							</div>

							<div class="info_content_show" id="e5" style="display: none">
								<ul>
									<li>
										<span class="float_right cGray02">1分钟前</span>
										<img src="images/02.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(1);" onmouseover="javascript:jumpTo5(1);">花都手袋厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(2);" onmouseover="javascript:jumpTo5(2);">白云区太和镇厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(3);" onmouseover="javascript:jumpTo5(3);">番禺南山工业区厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">3分钟前</span>
										<img src="images/04.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(4);" onmouseover="javascript:jumpTo5(4);">广州白云区全新厂房出租</a>
									</li>
									<li>
										<div class="info_more">
											<a href="../rent/index.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a>
										</div>
										<p>
											<img src="images/01.jpg" width="11" height="11"
												align="absmiddle" />
											<a href="../rent/index.jsp" class="cRed"><b>广州制衣厂转让</b> </a>
										</p>
										<p class="indent">
											<span class="cGray">位于海珠区瑞宝二社二楼黄金地段,毗邻中大布匹市场...</span>
										</p>
									</li>
									<li>
										<span class="float_right cGray02">25分钟前</span>
										<img src="images/06.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(6);" onmouseover="javascript:jumpTo5(6);">天河区棠下大地工业区厂</a>
									</li>
									<li>
										<span class="float_right cGray02">2个小时前</span>
										<img src="images/07.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(7);" onmouseover="javascript:jumpTo5(7);">天河区汽修厂招租或转让</a>
									</li>
									<li>
										<span class="float_right cGray02">14分钟前</span>
										<img src="images/08.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(8);" onmouseover="javascript:jumpTo5(8);">海珠区新港中路制衣厂转</a>
									</li>
									<li>
										<span class="float_right cGray02">4分钟前</span>
										<img src="images/09.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(9);" onmouseover="javascript:jumpTo5(9);">珠江新城临江大道综合楼招租</a>
									</li>
									<li>
										<span class="float_right cGray02">35分钟前</span>
										<img src="images/10.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(10);" onmouseover="javascript:jumpTo5(10);">广州白云区汽修厂转让</a>
									</li>
								</ul>
							</div>

							<div class="info_content_show" id="e6" style="display: none">
								<ul>
									<li>
										<span class="float_right cGray02">1分钟前</span>
										<img src="images/02.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(1);" onmouseover="javascript:jumpTo5(1);">花都手袋厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(2);" onmouseover="javascript:jumpTo5(2);">白云区太和镇厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(3);" onmouseover="javascript:jumpTo5(3);">番禺南山工业区厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">3分钟前</span>
										<img src="images/04.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(4);" onmouseover="javascript:jumpTo5(4);">广州白云区全新厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">1个小时前</span>
										<img src="images/05.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(5);" onmouseover="javascript:jumpTo5(5);">广州制衣厂转让</a>
									</li>
									<li>
										<div class="info_more">
											<a href="../rent/index.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a>
										</div>
										<p>
											<img src="images/01.jpg" width="11" height="11"
												align="absmiddle" />
											<a href="../rent/index.jsp" class="cRed"><b>天河区棠下大地工业区厂</b>
											</a>
										</p>
										<p class="indent">
											<span class="cGray">广东省天河区棠下涌东路大地工业区C栋5楼....</span>
										</p>
									</li>
									<li>
										<span class="float_right cGray02">2个小时前</span>
										<img src="images/07.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(7);" onmouseover="javascript:jumpTo5(7);">天河区汽修厂招租或转让</a>
									</li>
									<li>
										<span class="float_right cGray02">14分钟前</span>
										<img src="images/08.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(8);" onmouseover="javascript:jumpTo5(8);">海珠区新港中路制衣厂转</a>
									</li>
									<li>
										<span class="float_right cGray02">4分钟前</span>
										<img src="images/09.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(9);" onmouseover="javascript:jumpTo5(9);">珠江新城临江大道综合楼招租</a>
									</li>
									<li>
										<span class="float_right cGray02">35分钟前</span>
										<img src="images/10.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(10);" onmouseover="javascript:jumpTo5(10);">广州白云区汽修厂转让</a>
									</li>
								</ul>
							</div>

							<div class="info_content_show" id="e7" style="display: none">
								<ul>
									<li>
										<span class="float_right cGray02">1分钟前</span>
										<img src="images/02.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(1);" onmouseover="javascript:jumpTo5(1);">花都手袋厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(2);" onmouseover="javascript:jumpTo5(2);">白云区太和镇厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(3);" onmouseover="javascript:jumpTo5(3);">番禺南山工业区厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">3分钟前</span>
										<img src="images/04.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(4);" onmouseover="javascript:jumpTo5(4);">广州白云区全新厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">1个小时前</span>
										<img src="images/05.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(5);" onmouseover="javascript:jumpTo5(5);">广州制衣厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">25分钟前</span>
										<img src="images/06.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(6);" onmouseover="javascript:jumpTo5(6);">天河区棠下大地工业区厂</a>
									</li>
									<li>
										<div class="info_more">
											<a href="../rent/index.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a>
										</div>
										<p>
											<img src="images/01.jpg" width="11" height="11"
												align="absmiddle" />
											<a href="../rent/index.jsp" class="cRed"><b>天河区汽修厂招租或转让</b>
											</a>
										</p>
										<p class="indent">
											<span class="cGray">本店位于天河区,天平架沙太南路,橡树园小区对面....</span>
										</p>
									</li>
									<li>
										<span class="float_right cGray02">14分钟前</span>
										<img src="images/08.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(8);" onmouseover="javascript:jumpTo5(8);">海珠区新港中路制衣厂转</a>
									</li>
									<li>
										<span class="float_right cGray02">4分钟前</span>
										<img src="images/09.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(9);" onmouseover="javascript:jumpTo5(9);">珠江新城临江大道综合楼招租</a>
									</li>
									<li>
										<span class="float_right cGray02">35分钟前</span>
										<img src="images/10.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(10);" onmouseover="javascript:jumpTo5(10);">广州白云区汽修厂转让</a>
									</li>
								</ul>
							</div>

							<div class="info_content_show" id="e8" style="display: none">
								<ul>
									<li>
										<span class="float_right cGray02">1分钟前</span>
										<img src="images/02.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(1);" onmouseover="javascript:jumpTo5(1);">花都手袋厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(2);" onmouseover="javascript:jumpTo5(2);">白云区太和镇厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(3);" onmouseover="javascript:jumpTo5(3);">番禺南山工业区厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">3分钟前</span>
										<img src="images/04.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(4);" onmouseover="javascript:jumpTo5(4);">广州白云区全新厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">1个小时前</span>
										<img src="images/05.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(5);" onmouseover="javascript:jumpTo5(5);">广州制衣厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">25分钟前</span>
										<img src="images/06.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(6);" onmouseover="javascript:jumpTo5(6);">天河区棠下大地工业区厂</a>
									</li>
									<li>
										<span class="float_right cGray02">2个小时前</span>
										<img src="images/07.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(7);" onmouseover="javascript:jumpTo5(7);">天河区汽修厂招租或转让</a>
									</li>
									<li>
										<div class="info_more">
											<a href="../rent/index.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a>
										</div>
										<p>
											<img src="images/01.jpg" width="11" height="11"
												align="absmiddle" />
											<a href="../rent/index.jsp" class="cRed"><b>海珠区新港中路制衣厂转</b>
											</a>
										</p>
										<p class="indent">
											<span class="cGray">位于海珠区新港中路制衣厂转让....</span>
										</p>
									</li>
									<li>
										<span class="float_right cGray02">4分钟前</span>
										<img src="images/09.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(9);" onmouseover="javascript:jumpTo5(9);">珠江新城临江大道综合楼招租</a>
									</li>
									<li>
										<span class="float_right cGray02">35分钟前</span>
										<img src="images/10.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(10);" onmouseover="javascript:jumpTo5(10);">广州白云区汽修厂转让</a>
									</li>
								</ul>
							</div>

							<div class="info_content_show" id="e9" style="display: none">
								<ul>
									<li>
										<span class="float_right cGray02">1分钟前</span>
										<img src="images/02.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(1);" onmouseover="javascript:jumpTo5(1);">花都手袋厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(2);" onmouseover="javascript:jumpTo5(2);">白云区太和镇厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(3);" onmouseover="javascript:jumpTo5(3);">番禺南山工业区厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">3分钟前</span>
										<img src="images/04.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(4);" onmouseover="javascript:jumpTo5(4);">广州白云区全新厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">1个小时前</span>
										<img src="images/05.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(5);" onmouseover="javascript:jumpTo5(5);">广州制衣厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">25分钟前</span>
										<img src="images/06.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(6);" onmouseover="javascript:jumpTo5(6);">天河区棠下大地工业区厂</a>
									</li>
									<li>
										<span class="float_right cGray02">2个小时前</span>
										<img src="images/07.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(7);" onmouseover="javascript:jumpTo5(7);">天河区汽修厂招租或转让</a>
									</li>
									<li>
										<span class="float_right cGray02">14分钟前</span>
										<img src="images/08.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(8);" onmouseover="javascript:jumpTo5(8);">海珠区新港中路制衣厂转</a>
									</li>
									<li>
										<div class="info_more">
											<a href="../rent/index.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a>
										</div>
										<p>
											<img src="images/01.jpg" width="11" height="11"
												align="absmiddle" />
											<a href="../rent/index.jsp" class="cRed"><b>珠江新城临江大道综合楼招租</b>
											</a>
										</p>
										<p class="indent">
											<span class="cGray">位于天河区临江大道综合楼、健身、厂房、仓库招租....</span>
										</p>
									</li>
									<li>
										<span class="float_right cGray02">35分钟前</span>
										<img src="images/10.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(10);" onmouseover="javascript:jumpTo5(10);">广州白云区汽修厂转让</a>
									</li>
								</ul>
							</div>

							<div class="info_content_show" id="e10" style="display: none">
								<ul>
									<li>
										<span class="float_right cGray02">1分钟前</span>
										<img src="images/02.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(1);" onmouseover="javascript:jumpTo5(1);">花都手袋厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(2);" onmouseover="javascript:jumpTo5(2);">白云区太和镇厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">半个小时前</span>
										<img src="images/03.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(3);" onmouseover="javascript:jumpTo5(3);">番禺南山工业区厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">3分钟前</span>
										<img src="images/04.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(4);" onmouseover="javascript:jumpTo5(4);">广州白云区全新厂房出租</a>
									</li>
									<li>
										<span class="float_right cGray02">1个小时前</span>
										<img src="images/05.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(5);" onmouseover="javascript:jumpTo5(5);">广州制衣厂转让</a>
									</li>
									<li>
										<span class="float_right cGray02">25分钟前</span>
										<img src="images/06.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(6);" onmouseover="javascript:jumpTo5(6);">天河区棠下大地工业区厂</a>
									</li>
									<li>
										<span class="float_right cGray02">2个小时前</span>
										<img src="images/07.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(7);" onmouseover="javascript:jumpTo5(7);">天河区汽修厂招租或转让</a>
									</li>
									<li>
										<span class="float_right cGray02">14分钟前</span>
										<img src="images/08.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(8);" onmouseover="javascript:jumpTo5(8);">海珠区新港中路制衣厂转</a>
									</li>
									<li>
										<span class="float_right cGray02">4分钟前</span>
										<img src="images/09.jpg" width="11" height="11"
											align="absmiddle" />
										<a href="jumpTo5(9);" onmouseover="javascript:jumpTo5(9);">珠江新城临江大道综合楼招租</a>
									</li>
									<li>
										<div class="info_more">
											<a href="../rent/index.jsp"><img
													src="images/info_more.jpg" width="32" height="19"
													alt="more" title="more" /> </a>
										</div>
										<p>
											<img src="images/01.jpg" width="11" height="11"
												align="absmiddle" />
											<a href="../rent/index.jsp" class="cRed"><b>广州白云区汽修厂转让</b>
											</a>
										</p>
										<p class="indent">
											<span class="cGray">位于白云大道,营业中汽车修理厂厂房(租期7年)及设备转让....</span>
										</p>
									</li>
								</ul>
							</div>
-->

</div>

				

							<div class="info_fun">
							<!--  
								<span ><a
									href="../rent/index.jsp">更多...</a> </span>
									-->
									<a href="">
								<button id="Jbutton">
										我想发布商业招商、转让！
									</button> </a>
							</div>
							
							
							 <!-- 发布商铺弹出窗口 -->
         
        
         <div id="popupContact">
		<a id="popupContactClose" href="#">x</a>
		<h1>发布旺铺信息</h1>
		
		
		<form name="form1" id="contactArea">


<table width="100%" height="28" border="0" align="left" cellspacing="0" bordercolor="#ffffff" bordercolorlight="#c3c3c3" bgcolor="#FFFFFF">
	
	<tr>
		<TD style="text-align:right">选择类型：</td>
		<td align="left">
		<select ><option>出租</option><option>求租</option>
					<option>转让</option>
				</select>&nbsp;
				<select ><option>商铺</option><option>厂房</option>
					<option>酒楼</option><option>写字楼</option><option>美容</option>
				</select>
				
				</td>
	</tr>
	<tr height="32" class="boxTop">
		<td  width="50%" style="text-align:right"><span class="label">标题：</span></td>
		<td align="left" width="170"><input type="text" name="rentInfoTitle" value="" class="textfule"></td>
		
	</tr>
	<tr height="32" >
		<td style="text-align:right"><span class="label">内容：</span></td>
		<td align="left" width="280"><textarea name="Inputcontent" class="textfule" cols="32" rows="4"></textarea>
	
		<font color="#999999">[可对商铺详细描述，请控制在128个字以内]</font>
		</td>
	</tr>
	<tr height="32" >
		<td  style="text-align:right"><span class="label">区域：</span></td>
		<td align="left" width="170">
			<!-- 区 -->
			<select ><option>番禺区</option><option>天河区</option>
					<option>荔湾区</option><option>海珠区</option><option>白云区</option>
			</select>&nbsp;
			<!-- 商圈 -->
			<select ><option>市桥</option><option>祈福</option>
					<option>洛溪</option><option>南区</option>
			</select>
		</td>
	</tr>
	<tr height="32" >
		<td style="text-align:right"><span class="label">地址：</span></td>
		<td align="left" width="170"><input type="text" name="rentInfoTitle" value="" class="textfule" size="35"></td>
	</tr>
	
		
	<tr height="32" >
		<td  style="text-align:right"><span class="label">联系人名称：</span></td>
		<td align="left" width="170"><input type="text" name="contactPerson" value="" class="textfule"></td>
	</tr>
	<tr height="32" >
		<td  style="text-align:right"><span class="label">联系电话：</span></td>
		<td align="left" width="170"><input type="text" name="phone" value="" class="textfule"></td>
	</tr>


	<tr>
		<td align="center" colspan="2" height="44">&nbsp;<input type="button" name="save" value="保存" class="button1" onclick="add()"/>
		　　<input type="reset" name="col" value="重填" class="button1"/></td>
	</tr>


           </table>
       </form>
	</div>
	</div>
         
          <!-- 弹出窗口end -->
						</div>
					

				<div class="blank12"></div>
				<!-- col03 -->
				<!-- search -->
				<%@ include file="../CommonPage/Search.jsp"%>		 
				

			</div>

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- col04 -->
			<div class="col04">
				<div class="trade_title">
					<div class="nav03_content">
						<div class="tap02_more">
							<a href="../freetrade/index.jsp" class="cWhite">[进入频道]</a>
						</div>
						<div class="tap02_title">
							<img src="images/trade_title01.jpg" width="156" height="15"
								alt="自由交易区" title="自由交易区" />
						</div>
						<div id="FreeTrading" class="tap02">
							<div id="aboutnav0211" class="active02">
								<a class="tab1" href="#">出售</a>
							</div>
							<div id="aboutnav0212">
								<a class="tab2" href="#">出租</a>
							</div>
							<div id="aboutnav0213">
								<a class="tab3" href="#">求购</a>
							</div>
							<div id="aboutnav0214">
								<a class="tab4" href="#">求租</a>
							</div>
						</div>
					</div>
				</div>

				<div class="clear"></div>
				<div class="trade_content">
					<div class="list02" id="about0211" style="display: block;">
						<div class="trade_table_more">
							<a href="../freetrade/index.jsp" class="cOrange">更多...</a>
						</div>
						<table id="FreeTradingTable" border="0" cellpadding="0"
							cellspacing="0" class="trade_table">
						</table>
					</div>
				</div>

			</div>

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- col05 -->
			<div class="col05">
				<table>
					<tbody>
						<tr>
							<td>
								<div id=scroll_div>
									<table>
										<tbody>
											<tr>
												<td id=scroll_div1 valign=top>
													<table border=0>
														<tbody>
															<tr>
																<td>
																	<p>
																		<img src="images/p01.jpg" width="131" height="86"
																			alt="" title="雅居乐" />
																	</p>
																	<p>
																		<a href="#" class="cRed02"><u>雅居乐</u> </a>&nbsp;
																		<a href="#" class="cRed02"><u>业主论坛</u> </a>
																	</p>
																	<p>
																		<span class="cRed02">2008.12.12</span>&nbsp;&nbsp;
																		<span class="cRed02">16000元</span>
																	</p>
																</td>
																<td>
																	<p>
																		<img src="images/p02.jpg" width="131" height="86"
																			alt="" title="富庭华园" />
																	</p>
																	<p>
																		<a href="#" class="cRed02"><u>富庭华园</u> </a>&nbsp;
																		<a href="#" class="cRed02"><u>业主论坛</u> </a>
																	</p>
																	<p>
																		<span class="cRed02">2008.12.12</span>&nbsp;&nbsp;
																		<span class="cRed02">16000元</span>
																	</p>
																</td>
																<td>
																	<p>
																		<img src="images/p03.jpg" width="131" height="86"
																			alt="" title="绿庭雅苑" />
																	</p>
																	<p>
																		<a href="#" class="cRed02"><u>绿庭雅苑</u> </a>&nbsp;
																		<a href="#" class="cRed02"><u>业主论坛</u> </a>
																	</p>
																	<p>
																		<span class="cRed02">2008.12.12</span>&nbsp;&nbsp;
																		<span class="cRed02">16000元</span>
																	</p>
																</td>
																<td>
																	<p>
																		<img src="images/p04.jpg" width="131" height="86"
																			alt="" title="金泰先锋" />
																	</p>
																	<p>
																		<a href="#" class="cRed02"><u>金泰先锋</u> </a>&nbsp;
																		<a href="#" class="cRed02"><u>业主论坛</u> </a>
																	</p>
																	<p>
																		<span class="cRed02">2008.12.12</span>&nbsp;&nbsp;
																		<span class="cRed02">16000元</span>
																	</p>
																</td>
																<td>
																	<p>
																		<img src="images/p05.jpg" width="131" height="86"
																			alt="" title="丽江花园" />
																	</p>
																	<p>
																		<a href="#" class="cRed02"><u>丽江花园</u> </a>&nbsp;
																		<a href="#" class="cRed02"><u>业主论坛</u> </a>
																	</p>
																	<p>
																		<span class="cRed02">2008.12.12</span>&nbsp;&nbsp;
																		<span class="cRed02">16000元</span>
																	</p>
																</td>
																<td>
																	<p>
																		<img src="images/p06.jpg" width="131" height="86"
																			alt="" title="丽江花园" />
																	</p>
																	<p>
																		<a href="#" class="cRed02"><u>丽江花园</u> </a>&nbsp;
																		<a href="#" class="cRed02"><u>业主论坛</u> </a>
																	</p>
																	<p>
																		<span class="cRed02">2008.12.12</span>&nbsp;&nbsp;
																		<span class="cRed02">16000元</span>
																	</p>
																</td>
																<td>
																	<p>
																		<img src="images/p07.jpg" width="131" height="86"
																			alt="" title="富庭华园" />
																	</p>
																	<p>
																		<a href="#" class="cRed02"><u>富庭华园</u> </a>
																		<a href="#" class="cRed02"><u>业主论坛</u> </a>
																	</p>
																	<p>
																		<span class="cRed02">2008.12.12</span>&nbsp;&nbsp;
																		<span class="cRed02">16000元</span>
																	</p>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
												<td id=scroll_div2 valign=top></td>
											</tr>
										</tbody>
										<script src="js/scrollDiv.js"></script>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- col06 -->
			<div class="col06">
				<div class="trade_title">
					<div class="nav03_content">
						<div class="tap02_more">
							<a href="../entrustTrade/index.jsp" class="cWhite">[进入频道]</a>
						</div>
						<div class="tap02_title">
							<img src="images/trade_title02.jpg" width="203" height="15"
								alt="委托交易区" title="委托交易区" />
						</div>
						<div id="TradingCommission" class="tap02">
							<div id="aboutnav0311" class="active02">
								<a class="tab1" href="#">出售</a>
							</div>
							<div id="aboutnav0312">
								<a class="tab2" href="#">出租</a>
							</div>
							<div id="aboutnav0313">
								<a class="tab3" href="#">求购</a>
							</div>
							<div id="aboutnav0314">
								<a class="tab4" href="#">求租</a>
							</div>

						</div>
					</div>
				</div>

				<div class="clear"></div>
				<div class="trade_content">
					<div class="list02" id="about0311" style="display: block;">
						<div class="trade_table_more">
							<a href="../entrustTrade/index.jsp" class="cOrange">更多...</a>
						</div>
						<table id="TradingCommissionTable" border="0" cellpadding="0"
							cellspacing="0" class="trade_table">
						</table>
					</div>
				</div>

			</div>



			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- foot -->
			<%@ include file="../CommonPage/Foot.jsp"%>

		</div>
	</body>
</html>



