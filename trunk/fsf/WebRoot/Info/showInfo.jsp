<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/share/share.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" //>
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/> 
<meta name="title" content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)" />
<title>地产资讯 - 房上房地产网</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/show.js"></script>
</head>
<body>
<div class="infoShow_box">
	<!-- head -->
  <div class="infoShow_head">
		<div class="infoShow_logo"><img src="images/logo.jpg" width="154" height="51" alt="房上房" title="房上房" /></div>
		  <p>
				<a href="<%=contextPath %>/main/index.jsp"><u>首页</u></a> |
				<a href="<%=contextPath %>/freetrade/index.jsp"><u>自主交易</u></a> |
				<a href="<%=contextPath %>/entrustTrade/index.jsp"><u>委托代理</u></a> |
				<a href="<%=contextPath %>/newHouse/index.jsp"><u>新房推荐</u></a> |
				<a href="<%=contextPath %>/Info/infoIndexList.action"><u>地产资讯</u></a> |
				<a href="<%=contextPath %>/forum/goToForum.action"><u>论坛</u></a> |
				<a href="<%=contextPath %>/CoBank/index.action"><u>合作银行</u></a> |
				<a href="<%=contextPath %>/commerce/commerceIndex.action"><u>旺铺招租</u></a> |
				<a href="<%=contextPath %>/invitedexperts/index.action"><u>交易顾问</u></a>
		  </p>
		</div>
    
    <!-- banner -->
		<div class="infoShow_banner" >
			<div class="infoShow_bannerL" >
				<img src="images/AD-InfoShow1.jpg" style="border:1px solid #cccccc;"/>
			</div>
		</div>
    
    <div class="clear"></div>
    <div class="blank12"></div>
    <!-- menu -->
    <div class="infoShow_menu">
    	<p>
	    	<span <s:if test="informationParameter._ne_informationType==1">class="on"</s:if> >
						<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=1&informationParameter.currentPage=1&informationParameter.maxResults=30">焦点</a>
					</span>
					<span <s:if test="informationParameter._ne_informationType==3">class="on"</s:if> >
						<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=3&informationParameter.currentPage=1&informationParameter.maxResults=30">房价新闻</a>
					</span>
					<span <s:if test="informationParameter._ne_informationType==2">class="on"</s:if> >
						<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=2&informationParameter.currentPage=1&informationParameter.maxResults=30">深度报告</a>
					</span>
					<span <s:if test="informationParameter._ne_informationType==5">class="on"</s:if> >
						<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=5&informationParameter.currentPage=1&informationParameter.maxResults=30">房产政策</a>
					</span>
					<span <s:if test="informationParameter._ne_informationType==4">class="on"</s:if> >
						<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=4&informationParameter.currentPage=1&informationParameter.maxResults=30">区域报告</a>
					</span>
					<span <s:if test="informationParameter._ne_informationType==6">class="on"</s:if> >
						<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=6&informationParameter.currentPage=1&informationParameter.maxResults=30">国际家居</a>
					</span>
					<span <s:if test="informationParameter._ne_informationType==7">class="on"</s:if> >
						<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=7&informationParameter.currentPage=1&informationParameter.maxResults=30">社区推荐</a>
					</span>
    	</p>
    </div>
    
    <div class="clear"></div>
    <div class="blank12"></div>
    <!-- content -->
    <div class="infoShow_content">
    	<div class="infoShow_content_logo"></div>
        
        <!-- left -->
    	<div class="infoShow_contentL">
        	<div class="infoShow_contentL_img"><img src="images/AD-InfoShow2.jpg" width="550" height="150" alt="" title="" /></div>
            <div class="infoShow_contentL_guide">
            	<p>您当前的所在位置：
            		<a href="<%=contextPath %>/main/index.jsp">房上房</a> &gt;
            		<a href="<%=contextPath %>/Info/infoIndexList.action">地产资讯</a> &gt;
            		<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=${informationType }&informationParameter.currentPage=1&informationParameter.maxResults=30">
            			<fsf:dictTranslate groupName="$information_type" value="informationType" />
            		</a> 
            	</p>
            </div>
            <div class="infoShow_contentL_content" id="info_title" name="info_title">
            	<h1>${informationTitle }</h1>
              <div class="infoShow_contentL_contentTime"><span id="info_infoDate" name="info_infoDate">${updateTime}　</span>　来源:<span id="info_From">房上房</span> <a href="../forum/index.jsp">&nbsp;进入论坛</a></div>
              <div class="infoShow_contentL_contentLine"></div>
              <div class="infoShow_contentL_contentShow">
	              <div id="info_content">${informationContent }</div>
							</div>  
            </div>
            
            <div class="infoShow_contentL_pinglun">
						<div class="infoShow_contentL_pinglun_title">
							<div class="infoShow_contentL_pinglun_line"></div>
							<span class="cOrange"><b>网友评论</b>
							</span>
						</div>
						<br/>
						<div class="focusPic" id="loadingDiv" style="text-align: center;" >
							<img src="<%=contextPath %>/images/loading2.gif" style="margin: 0 auto;" />
							<br />
							<font style="font-weight: bold;" >加载中...</font>
						</div>
						<div id="commentZoneDiv" style="display: none;" >
							<aa:zone name="commentZone">
								<s:iterator value="commentPageView.records" id="item" >
									<div><fsf:dictTranslate groupName="#sys_user" value="createUserId" /> <s:date name="createTime" format="yyyy-MM-dd HH:mm:ss" /> ${ip }</div>
									<div>${content }</div>
									<br/>
								</s:iterator>
								<%@ include file="/share/commentPageNavigation.jsp" %>
								<form name="commentForm" action="/Info/infoCommentList.ajax" method="post" >
									<s:if test="#session.USER!=null">
										<div id="commitDiv" >
											<p><textarea name="content" onfocus="this.value=''" onblur="if(this.value=='')this.value='我来评两句！'"
											 class="infoShow_contentL_pinglun_textarea">我来评两句！</textarea></p>
											<p class="right">
												<img src="images/infoS_send.jpg" width="68" height="19" onclick="f_commitComment()" 
												alt="马上发表" title="马上发表" align="absmiddle" />
											</p>
										</div>
										<div class="focusPic" id="loadingDiv2" style="text-align: center;display: none;" >
											<img src="<%=contextPath %>/images/loading2.gif" style="margin: 0 auto;" />
											<br />
											<font style="font-weight: bold;" >处理中...</font>
										</div>
									</s:if>
									<input name="informationId" type="hidden" value="${informationId }" />
									<input name="infoCommentParameter._ne_informationId" type="hidden" value="${informationId }" />
									<input name="infoCommentParameter._ne_status" type="hidden" value="1" />
									<s:hidden name="infoCommentParameter.currentPage" id="currentPage" />
									<input name="infoCommentParameter.maxResults" type="hidden" value="10" />
								</form>
							</aa:zone>
						</div>
					</div>
        </div>
        
        <!-- right -->
        <div class="infoShow_contentR">
	        <div class="infoShow_contentR_buy"><img src="images/infoS_rightTitle.jpg" width="249" height="16" alt="想发布房源信息?你只需点击右边!" title="想发布房源信息?你只需点击右边!" align="absmiddle" />&nbsp;&nbsp;<span class="cRed04">→</span>&nbsp;&nbsp;<a href="#" class="cRed04">[我要卖房]</a></div>
	        
	        
	        <div class="clear"></div>
	        <div class="blank12"></div>
	        <div class="infoShow_contentR_title"><div class="infoShow_contentR_title_line"></div><b>委托推荐</b></div>
	        <div class="col05a">
          	<ul>
            	<s:iterator value="@fsf.service.common.EstateOutRecommondCacheService@getListRecommond()">
								<li>
									<p>
										<s:if test="imagePath!=null && imagePath.trim()!=''">
											<img src="<%=contextPath %>${imagePth }" width="131" height="86" />
										</s:if>
										<s:else>
											<img src="<%=contextPath %>/images/logo.jpg" width="154" height="51" />
										</s:else>
									</p>
									<p>
										<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=${estateId }" class="cRed02"><u>${estateName }</u></a>&nbsp;&nbsp;
									</p>
									<p>
										<span class="cRed02"><s:date name="createTime" format="yyyy-MM-dd" /></span>&nbsp;&nbsp;
										<span class="cRed02">${salePrice }元</span>
									</p>
								</li>							
							</s:iterator>
          	</ul>
          </div>
          
					<div class="clear"></div>
          <div class="blank12"></div>
          <div class="infoShow_contentR_title"><div class="infoShow_contentR_title_line"></div><b>自主推荐</b></div>
          <div class="col05a">
         		<ul>
             	<s:iterator value="@fsf.service.common.EstateOutRecommondCacheService@getListOwnRecommond()">
								<li>
									<p>
										<s:if test="imagePath!=null && imagePath.trim()!=''">
											<img src="<%=contextPath %>${imagePth }" width="131" height="86" />
										</s:if>
										<s:else>
											<img src="<%=contextPath %>/images/logo.jpg" width="154" height="51" />
										</s:else>
									</p>
									<p>
										<a href="<%=contextPath %>/freetrade/outContent.action?estateId=${estateId }" class="cRed02"><u>${estateName }</u></a>
									</p>
									<p>
										<span class="cRed02"><s:date name="createTime" format="yyyy-MM-dd" /></span>&nbsp;&nbsp;
										<span class="cRed02">${salePrice }元</span>
									</p>
								</li>
							</s:iterator>
          	</ul>
          </div>
                
          <div class="clear"></div>
          <div class="blank12"></div>
          <div class="infoShow_contentR_img02"><img src="images/infoS_img004.jpg" width="360" height="140" alt="" title="" /></div>
        </div>
        <div class="clear"></div>
        <div class="infoShow_content_bottom"></div>
	    </div>
	</div>
  
  <div class="clear"></div>
  <div class="blank12"></div>
  <!-- foot -->
   <%@ include file="../CommonPage/Foot.jsp" %>
  
