<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="/share/share.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。" />
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C" />
		<meta name="title"
			content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)" />
		<title>旺铺招租 - 房上房地产网</title>
		<link type="text/css" href="<%=contextPath%>/commerce/css/general.css" rel="stylesheet" />
		<link type="text/css" href="<%=contextPath%>/commerce/css/dialog.css" rel="stylesheet" />
		<link type="text/css" href="<%=contextPath%>/commerce/css/style.css" rel="stylesheet" />

		<script type="text/javascript" src="<%=contextPath%>/js/jquery.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/commerce/js/popup.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/commerce/js/dialog.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/commerce/js/showDiv.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/commerce/js/commerce.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/commerce/js/showRent.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/commerce/js/DisplayMessageShopType.js"></script>
	</head>
	<body style="background-color: #FFFFFF">
		<s:form action="commerceCatelogy" namespace="/commerce" name="formList" id="formList" theme="simple" method="post">
			<s:hidden name="commerceParameter.currentPage" id="currentPage" />
			<s:hidden name="commerceParameter.maxResults" id="maxResults" />
			<s:hidden name="commerceParameter._ne_commerceType" />
			<s:hidden name="commerceParameter._ne_provinceId" />
			<s:hidden name="commerceParameter._ne_cityId" />
			<s:hidden name="commerceParameter._ne_districtId" />
		</s:form>
			<%@include file="/commerce/commerceHeader.jsp"%>
			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- content -->
			<div class="content">
				<div id="about12" style="display: block;">
					<div class="wangpu_show">
						<!-- wangpu menu -->
						<div class="wangpu_menu">
							<div class="wangpu_menuLine"></div>
							<ul class="wangpuList">
								<li class="wangpuLeftW">&nbsp;</li>
								<li class="wangpuLeftW02">&nbsp;</li>
								<li id="aboutnav11">
									<a href="<%=contextPath%>/commerce/commerceIndex.action" target="_self"><span>全部信息</span></a>
								</li>
								<li id="aboutnav21" class="<s:if test="commerceParameter._ne_commerceType==1">wangpuHere</s:if>">
									<a href="<%=contextPath%>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=1" target="_self"><span>厂房仓库</span></a>
								</li>
								<li id="aboutnav31" class="<s:if test="commerceParameter._ne_commerceType==2">wangpuHere</s:if>">
									<a href="<%=contextPath%>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=2" target="_self"><span>酒楼转让 </span></a>
								</li>
								<li class="wangpuLine">&nbsp;</li>
								<li id="aboutnav41" class="<s:if test="commerceParameter._ne_commerceType==3">wangpuHere</s:if>">
									<a href="<%=contextPath%>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=3" target="_self"><span>写字楼</span></a>
								</li>
								<li class="wangpuLine">&nbsp;</li>
								<li id="aboutnav51" class="<s:if test="commerceParameter._ne_commerceType==4">wangpuHere</s:if>">
									<a href="<%=contextPath%>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=4" target="_self"><span>餐厅转让</span></a>
								</li>
								<li class="wangpuLine">&nbsp;</li>
								<li id="aboutnav61" class="<s:if test="commerceParameter._ne_commerceType==5">wangpuHere</s:if>">
									<a href="<%=contextPath%>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=5" target="_self"><span>商铺</span></a>
								</li>
								<li class="wangpuLine">&nbsp;</li>
								<li id="aboutnav71" class="<s:if test="commerceParameter._ne_commerceType==6">wangpuHere</s:if>">
									<a href="<%=contextPath%>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=6" target="_self"><span>工厂转让</span></a>
								</li>
								<li class="wangpuLine">&nbsp;</li>
								<li id="aboutnav81" class="<s:if test="commerceParameter._ne_commerceType==7">wangpuHere</s:if>">
									<a href="<%=contextPath%>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=7" target="_self"><span>美容发廊</span></a>
								</li>
								<li class="wangpuLine">&nbsp;</li>
								<li id="aboutnav91" class="<s:if test="commerceParameter._ne_commerceType==8">wangpuHere</s:if>">
									<a href="<%=contextPath%>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=8" target="_self"><span>房租转让</span></a>
								</li>
								<li class="wangpuList">&nbsp;</li>
							</ul>
						</div>
						<div class="wangpu_button" id="Jbutton">
							<a href="<%=contextPath%>/commerce/commerceNew.action">
								<img src="images/wangpu_fabu.jpg" width="142" height="31" alt="我要发布信息" title="我要发布信息" />
							</a>
						</div>
					</div>
					<div class="clear"></div>
					<div class="wangpu_content">
						<p>
							<img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" />
							<b>地区：</b>
							<a href="javascript:f_query()" >全部</a>&nbsp;&nbsp;
							<s:iterator value="#application.est_filter.place" id="var">
								<a href="javascript:f_query('${from }')" >${name}</a>&nbsp;&nbsp;
							</s:iterator>
						</p>
						<div class="wangpu_content_show">
							<div class="wangpu_CF_left">
								<ul>
									<s:iterator value="pageView.records" id="item" status="status">
										<li class="<s:if test="#status.odd==true">LiBg</s:if>">
											<dl>
												<dd>
													<a href="#" class="cOrange">
														<b>
															<a href="<%=contextPath%>/commerce/commerceView.action?commerceId=<s:property value="commerceId"/>">
																<s:property value="title" />
															</a>
														</b>
													</a>&nbsp;&nbsp;&nbsp;&nbsp;--
													<s:date name="updateTime" format="yyyy-MM-dd hh:mm" />
													&nbsp;&nbsp;&nbsp;&nbsp;--
													<fsf:dictTranslate groupName="#sys_user" value="createUser" />
												</dd>
												<dd>
													<s:property value="content" />
												</dd>
											</dl>
										</li>
									</s:iterator>
								</ul>
								<ul>
									<table width="100%" align="center">
										<tr>
											<td width="100%" align="right">
												<%@ include file="/share/pageNavigation.jsp"%>
											</td>
										</tr>
									</table>
								</ul>
							</div>

							<div class="wangpu_CF_right">
								<%@include file="/commerce/commerceRecommend.jsp"%>
							</div>
						</div>
					</div>
				</div>
				<!-- foot -->
				<%@ include file="/CommonPage/Foot.jsp"%>
			</div>
	</body>
</html>
<script type="text/javascript" >
function f_query(v){
	if(v)
		document.forms["formList"]["commerceParameter._ne_"+v.split('_')[0]].value = v.split('_')[1];
	document.forms["formList"].submit();
}
</script>