<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>邀请专家</title>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
		<script src="../rent/js/jquery-1.3.1.js" type="text/javascript"></script>
		<script src="js/index.js" type="text/javascript"></script>
		<script src="../rent/js/popup.js" type="text/javascript"></script>
		<link rel="stylesheet" href="css/general.css" type="text/css" media="screen" />
		<script language="javascript" src="js/dialog.js"></script>
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
							<li>
								<a href="<%=contextPath %>/Info/infoIndexList.action"><span>地产资讯</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/forums/list.page"><span>论坛</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/CoBank/index.jsp"><span>银行合作</span> </a>
							</li>
							<li>
								<a href="<%=contextPath %>/commerce/commerceIndex.action"><span>旺铺招租</span></a>
								</a>
							</li>
							<li class="menuHere">
								<a href="<%=contextPath %>/invitedexperts/index.action"><span>专家顾问</span> </a>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="navR">
					<s:if test="#session.USER==null">
						<a href="../member/register.action" class="cYellow"> [注册会员] </a>
						<a href="../member/login.jsp" class="cYellow">[登录]</a>
					</s:if>
					<s:else>
						您好！${USER.userCode }
						<a href="../memberCenter/index.action" class="cYellow"> [会员中心]</a>
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
				<div class="info_img">
					<embed id="TL01_SWF" height="110" align="middle" width="940"
						pluginspage="http://www.macromedia.com/go/getflashplayer"
						type="application/x-shockwave-flash" wmode="opaque" quality="high"
						src="images/ad-flash-ex.swf" />
				</div>

				<div class="map">
					<span>您现在的位置：<a href="#">邀请专家</a></span>
				</div>
				<div class="maplist">
					<form action="<%=contextPath %>/invitedexperts/index.action" method="post" >
						<s:hidden value="userParameter._ne_provinceId" ></s:hidden>
						<s:hidden value="userParameter._ne_cityId" ></s:hidden>
						<s:hidden value="userParameter._ne_districtId" ></s:hidden>
					</form>
					<b>区域列表:</b>
					<div class="UlList">
						<ul>
							<li><a href="<%=contextPath %>/invitedexperts/index.action"><span>全部专家</span></a></li>
							<s:iterator value="#application.est_filter.place"  >
								<li><a href="<%=contextPath %>/invitedexperts/index.action?userParameter._ne_<s:property value="from.substring(0,from.indexOf('_'))" />=<s:property value="from.substring(from.indexOf('_')+1)" />"><span>${name }专家</span></a></li>
							</s:iterator>
						</ul>
					</div>
				</div>
				
				<div class="expert">
					<div class="expertTop">
						<div class="expertTopL"></div>
						<div class="expertNav">
							<span><b>专家 Experts </b></span>
						</div>
						<div class="expertTopR"></div>
					</div>
					<table>
						<tr>
							<td style="vertical-align: top;width: 50%;" >
								<s:iterator value="pageView.records" status="st" >
									<div class="picture">
										<img src="<%=contextPath %>${imagePath }" width="116px" height="135px;" />
									</div>
									<div class="details">
										<ul>
											<li class="expertName2">
												<a href="ExpertsHouse.jsp">${realName }</a>
												<s:bean name="org.apache.struts2.util.Counter" id="i" >
													<s:param name="first" value="1"/>
													<s:param name="last" value="level"/>
													<s:iterator>
														<img src="images/blue_1.gif" />
													</s:iterator>
												</s:bean>
												<a href="mailto:${email }" title="给${realName }发邮件"><img src="images/email.png" alt="给我发E-mail" /></a>
												&nbsp;
												<a href="tencent://message/?uin=${qq }" title="给${realName }发QQ信息"><img src="images/qq.gif" alt="在线联系我" /></a>
												<a href="<%=contextPath %>/invitedexperts/exportHouse.action?userId=${userId }"><img src="images/house.gif" alt="进入我的空间" /></a>
												<br/>
											<li>
												<img src="images/phone.gif" alt="联系电话" />
												<span>${phone }</span>
												<br/>
											</li>
											<li>负责区域：<fsf:dictTranslate groupName="#district" value="workDistrictId" /></li>
											<li>${remark }</li>
										</ul>
									</div>
									<div class="BuddingLi">
										<ul>
											<s:iterator value="recommondEstate" >
												<li>
													<span>${estateName }</span>
													<p>
														<fsf:dictTranslate groupName="#district" value="districtId" /> ${bedroom }房${hall }厅 ${area }㎡ ${salesPrice }万
													</p>
												</li>
											</s:iterator>
										</ul>
									</div>
								</td><td style="vertical-align: top;width: 50%;" >
								<s:if test="st.count==2">
									</td></tr><tr>
								</s:if>
							</s:iterator>
						</tr>
						<tr>
							<td colspan="2" >
								<%@ include file="/share/exportPageNavigation.jsp" %>
							</td>
						</tr>
					</table>
				</div>
				<!--expert-->
				
				<div class="contentR">
				
					<div class="hot">
						<div class="hot_top">
							<span>网友收藏最多的房源</span>
						</div>
						<div id="loadingDiv" style="width: 100%;text-align: center;" >
							<img src="<%=contextPath %>/images/loading2.gif" />
							<br />
							<font style="font-weight: bold;" >加载中...</font>
						</div>
						<div id="estateDiv">
							<aa:zone name="zoneRecommondEstateOnExpert">
								<ul>
									<s:iterator value="listRecommondEstateOnInfo" >
										<li class="li1">
											<s:if test="tradeType==1">
												<span><a href="<%=contextPath %>/freetrade/outContent.action?estateId=${estateId }" class="cRed02">${estateName }</a></span>
											</s:if>
											<s:if test="tradeType==2">
												<span><a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=${estateId }" class="cRed02">${estateName }</a></span>
											</s:if>
											<p>${area }㎡<span class="red_span">${salePrice }万</span> 单价:${unitPrice }元/㎡</p>
										</li>
									</s:iterator>
								</ul>
							</aa:zone>
						</div>
					</div>
				</div>
			</div>
			<br/>
			<br/>
			<br/>
			<br/>
			<div id="testID" style="display: none;">
				<h2>Lee dialog</h2>
			</div>

			<!-- foot -->
			<%@ include file="../CommonPage/Foot.jsp"%>
		</div>
	</body>
</html>
<script type="text/javascript">
function f_goto(url){
	document.forms[0].action = url;
	document.forms[0].submit();
}
window.onload = function(){
	ajaxAnywhere = new AjaxAnywhere();
	ajaxAnywhere.showLoadingMessage = function(){
		document.getElementById("loadingDiv").style.display = "block";
		document.getElementById("estateDiv").style.display = "none";
	}
	ajaxAnywhere.hideLoadingMessage = function(){
		document.getElementById("loadingDiv").style.display = "none";
		document.getElementById("estateDiv").style.display = "block";
	}
	ajaxAnywhere.getAJAX("/commerce/recommondListOnCommercePage.ajax","zoneRecommondEstateOnExpert");
}
</script>