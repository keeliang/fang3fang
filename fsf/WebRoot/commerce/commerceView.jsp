<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file="/share/share.jsp" %>
<%@include file="/share/validate.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<div class="guide">
    <p>
    	<span class="float_right"></span>
    	您当前的所在位置：<a href="/index.jsp">房上房</a> &gt; 
   		<a href="<%=contextPath %>/commerce/commerceIndex.action">旺铺招租</a> &gt; 
   		<a href="<%=contextPath %>/commerce/commerceCatelogy.action?commerceParameter._ne_commerceType=<s:property value="commerceType"/>"><fsf:dictTranslate groupName="$commerce_type" value="commerceType" /></a> &gt; 
   		<span class="cOrange">${title }</span></p>
</div>

<div>

	<div class="contentN_left" style="width: 100%" >
		<div style="width:100%;text-align:left">
			<span style="font-size:18px;text-align:left">${title }</span>
		</div>
		
		<div style="text-align:left">

		</div>
		<div class="blank12"></div>
		<div class="contentN_title"  >
			<div style="width: 50%;float: left" >
				<table width="100%" cellspacing="0" cellpadding="0" style="font-size: 12px;" >
					<tr>
						<td width="80px" ><s:text name="commerceType"/>: </td>
						<td><fsf:dictTranslate groupName="$commerce_type" value="commerceType" /></td>
					</tr>
					<tr>
						<td><s:text name="createTime"/>: </td>
						<td><s:date name="createTime" format="yyyy-MM-dd HH:mm"/></td>
					</tr>
					<tr>
						<td>位置:</td>
						<td>
							<fsf:dictTranslate groupName="#province" value="provinceId" />&nbsp;&nbsp;
							<fsf:dictTranslate groupName="#city" value="cityId" />&nbsp;&nbsp;
							<fsf:dictTranslate groupName="#district" value="districtId" />
						</td>
					</tr>
					
					<tr>
						<td><s:text name="areaId"/>: </td>
						<td><fsf:dictTranslate groupName="#area" value="areaId" /></td>
					</tr>
					
					<tr>
						<td><s:text name="address"/>: </td>
						<td><s:property value="address"/></td>
					</tr>
					
					<tr>
						<td><s:text name="contacter"/>: </td>
						<td><s:property value="contactUser.userName"/></td>
					</tr>
					
					<tr>
						<td><s:text name="contactTel"/>: </td>
						<td><s:property value="contactUser.phone"/></td>
					</tr>
				</table>
			</div>
			
			<div style="width: 50%" >
				<s:if test="imagePath!=null && imagePath.trim()!=''">
					<img src="<%=contextPath %>${imagePath }" width="300" height="160" >
				</s:if>
			</div>
			
			<div class="clear"></div>
			<div class="blank12"></div>
			<div>
			
			<div class="contentN_left" style="width: 100%" >
				<p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;${content }</p>
			</div>
		</div>
	</div>
</div>


<div class="clear"></div>
  <div class="blank12"></div>
<div>

<%@ include file="/CommonPage/Foot.jsp" %>
</div>
</body>
</html>