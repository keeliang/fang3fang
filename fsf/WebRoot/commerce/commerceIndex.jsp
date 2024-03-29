<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@include file="/share/share.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/> 
<meta name="title" content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)"/> 
<title>旺铺招租 - 房上房地产网</title>

<link type="text/css" href="<%=contextPath%>/commerce/css/general.css" rel="stylesheet"/>
<link type="text/css" href="<%=contextPath%>/commerce/css/dialog.css" rel="stylesheet"/>
<link type="text/css" href="<%=contextPath%>/commerce/css/style.css" rel="stylesheet"/>
<script type="text/javascript" src="<%=contextPath%>/js/jquery.js"></script>
</head>
<body style="background-color:#FFFFFF">
<%@include file="/commerce/commerceHeader.jsp" %>
    
	<div class="clear"></div>
	<div class="blank12"></div>
	<!-- content -->
	<div class="content">
		<div id="about11" style="display: block;">
      <div class="wangpu_show">
          <!-- wangpu menu -->
	      <div class="wangpu_menu">
	      	<div class="wangpu_menuLine"></div>
	       	<ul class="wangpuList"> 
						<li class="wangpuLeftW">&nbsp;</li>                  
						<li id="aboutnav11" class="wangpuHere"><a href="<%=contextPath %>/commerce/commerceIndex.action" target="_self"><span>全部信息</span></a></li> 
						<li id="aboutnav21"><a href="<%=contextPath %>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=1&commerceParameter.maxResults=30" target="_self"><span>厂房仓库</span></a></li>
						<li id="aboutnav31"><a href="<%=contextPath %>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=2&commerceParameter.maxResults=30" target="_self"><span>酒楼转让 </span></a></li>
						<li class="wangpuLine">&nbsp;</li>
						<li id="aboutnav41"><a href="<%=contextPath %>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=3&commerceParameter.maxResults=30" target="_self"><span>写字楼</span></a></li> 
						<li class="wangpuLine">&nbsp;</li>
						<li id="aboutnav51"><a href="<%=contextPath %>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=4&commerceParameter.maxResults=30" target="_self"><span>餐厅转让</span></a></li>
						<li class="wangpuLine">&nbsp;</li>
						<li id="aboutnav61"><a href="<%=contextPath %>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=5&commerceParameter.maxResults=30" target="_self"><span>商铺</span></a></li>
						<li class="wangpuLine">&nbsp;</li>
						<li id="aboutnav71"><a href="<%=contextPath %>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=6&commerceParameter.maxResults=30" target="_self"><span>工厂转让</span></a></li>
						<li class="wangpuLine">&nbsp;</li>
						<li id="aboutnav81"><a href="<%=contextPath %>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=7&commerceParameter.maxResults=30" target="_self"><span>美容发廊</span></a></li>
						<li class="wangpuLine">&nbsp;</li>
						<li id="aboutnav91"><a href="<%=contextPath %>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=8&commerceParameter.maxResults=30" target="_self"><span>房租转让</span></a></li>
						<li class="wangpuList">&nbsp;</li>
	       	</ul>  
				</div>
				<div class="wangpu_button" id="Jbutton"><a href="<%=contextPath %>/commerce/commerceRelease.action"><img src="images/wangpu_fabu.jpg" width="142" height="31" alt="我要发布信息" title="我要发布信息"/></a></div>
			</div>
   
      <div class="clear"></div>
      <div class="wangpu_content">
      	<p>
      		<img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /><b>地区：</b>
					<a href="<%=contextPath %>/commerce/commerceIndex.action" >全部</a>
					<s:iterator value="#application.est_filter.place" id="var">
						<a href="<%=contextPath %>/commerce/commerceIndex.action?commerceParameter._ne_<s:property value="#var.from.split('_')[0]" />=<s:property value="#var.from.split('_')[1]" />">${name }</a>&nbsp;&nbsp;
					</s:iterator>
				</p>
        <div class="wangpu_content_show">
        	<table border="0" width="100%" cellpadding="0" cellspacing="0" >
        		<tr>
        			<s:iterator value="pageView.records" status="st" >
	        			<td style="width: 33%" >
	        				<div class="two_left_5_2" >
										<a href="<%=contextPath %>/commerce/commerceView.action?commerceId=<s:property value="commerceId" />" target="_blank">
											<s:if test="imagePath!=null && imagePath.trim()!=''">
												<img src="<%=contextPath %>${imagePath }" alt="${title }" width="74" height="59" border="0" />
											</s:if>
											<s:else>
												<img src="<%=contextPath %>/images/logo.jpg" width="120" height="40" alt="${title }" />
											</s:else>
										</a>
									</div>
									<div class="two_left_5_3" style="font-size: 12px;" >
										<a href="<%=contextPath %>/commerce/commerceView.action?commerceId=<s:property value="commerceId" />" target="_blank" title="${title }" ><s:property value="@chance.util.HtmlUtils@removeHTML(title,20)"/></a><br/>
										<s:property value="@chance.util.HtmlUtils@removeHTML(content,20)"/>
									</div>
	        			</td>
	        			<s:if test="#st.count%3==0">
	        				</tr></tr>
	        			</s:if>
        			</s:iterator>
        		</tr>
        		<tr>
        			<td width="100%" colspan="3" >
								<%@ include file="/share/pageNavigation.jsp"%>
							</td>
        		</tr>
        	</table>
        	<s:form action="commerceIndex" namespace="/commerce" name="formList" id="formList" theme="simple" method="post">
						<s:hidden name="commerceParameter.currentPage" id="currentPage" />
						<s:hidden name="commerceParameter.maxResults" id="maxResults" />
					</s:form>
        </div>
      </div>
		</div>
  </div>
  
  <div class="clear"></div>
  <div class="blank12"></div>
  <!-- foot -->
    <%@ include file="/CommonPage/Foot.jsp" %>
</div>   
</body>
</html>