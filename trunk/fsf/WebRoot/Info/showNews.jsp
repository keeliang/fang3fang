<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"> 
<meta name="title" content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)" > 
<title>地产资讯 - 房上房地产网</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/show.js"></script>


</head>
<body>
<div class="infoShow_box">
	<!-- head -->
  <div class="infoShow_head">
   	<div class="infoShow_logo"><a href="#"><img src="images/logo.jpg" width="154" height="51" alt="房上房" title="房上房" /></a></div>
      <p><a href="../main/index.jsp"><u>首页</u></a> | <a href="../freetrade/index.jsp" ><u>自主交易</u></a> | <a href="../entrustTrade/index.jsp" ><u>委托代理</u></a> | <a href="../newHouse/index.jsp"><u>新房推荐</u></a> | <a href="../Info/index.jsp"><u>地产资讯</u></a> | <a href="../forum/index.jsp"><u>论坛</u></a> | <a href="../CoBank/index.jsp"><u>合作银行</u></a> | <a href="../rent/index.jsp"><u>旺铺招租</u></a> | <a href="../invitedexperts/index.jsp"><u>专家顾问</u></a> </p>
    </div>
    
    <!-- banner -->
    <div class="infoShow_banner">
    	<div class="infoShow_bannerL"><img src="images/AD-InfoShow1.jpg" alt="" title="" style="border:1px solid #cccccc;"/></div>
        <div class="infoShow_bannerR">
        	<div class="infoShow_bannerT">近日导读</div>
            <div class="infoShow_bannerC">
            	<p>・<a href="#">网络营销解决方案网案网案</a></p>
                <p>・<a href="#">网络营销解决方案网案网案</a></p>
                <p>・<a href="#">网络营销解决方案网案网案</a></p>
            </div>
        </div>
    </div>
    
    <div class="clear"></div>
    <div class="blank12"></div>
    <!-- menu -->
    <div class="infoShow_menu"><p>
    	<span class="on"><a href="#">焦点</a></span>
    	<span><a href="#">房价新闻</a></span>
    	<span><a href="#">深度报告</a></span>
    	<span><a href="#">市场动态</a></span>
    	<span><a href="#">本地新闻</a></span>
    	<span><a href="#">房地产金融道</a></span>
    	<span><a href="#">楼盘动态</a></span>
    	<span><a href="#">房产政策</a></span>
    	<span><a href="#">土地市场</a></span>
    	<span><a href="#">区域报告</a>
    </p></div>
    
    <div class="clear"></div>
    <div class="blank12"></div>
    <!-- content -->
    <div class="infoShow_content">
    	<div class="infoShow_content_logo"></div>
        
        <!-- left -->
    	<div class="infoShow_contentL">
        	<div class="infoShow_contentL_img"><img src="images/AD-InfoShow2.jpg" width="550" height="150" alt="" title="" /></div>
            <div class="infoShow_contentL_guide"><p>您当前的所在位置：<a href="#">房上房</a> &gt; <a href="#">新闻</a> &gt; <a href="#">焦点</a> &gt; <span class="cOrange">${informationTitle }</span></p></div>
            <div class="infoShow_contentL_content" id="info_title" name="info_title">
            	<h1>${newsTitle }</h1>
                <div class="infoShow_contentL_contentTime"><span id="info_infoDate" name="info_infoDate">${updateTime}　</span>　来源:<span id="info_From">房上房</span> <a href="../forum/index.jsp">&nbsp;进入论坛</a></div>
                <div class="infoShow_contentL_contentLine"></div>
                <div class="infoShow_contentL_contentShow">
                <div id="info_content">
                	${newsContent }    
								</div>
                <div class="blank12"></div>
                <div class="infoShow_contentL_contentShow_title"><img src="images/infoS_dot01.jpg" width="7" height="7" align="absmiddle" /> <b>相关新闻</b></div>
                <div class="infoShow_contentL_contentLine02"></div>
                <ul>
                	<li>・<a href="#">宋祖德准确预测周倪结婚 称二人经济状况糟</a> </li>
                    <li>・<a href="#">宋祖德准确预测周倪结婚 称二人经济状况糟</a> </li>
                    <li>・<a href="#">宋祖德准确预测周倪结婚 称二人经济状况糟</a> </li>
                    <li>・<a href="#">宋祖德准确预测周倪结婚 称二人经济状况糟</a> </li>
                    <li>・<a href="#">宋祖德准确预测周倪结婚 称二人经济状况糟</a> </li>
                </ul>
                </div>  
            </div>
            
            <div class="infoShow_contentL_pinglun">
            	<div class="infoShow_contentL_pinglun_title"><div class="infoShow_contentL_pinglun_line"></div><span class="float_right">已有<span class="cRed02"><b>1205</b></span>位对此新闻感兴趣的网友发表了看法！
            	<!-- 
            	<a href="#"><img src="images/infoS_look.jpg" width="68" height="19" alt="点击查看" title="点击查看" align="absmiddle" /></a>
            	 -->
            	</span><span class="cOrange"><b>网友评论</b></span></div>
            		<br/>
            	<div>
            	评论人　2009-10-28 11:48:21.42　113.67.67.9
            	
            	</div>
            	<div>
            	楼价会升吗？
            	</div>
            	<br/>
            	<div>
            	评论人2　2009-10-28 11:48:21.42　113.67.67.9
            	
            	</div>
            	<div>
            	楼价会升吗!
            	</div>
            	<br/>
              <p><textarea class="infoShow_contentL_pinglun_textarea">我来评两句！</textarea></p>
                <p class="right">用户名：<input type="text" class="infoShow_contentL_pinglun_input" />&nbsp;&nbsp;&nbsp;密码：<input type="password" class="infoShow_contentL_pinglun_input" />&nbsp;<img src="images/infoS_login.jpg" width="53" height="19" alt="登录" title="登录" align="absmiddle" />&nbsp;&nbsp;&nbsp;<input type="checkbox" />匿名&nbsp;<img src="images/infoS_send.jpg" width="68" height="19" alt="马上发表" title="马上发表" align="absmiddle" /></p>
            </div>
            
            <div class="infoShow_contentL_content02">
            	
                <div class="infoShow_contentL_contentShow_title"><img src="images/infoS_dot01.jpg" width="7" height="7" align="absmiddle" /> <b>信息分类</b></div>
                <div class="infoShow_contentL_contentLine"></div>
                <div class="col06">
                	<dl>
                    	<dd><a href="#"><u>开什么店---赚大钱赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱赚大钱</u></a></dd>
                        <dd><a href="#" class="cRed"><u>开什么店---赚大钱赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱</u></a></dd>
                        <dd><a href="#" class="cRed"><u>开什么店---赚大钱赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱赚大钱</u></a></dd>
                        <dd><a href="#" class="cRed"><u>开什么店---赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱</u></a></dd>
                        <dd><a href="#"><u>开什么店---赚大钱赚大钱</u></a></dd>
                    </dl>
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
                	<li>
                    	<p><img src="images/p01.jpg" width="131" height="86" alt="" title="" /></p>
                        <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                        <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                    </li>
                    <li>
                    	<p><img src="images/p02.jpg" width="131" height="86" alt="" title="" /></p>
                        <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                        <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                    </li>
                    <li>
                    	<p><img src="images/p03.jpg" width="131" height="86" alt="" title="" /></p>
                        <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                        <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                    </li>
                    <li>
                    	<p><img src="images/p04.jpg" width="131" height="86" alt="" title="" /></p>
                        <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                        <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                    </li>
                    
                </ul>
          </div>
                
                <div class="clear"></div>
            <div class="blank12"></div>
            <div class="infoShow_contentR_title"><div class="infoShow_contentR_title_line"></div><b>自主推荐</b></div>
            <div class="col05a">
            	<ul>
                	<li>
                    	<p><img src="images/p01.jpg" width="131" height="86" alt="" title="" /></p>
                        <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                        <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                    </li>
                    <li>
                    	<p><img src="images/p02.jpg" width="131" height="86" alt="" title="" /></p>
                        <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                        <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                    </li>
                    <li>
                    	<p><img src="images/p03.jpg" width="131" height="86" alt="" title="" /></p>
                        <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                        <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                    </li>
                    <li>
                    	<p><img src="images/p04.jpg" width="131" height="86" alt="" title="" /></p>
                        <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                        <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                    </li>
                    
                </ul>
          </div>
                
                <div class="clear"></div>
                <div class="blank12"></div>
                <div class="infoShow_contentR_img02"><img src="images/infoS_img004.jpg" width="360" height="140" alt="" title="" /></div>
                
                <div class="clear"></div>
                <div class="blank12"></div>
                <div class="infoShow_contentR_title"><div class="infoShow_contentR_title_line"></div><b>社区推荐</b></div>
            <div class="infoShow_contentR_content">
            	<ul>
                	<li>
                    	<p><img src="images/infoS_pic003.jpg" width="120" height="90" alt="" title="" /></p>
                        <p><a href="#">21世纪幼稚园上学最贵</a></p>
                    </li>
                    <li>
                    	<p><img src="images/infoS_pic004.jpg" width="120" height="90" alt="" title="" /></p>
                        <p><a href="#">21世纪幼稚园上学最贵</a></p>
                    </li>
                </ul>
                <div class="clear"></div>
                <dl>
                	<dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                    <dd>・<a href="#">21世纪幼稚园上学最贵上学</a></dd>
                </dl>
            </div>
            
            
            
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
