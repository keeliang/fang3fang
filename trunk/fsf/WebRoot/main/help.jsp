<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<%@ include file="/share/share.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/> 
<meta name="title" content="帮助中心 - 房上房地产网(http://wwww.fang3fang.com)" /> 
<title>房上房--${infoDesc }</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="box">
	<!-- new menu -->
	<%@ include file="../CommonPage/New_Menu.jsp" %> 
	<!-- head -->
  <%@ include file="../CommonPage/Head.jsp" %> 

  <div>
		${content }  
  </div>

  <%@ include file="../CommonPage/Foot.jsp" %> 
 </div>
 </body>
</html>