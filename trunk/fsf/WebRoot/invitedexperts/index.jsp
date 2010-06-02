<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../CommonPage/Session.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>邀请专家</title>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="../rent/js/jquery-1.3.1.js" type="text/javascript"></script>
		<script src="js/index.js" type="text/javascript"></script>
		<script src="../rent/js/popup.js" type="text/javascript"></script>
		<link rel="stylesheet" href="css/general.css" type="text/css" media="screen" />
		<script language="javascript" src="js/dialog.js" ></script>
<link href="css/dialog.css" rel="stylesheet" type="text/css" />
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
								<a href="../main/index.jsp"><span>首页</span>
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
							<li><a href="../rent/index.jsp"><span>旺铺招租</span></a></li> 
                  			<li class="menuHere"><a href="index.jsp"><span>专家顾问</span></a></li>
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

			<!-- content -->
			<div class="content">
				<div class="info_img">
				<!-- 
					<img src="images/info_img01.jpg" width="940" height="90" alt=""
						title="" />
						-->
						<embed id="TL01_SWF" height="110" align="middle" width="940" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="opaque" quality="high" src="images/ad-flash-ex.swf"/>

						
						
						
				</div>
				<div class="map">
					<span>您现在的位置：<a href="#">邀请专家</a>--><a href="#">广州地区</a>
					</span>
				</div>
				<div class="maplist">
					<b>区域列表:</b>
					<div class="UlList">
					
						<ul>
							<li>
								<a href="#"><span>东山区专家(54)</span>
								</a>
							</li>
							<li>
								<a href="#"><span>天河区专家(137)</span>
								</a>
							</li>
							<li>
								<a href="#"><span>越秀区专家(24)</span>
								</a>
							</li>
							<li>
								<a href="#"><span>荔湾区专家(34)</span>
								</a>
							</li>
							<li>
								<a href="#"><span>海珠区专家(126)</span>
								</a>
							</li>
						</ul>
						<br/><br/>
						<ul>
							<li>
								<a href="#"><span>番禺区专家(31)</span>
								</a>
							</li>
							<li>
								<a href="#"><span>白云区专家(87)</span>
								</a>
							</li>
							<li>
								<a href="#"><span>芳村区专家(62)</span>
								</a>
							</li>
							<li>
								<a href="#"><span>黄埔区专家(64)</span>
								</a>
							</li>
							<li>
								<a href="#"><span>增城区专家(126)</span>
								</a>
							</li>
						</ul>

					</div>


				</div>
				<div class="expert">
					<div class="expertTop">
						<div class="expertTopL"></div>
						<div class="expertNav">
							<span><b>专家 Experts </b>
							<label>【顾问&nbsp;<a href="#" onClick="loginBox()">登陆</a>·<a href="reg.jsp">注册</a>】</label>
							
							</span>
							
						</div>
						<div class="expertTopR"></div>
					</div>
					<!--expertDetails-->
					<div class="expertDetails">
						<div class="picture"><img src="images/p.gif" width="116px"/></div>
						<div class="details">
							<ul>
								<li class="expertName">
									<a href="ExpertsHouse.jsp" >梁秋华</a> <img src="images/blue_1.gif" /><img src="images/blue_1.gif" />　　
									<img src="images/email.png" alt="给我发E-mail"/>&nbsp;<img src="images/qq.gif" alt="在线联系我"/>
									<a href="ExpertsHouse.jsp"><img src="images/house.gif" alt="进入我的空间" /></a>
									<BR/>
									<li>
									<img src="images/phone.gif" alt="联系电话" />
									<span>13672469083</span>
									<br/>
								</li>
								<li>
									所属公司：心安置业
								</li>
								<li>
								负责区域：番禺南郊
								</li>
								<li>
									〖多年从事房地产中介工作，作为一名资深的房产经纪人，以热情、诚恳的态度服务每一位客户!〗
								</li>
							
								
								
							</ul>
						</div>
						
						<div class="BuddingLi">
							<ul><br/>
								<li>
									<span>附室内彩图 带有大露台，豪华气派三层复式</span>
									<p>
										天河区 东方之珠花园 6房2厅 256㎡ 230万 05-21
									</p>
								</li>
								<li>
									<span>商业旺区地下车位放售，欢迎来电！</span>
									<p>
										天河区 海逸阁 1房 12㎡ 26万 06-21
									</p>
								</li>
								<li>
									<span>东南靓向，间隔方正，实用两房一厅</span>
									<p>
										天河区 世纪花都 2房1厅 76㎡ 90万 06-21
									</p>
								</li>

							</ul>
						</div>

					</div>
					<!--expertDetails1-->
					<div class="expertDetails1">

						
						<div class="picture"><img src="images/p1.gif" width="116px"/></div>
						<div class="details1">
														
							<ul>
								<li class="expertName">
									谢均明 <img src="images/blue_1.gif" /><img src="images/blue_1.gif" />　　
									<img src="images/email.png" alt="给我发E-mail"/>&nbsp;<img src="images/qq.gif" alt="在线联系我"/>
									<a href="ExpertsHouse.jsp"><img src="images/house.gif" alt="进入我的空间" /></a>
									<BR/>
									<li>
									<img src="images/phone.gif" alt="联系电话" />
									<span>13928861187</span>
									<br/>
								</li>
								<li>
									所属公司：心安置业
								</li>
								<li>
								负责区域：番禺南郊
								</li>
								<li>
									〖五年来致力于房地产工作，经过多年的奋斗，现为一名出色的房地产经纪人，其崇高的职业素质，得到了客户的充分肯定！〗
								</li>
							
								
								
							</ul>
						</div>
						
						<div class="BuddingLi">
							<ul>
								<li>
									<span>附室内彩图 带有大露台，豪华气派三层复式</span>
									<p>
										天河区 东方之珠花园 6房2厅 256㎡ 230万 05-21
									</p>
								</li>
								<li>
									<span>商业旺区地下车位放售，欢迎来电！</span>
									<p>
										天河区 海逸阁 1房 12㎡ 26万 06-21
									</p>
								</li>
								<li>
									<span>东南靓向，间隔方正，实用两房一厅</span>
									<p>
										天河区 世纪花都 2房1厅 76㎡ 90万 06-21
									</p>
								</li>

							</ul>
						</div>



					</div>

					<!--expertDetails2-->
					<div class="expertDetails2">
						<div class="picture"><img src="images/p2.gif" width="116px"/></div>
						<div class="details2">
							<ul>
								
								
								<li class="expertName">
									冯超凡 <img src="images/blue_1.gif" /><img src="images/blue_1.gif" />　　
									<img src="images/email.png" alt="给我发E-mail"/>&nbsp;<img src="images/qq.gif" alt="在线联系我"/>
									<a href="ExpertsHouse.jsp"><img src="images/house.gif" alt="进入我的空间" /></a>
									<BR/>
									<li>
									<img src="images/phone.gif" alt="联系电话" />
									<span>13711011714</span>
									<br/>
								</li>
								<li>
									所属公司：心安置业
								</li>
								<li>
								负责区域：天河区
								</li>
								<li>
									〖热爱地产中介服务工作，经过多年的探索与奋斗，在工作中取得了巨大的成绩！〗
								</li>
								
								
							</ul>
														
						</div>
						
						<div class="BuddingLi">
							<ul>
								<li>
									<span>附室内彩图 带有大露台，豪华气派三层复式</span>
									<p>
										天河区 东方之珠花园 6房2厅 256㎡ 230万 05-21
									</p>
								</li>


							</ul>
						</div>

					</div>

					<!--expertDetails3-->
					<div class="expertDetails3">

						<div class="picture"><img src="images/p3.gif" width="116px"/></div>
						<div class="details3">
							<ul>
								
								
								
								<li class="expertName">
									曾文静 <img src="images/blue_1.gif" /><img src="images/blue_1.gif" />　　
									<img src="images/email.png" alt="给我发E-mail"/>&nbsp;<img src="images/qq.gif" alt="在线联系我"/>
									<a href="ExpertsHouse.jsp"><img src="images/house.gif" alt="进入我的空间" /></a>
									<BR/>
									<li>
									<img src="images/phone.gif" alt="联系电话" />
									<span>13697420231</span>
									<br/>
								</li>
								<li>
									所属公司：心安置业
								</li>
								<li>
								负责区域： 荔湾区
								</li>
								<li>
									〖多年从事房地产中介工作，对地产中介的运作有独特的见解。以专业的眼光看待问题和解决问题,用“心”工作，用“心”服务！〗
								</li>
							</ul>
						</div>
						
						<div class="BuddingLi">
							<ul>
								<li>
									<span>附室内彩图 带有大露台，豪华气派三层复式</span>
									<p>
										天河区 东方之珠花园 6房2厅 256㎡ 230万 05-21
									</p>
								</li>

							</ul>
						</div>



					</div>

				</div>
				<!--expert-->
				<div class="contentR">
					<div class="value">
						<div class="value_top">
							<span>房上房成交数据</span>
						</div>
						<!-- 
						<ul>
							<li>
								<span>[海珠区] 天汇大厦 05-21</span>
								<p>
									256㎡
									<span class="red_span">230万</span> 单价:9196元/㎡
								</p>
							</li>
							<li>
								<span>[海珠区] 前进路 05-21</span>
								<p>
									56㎡
									<span class="red_span">42万</span> 单价:7656元/㎡
								</p>
							</li>
							<li>
								<span>[白云区] 云山熹景 05-21</span>
								<p>
									156㎡
									<span class="red_span">130万 </span>单价:1196元/㎡
								</p>
							</li>
							<li>
								<span>[番禺区] 南浦海滨花园 05-21</span>
								<p>
									119㎡
									<span class="red_span">83万</span> 单价:7196元/㎡
								</p>
							</li>
						</ul>
						-->
						
						<img src="images/date2.jpg" width="195px" height="228px" style="padding-top:8px;"/>
						
					</div>

					<div class="hot">
						<div class="hot_top">
							<span>网友最关注房源</span>
						</div>
						<ul>
							<li class="li1">
								<span>[海珠区] 天汇大厦 05-21</span>
								<p>
									256㎡
									<span class="red_span">230万</span> 单价:9196元/㎡
								</p>
							</li>
							<li class="li2">
								<span>[海珠区] 前进路 05-21</span>
								<p>
									56㎡
									<span class="red_span">42万</span> 单价:7656元/㎡
								</p>
							</li>
							<li class="li3">
								<span>[白云区] 云山熹景 05-21</span>
								<p>
									156㎡
									<span class="red_span">130万 </span>单价:1196元/㎡
								</p>
							</li>
							<li class="li4">
								<span>[番禺区] 南浦海滨花园 05-21</span>
								<p>
									119㎡
									<span class="red_span">83万</span> 单价:7196元/㎡
								</p>
							</li>
							<li class="li5">
								<span>[番禺区] 南浦海滨花园 05-21</span>
								<p>
									119㎡
									<span class="red_span">83万</span> 单价:7196元/㎡
								</p>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<br />
			<br />
		<br/><br/>
	<div id="testID" style="display:none;"><h2>Lee dialog</h2></div>
	
		<!--box-->
	<!-- foot -->
			<%@ include file="../CommonPage/Foot.jsp"%>
	</div>
	</body>
</html>
