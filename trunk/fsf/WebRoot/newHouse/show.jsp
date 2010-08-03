<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)" />
		<title>新房推荐 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="box">
			<!-- new menu -->
			<%@ include file="../CommonPage/New_Menu.jsp"%>
			<!-- head -->
			<%@ include file="../CommonPage/Head.jsp"%>
			<div class="clear"></div>
			<!-- guide -->
			<div id="guide" class="guide">
				<p>
					<span class="float_right">
						<img src="images/freeTrade_dot01.jpg" width="20" height="19" align="absmiddle" />
						<a href="#" class="cOrange"	onclick="window.external.AddFavorite(location.href, document.title)">收藏</a>&nbsp;&nbsp;&nbsp;
						<img src="images/freeTrade_dot02.jpg" width="20" height="19" align="absmiddle" />
						<a href="#" onclick="window.print()">打印</a>&nbsp;&nbsp;&nbsp;
					</span>
					您当前的所在位置：
					<a href="../main/index.jsp">房上房</a> &gt;
					<a href="../freetrade/index.jsp">新房推荐</a> &gt;
					<span id="PropertyInfo" class="cOrange">岭南雅院</span>
				</p>
			</div>

			<!-- content -->
			<div class="freeTrade_contnet">
				<!-- left -->
				<div class="freeTrade_contnetL">
					<div class="freeTrade_contnetL_show">
						<div id="EstateInfo" class="freeTrade_contnetL_title01">
							<span class="float_right">
								发布日期：<s:date name="createTime" format="yyyy-MM-dd HH:mm:ss" />&nbsp;&nbsp;&nbsp;&nbsp;
								有效期：<span class="cOrange">${effective }</span>天s
							</span>
							<span class="cOrange font14"><b>${estateName }基本信息</b></span>
							<img src="images/freeTrade_down.jpg" width="13" height="13" align="absmiddle" />
						</div>
						<table border="0" cellpadding="0" cellspacing="0" class="freeTrade_table">
							<tr>
								<td class="grayBg right freeTrade_tableW01">物业名称：</td>
								<td id="PropertyName" class="left freeTrade_tableW03" colspan="3" >
									<span class="cOrange">${estateName }</span>
								</td>
							</tr>
							<tr>
								<td class="grayBg right">
									城&nbsp;&nbsp;市：
								</td>
								<td id="CityName" class="left">
									<fsf:dictTranslate groupName="#city" value="cityId" />
								</td>
								<td class="grayBg right">
									区&nbsp;&nbsp;县：
								</td>
								<td id="DistrictName" class="left">
									<fsf:dictTranslate groupName="#district" value="districtId" />
								</td>
							</tr>
							<tr>
								<td class="grayBg right">
									商&nbsp;&nbsp;圈：
								</td>
								<td id="TownName" class="left">
									&nbsp;
									<fsf:dictTranslate groupName="#business_area" value="areaId" />
								</td>
								<td class="grayBg right">
									物业类型：
								</td>
								<td id="PropertyTypeName" class="left">
									<fsf:dictTranslate groupName="$estate_type" value="estateType" />
								</td>
							</tr>
							<tr>
								<td class="grayBg right">物业地址：</td>
								<td id="Address" colspan="3" class="left">
									${address }
								</td>
							</tr>
							<tr>
								<td class="grayBg right">开&nbsp;发&nbsp;商：</td>
								<td id="BuildingTypeName" class="left" colspan="3" >${develop }</td>
							</tr>
							<tr>
								<td class="grayBg right">户&nbsp;&nbsp;型：</td>
								<td id="HouseType" class="left">
									${bedroom } 室 ${hall } 厅 ${toilet } 卫 ${porch } 阳台
								</td>
								<td class="grayBg right">朝&nbsp;&nbsp;向：</td>
								<td id="OrientationName" class="left">
									<fsf:dictTranslate groupName="$toward" value="toward" />
								</td>
							</tr>
							<tr>
								<td class="grayBg right">楼&nbsp;&nbsp;层：</td>
								<td id="Floor" class="left">共 ${totalFloor } 层</td>
								<td class="grayBg right">有无电梯：</td>
								<td id="Lift" class="left">
									<fsf:dictTranslate groupName="$is_lift" value="isLift" />
								</td>
							</tr>
							<tr>
								<td class="grayBg right">建筑面积：</td>
								<td id="TotalArea" class="left" colspan="3" >${area } 平方米</td>
							</tr>
							<tr>
								<td class="grayBg right">管&nbsp;理&nbsp;费：</td>
								<td id="ManagementFees" class="left">
									<span class="cOrange">${manageCost }</span> 元/月
								</td>
								<td class="grayBg right">其他费用：</td>
								<td id="EstateBelongName" class="left">
									<span class="cOrange">${otherCost }</span>元/平方米·月
								</td>
							</tr>
							<tr>
								<td class="grayBg right freeTrade_tableW01">装修程度：</td>
								<td id="RenovationStandardName" class="left freeTrade_tableW03" colspan="3">
									<fsf:dictTranslate groupName="$fitment" value="fitment" />
								</td>
							</tr>
							<tr>
								<td class="grayBg right">
									备&nbsp;&nbsp;注：
									<br/>
									<a href="#" class="cGray">基本介绍</a>&nbsp;&nbsp;
								</td>
								<td id="Remark" colspan="3" class="left">
									${remark }
								</td>
							</tr>
							<s:if test="imagePath!=null &&imagePath.trim()!=''">
								<tr>
	           	    <td class="grayBg right" valign="middle">房源靓图：</td>
	                <td id="HouseChart" colspan="3" class="left" valign="middle">
	                	<span class="img_border">
	                  	<img id="HouseChartSRC" src="<%=contextPath %>${imagePath }" width="229" height="172" align="absmiddle" />
										</span>
										<p>
	                    <a id="HouseChartLink" href="<%=contextPath %>${imagePath }" target="blank">
												<img id="bigIMG" src="images/freeTrade_button01.jpg" width="194" height="30" alt="点击查看大图" title="点击查看大图" />
	                    </a>
	                	</p>
	              	</td>
								</tr>
							</s:if>
						</table>

						<div class="clear"></div>
						<div class="blank12"></div>
					</div>

					<div class="clear"></div>
					<div id="photo" class="blank12"></div>
					<div class="freeTrade_contnetL_show02">
						
						<div class="freeTrade_contnetL_show03_con">
							<p>
								<span class="font14 cOrange"><b>留言</b></span>
								<img src="images/freeTrade_line04.jpg" width="250" height="6" align="absmiddle" />
							</p>
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
									<form name="commentForm" action="/newHouse/estCommentList.ajax" method="post" >
										<s:if test="#session.USER!=null">
											<div id="commitDiv" >
												<p><textarea name="content" onfocus="this.value=''" onblur="if(this.value=='')this.value='我来评两句！'"
												 class="freeTrade_area">我来评两句！</textarea></p>
												<p class="right">
													<input type="button" name="Publish" id="Publish" onclick="f_commitComment()"
														class="freeTrade_button04" value="马上发表" />
												</p>
											</div>
											<div class="focusPic" id="loadingDiv2" style="text-align: center;display: none;" >
												<img src="<%=contextPath %>/images/loading2.gif" style="margin: 0 auto;" />
												<br />
												<font style="font-weight: bold;" >处理中...</font>
											</div>
										</s:if>
										<s:else>
											你不是会员，如想留言请先<a href="<%=contextPath %>/member/toRegister.action" target="blank" >注册</a>房上房会员
										</s:else>
										<input name="estateId" type="hidden" value="${estateId }" />
										<input name="type" type="hidden" value="3" />
										
										<input name="estCommentParameter._ne_estateId" type="hidden" value="${estateId }" />
										<input name="estCommentParameter._ne_type" type="hidden" value="3" />
										<input name="estCommentParameter._ne_status" type="hidden" value="1" />
										<s:hidden name="estCommentParameter.currentPage" id="currentPage" />
										<input name="estCommentParameter.maxResults" type="hidden" value="10" />
										
									</form>
								</aa:zone>
							</div>
						</div>
						
					</div>
				</div>
				<!-- right -->
				<div class="clear"></div>
				<div class="blank12"></div>
				<!-- foot -->
				<%@ include file="../CommonPage/Foot.jsp"%>
			</div>
	</body>
</html>
<script type="text/javascript" >
window.onload = function(){
	f_queryComment();
}
function f_queryComment(pageNum){
	document.forms["commentForm"].action = "/newHouse/estCommentList.ajax";
	if(pageNum){
		document.forms["commentForm"]["estCommentParameter.currentPage"].value = pageNum;
	}else{
		document.forms["commentForm"]["estCommentParameter.currentPage"].value = 1;
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
	document.forms["commentForm"].action = "/newHouse/commitComment.ajax";
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