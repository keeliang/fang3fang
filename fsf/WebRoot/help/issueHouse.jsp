<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/share/share.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"> 
<meta name="title" content="帮助中心 - 房上房地产网(http://wwww.fang3fang.com)" > 
<title>帮助中心 - 房上房地产网</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
</head>
<body>
<div class="box">

	<!-- new menu -->
    <%@ include file="../CommonPage/New_Menu.jsp" %> 

	<!-- head -->
    <%@ include file="../CommonPage/Head.jsp" %> 
    
    <!-- title -->
    <div class="help_title">
    	<div class="help_titleL"></div>
        <div class="help_titleR">
        	<ul>
            	<li class="help_titleR_L">&nbsp;</li> 
                <li class="help_titleR_M">如果不能在帮助中心找到答案，或者您有其它建议、投诉，您还可以发意见到我们邮箱。</li>
                <li class="help_titleR_R">&nbsp;</li>
            </ul>
        </div>
        <div class="help_titleM"><div style="display:none;">交易帮助</div></div>
    </div>
   
    <div class="clear"></div>
    <div class="blank12"></div>
    <!-- content -->
    <div class="help_content">
    	<div class="help_contentL">
        	<div class="help_contentL_top">
            <div id="CollapsiblePanel1">
            <!-- 出现加号的样式为 class="help_menuNav02" -->
            <div class="help_menuNav01" tabindex="1"><a href="#"><b>买房帮助</b></a></div> 
            <ul>
            <div class="blank12"></div>
            	<li class="help_menuNav01_01"><a href="findHouse.jsp"><span class="float_right">&gt;&gt;</span>查找房源</a></li>
                <li class="help_menuNav01_02"><a href="comTalk.jsp"><span class="float_right">&gt;&gt;</span>联络洽谈</a></li>
                <li class="help_menuNav01_03"><a href="bargain.jsp"><span class="float_right">&gt;&gt;</span>合同签署</a></li>
                <li class="help_menuNav01_04"><a href="moneyManage.jsp"><span class="float_right">&gt;&gt;</span>资金监管</a></li>
                <li class="help_menuNav01_05"><a href="anjie.jsp"><span class="float_right">&gt;&gt;</span>按揭贷款</a></li>
                <li class="help_menuNav01_06"><a href="diya.jsp"><span class="float_right">&gt;&gt;</span>过户抵押</a></li>
            </ul>
            </div>
            <div class="blank12"></div>
            <div id="CollapsiblePanel2">
            <!-- 出现加号的样式为 class="help_menuNav02" -->
            <div class="help_menuNav01" tabindex="2"><a href="#"><b>卖房帮助</b></a></div>  
            <ul>
            <div class="blank12"></div>
            	<li class="help_menuNav02_01 on"><a href="issueHouse.jsp"><span class="float_right">&gt;&gt;</span>发布房源</a></li>
                <li class="help_menuNav02_02"><a href="goutong.jsp"><span class="float_right">&gt;&gt;</span>沟通平台</a></li>
                <li class="help_menuNav02_03"><a href="bargain02.jsp"><span class="float_right">&gt;&gt;</span>合同签署</a></li>
                <li class="help_menuNav02_04"><a href="moneyManage02.jsp"><span class="float_right">&gt;&gt;</span>资金监管</a></li>
                <li class="help_menuNav02_05"><a href="danbao.jsp"><span class="float_right">&gt;&gt;</span>担保赎楼</a></li>
                <li class="help_menuNav02_06"><a href="guohu.jsp"><span class="float_right">&gt;&gt;</span>房产过户</a></li>
            </ul>
            </div>
            <div class="blank12"></div>
            <div class="help_menuNav01"><a href="freeService.jsp"><b>免费服务</b></a></div>
            <div class="blank12"></div>
            <div class="help_menuNav01"><a href="chargeService.jsp"><b>收费服务</b></a></div>
            <div class="blank12"></div>
            <div class="blank12"></div>
            <div class="help_contentL_bottom"></div>
            </div>
        </div>
        <div class="help_contentR">
        	<div class="help_contentR_title"><img src="images/help_issueHouse.jpg" width="140" height="36" alt="发布房源" title="发布房源" /></div>
            <div class="help_contentR_line"></div>
            
            
    		<div class="blank12"></div>
            <p><b>1、想将手里房子卖掉？</b></p>
            <p class="indent24 font12">您有没有想过在网络上发布呢？在房上房自主交易网上发布房源信息，寻找买家，在房上房自主交易网注册会员就可以免费发布房源。 </p>
            <div class="blank12"></div>
            <div class="help_contentR_title"><a href="<%=contextPath %>/freetrade/estateOwnRelease.action"><img src="images/help_issueHouse_button01.jpg" width="175" height="49" alt="发布房源请点击" title="发布房源请点击" /></a></div>
            <div class="blank12"></div>
            <div class="blank12"></div>
            <p><b>2、在房上房发布的好处？</b></p>
            <p class="indent24 font12">在网络上，沟通没有距离，可以让更多的买家直接找到您，房子当然就会卖的更快。众所周知网络已经深入我们的生活，越来越多的买家习惯在网络上搜寻他们想要的房子，在房上房网交易，已经是一种时尚的趋势，您还没有行动吗？ </p>
            <div class="blank12"></div>
            <p class="font12 cOrange"><b>房源发布的流程如下图: </b></p>
            <div class="blank12"></div>
            <div class="help_contentR_title"><img src="images/help_issueHouse_liucheng.jpg" width="205" height="373" /></div>
            <div class="blank12"></div>
            <p><b>3、您也可以在这里搜索求购信息，主动寻找买家。 </p>
            <div class="blank12"></div>
            <div class="help_contentR_title"><a href="<%=contextPath %>/freetrade/index.jsp"><img src="images/help_issueHouse_button02.jpg" width="175" height="49" alt="查询买家请点击" title="查询买家请点击" /></a></div>
            <div class="blank12"></div>
            <p><b>4、为了让您的物业更快的让别人物色，请详细填写您物业的资料和图片。</b></p>
            
            
					<%@ include file="/CommonPage/HelpAttention.jsp" %>

      </div>
    </div>
  
  
  <div class="clear"></div>
  <div class="blank12"></div>
  <!-- foot -->
  <%@ include file="../CommonPage/Foot.jsp" %>
    
</div>
<script type="text/javascript">
<!--
var CollapsiblePanel1 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel1");
var CollapsiblePanel2 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel2");
//-->
</script>
</body>
</html>