</body>
</html>
<script type="text/javascript" >
window.onload = function(){
	f_queryComment();
}
function f_queryComment(pageNum){
	document.forms["commentForm"].action = "/Info/infoCommentList.ajax";
	if(pageNum){
		document.forms["commentForm"]["infoCommentParameter.currentPage"].value = pageNum;
	}else{
		document.forms["commentForm"]["infoCommentParameter.currentPage"].value = 1;
	}
	ajaxAnywhere.formName = "commentForm";
	ajaxAnywhere.getZonesToReload = function(){return "commentZone";} 
	ajaxAnywhere.showLoadingMessage = function(){
		document.getElementById('loadingDiv').style.display = "block";
		document.getElementById('commentZoneDiv').style.display = "none";
	}
	ajaxAnywhere.hideLoadingMessage = function(){
		document.getElementById('loadingDiv').style.display = "none";
		document.getElementById('commentZoneDiv').style.display = "block";			
	}
	ajaxAnywhere.submitAJAX();
}

function f_commitComment(){
	document.forms["commentForm"].action = "/Info/commitInfoComment.ajax";
	ajaxAnywhere.getZonesToReload = function(){return "commentZone";} 
	ajaxAnywhere.showLoadingMessage = function(){
		document.getElementById('loadingDiv2').style.display = "block";
		document.getElementById('commitDiv').style.display = "none";
	}
	ajaxAnywhere.hideLoadingMessage = function(){
		document.getElementById('loadingDiv2').style.display = "none";
		document.getElementById('commitDiv').style.display = "block";			
	}
	ajaxAnywhere.handleWrongContentType = function(){
		eval(this.req.responseText);
	}
	ajaxAnywhere.submitAJAX();
}
</script>
