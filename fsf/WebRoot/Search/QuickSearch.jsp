<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C">  
<meta name="title"	content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)" />
<title>自由贸易区 - 房上房地产网</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script> 
<script type="text/javascript" src="../js/showDiv.js" ></script>
<SCRIPT type="text/javascript" src="js/QuickSearch.js"></SCRIPT>
<script type="text/javascript" src="../js/SearchMessage.js"></script>
<script language="javascript" src="js/jump.js"></script>
 

<style type="text/css">
body .new_menu {
background:url(../images/bg.jpg) repeat-x top;
}
</style>
</head>
<body>
<div class="box">

	<!-- new menu -->
    <%@ include file="../CommonPage/New_Menu.jsp" %> 

	<!-- head -->
   <%@ include file="../CommonPage/Head.jsp" %> 
    

    <!-- search -->
    <%@ include file="../CommonPage/Search.jsp" %> 
   
   <div class="clear"></div>
   <!-- guide -->
   <div id="guide" class="guide">
        <p>您当前的所在位置：<a href="../main/index.jsp">房上房</a> &gt; <a id="TypeInfo" href="../Search/QuickSearch.jsp">搜索结果</a> &gt; <span id="PropertyInfo" class="cOrange">祈福</span></p>
   </div>
 
    
   <!-- content -->
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
						<div class="trade_table_more" id="SearchFreeMore">
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
						<div class="trade_table_more" id="SearchEntrustMore">
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
  
  <div class="clear"></div>
  <div class="blank12"></div>
  <!-- foot -->
  <%@ include file="../CommonPage/Foot.jsp" %> 
    
</div>
</body>
</html>
