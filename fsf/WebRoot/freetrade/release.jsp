<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp"%>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="自主交易 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>自主交易 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/style2.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script language="javascript" src="../js/showDiv.js"></script>
		<script src="js/swfobject_modified.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/jquery.pagination.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="../js/SearchMessage.js"></script>

		<script type="text/javascript" src="<%=contextPath%>/Search/js/search.js"></script>
		<style>
		.aaa{
			text-align: left;
		}
		</style>
	</head>
	<body>
		<div class="box">
			<!-- head -->
			<%@ include file="../CommonPage/Head.jsp"%>

			<div class="nav">
				<div class="navL">
					<div class="headMenu">
						<div class="headMenuLine"></div>
						<ul class="menuList">
							<li>
								<a href="<%=contextPath %>/main/index.jsp"><span>首页</span></a>
							</li>
							<li class="menuHere" >
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
								<a href="<%=contextPath %>/forum/index.jsp"><span>论坛</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/CoBank/index.jsp"><span>银行合作</span> </a>
							</li>
							<li>
								<a href="<%=contextPath %>/commerce/commerceIndex.action"><span>旺铺招租</span></a>
							</li>
							<li>
								<a href="<%=contextPath %>/invitedexperts/index.action"><span>专家顾问</span> </a>
							</li>
						</ul>
					</div>
				</div>
				<div class="navR">
					<s:if test="#session.USER==null" >
						<a href="<%=contextPath %>/member/toRegister.action" class="cYellow"> [注册会员] </a>
						<a href="<%=contextPath %>/member/login.jsp" class="cYellow">[登录]</a>
					</s:if>
					<s:else>
						您好！${USER.userCode }
						<a href="<%=contextPath %>/memberCenter/index.action" class="cYellow"> [会员中心] </a>
						<a href="<%=contextPath %>/CommonPage/ClearSession.jsp" class="cYellow">[注销]</a>
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

				<!-- A D -->
				<div class="info_img">
					<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
						width="898" height="90" id="FlashID" title="手机用户自主交易Flash">
						<param name="movie" value="images/Bank.swf" />
						<param name="quality" value="high" />
						<param name="wmode" value="opaque" />
						<param name="swfversion" value="8.0.35.0" />
						<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
						<param name="expressinstall" value="js/expressInstall.swf" />
						<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
						<!--[if !IE]>-->
						<object type="application/x-shockwave-flash" data="Bank.swf"
							width="898" height="90">
							<!--<![endif]-->
							<param name="quality" value="high" />
							<param name="wmode" value="opaque" />
							<param name="swfversion" value="8.0.35.0" />
							<param name="expressinstall" value="../swf/expressInstall.swf" />
							<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
							<div>
								<h4>
									此页面上的内容需要较新版本的 Adobe Flash Player。
								</h4>
								<p>
									<a href="http://www.adobe.com/go/getflashplayer"><img
											src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
											alt="获取 Adobe Flash Player" width="112" height="33" /> </a>
								</p>
							</div>
							<!--[if !IE]>-->
						</object>
						<!--<![endif]-->
					</object>
					<script type="text/javascript">
			<!--
			swfobject.registerObject("FlashID");
			//-->
			</script>
				</div>

			</div>

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- col04 -->
			<div class="col04">
				<p class="cGray02">
					<b>自主交易区--请选择
						<select onchange="f_changeInOut(this.value)" id="selectTradeType" >
							<option value="1" <%if("out".equals(request.getParameter("flag"))){ %>selected<%} %> >出租出售</option>
							<option value="2" <%if("in".equals(request.getParameter("flag"))){ %>selected<%} %> >求租求购</option>
						</select>
					</b>
				</p>
				
				<s:form name="formItemOut" action="estateOutOwnReleaseSave" namespace="/freetrade" method="post" theme="simple">
					<s:hidden name="estateId"/>
					<!-- 自主 -->
					<s:hidden name="tradeType" value="1"/>
					<input type="hidden" name="examine" value="0" />
					<p class="cGray02">
						<b>出售出租信息</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有效期：
						<input name="effective" type="text" size="2" value="${effective }" />天
					</p>
					<div class="memberC_line"></div>
					<p id="left_title">
						<b>楼盘基本信息 <span class="cOrange">(必填)</span>
						</b>
					</p>
					<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="90%">
							<tr>
								<td class="aaa" style="width: 15%" >
									<label class="est_label" for="estateName">房源名称:</label>
								</td>
								<td colspan="3" class="aaa" >
									<s:textfield name="estateName" id="estateName" cssClass="memberC_input04"/>
									<input type="button" value="上传图片" id="btnUpload" />
									<s:hidden name="imagePath" />
								</td>
							</tr>
						  <tr>
						  	<td class="aaa" style="width: 15%" >
						  		<label class="est_label" for="provinceId">省份:</label>
						  	</td>
						  	<td class="aaa">
						  		<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" cssStyle="width:140px;"
						  		id="provinceIdO" name="provinceId" emptyOption="true" onchange="f_changeProvince('O')" listValue="itemName" listKey="itemKey"/>
						  	</td>
						    <td class="aaa" style="width: 15%" >
						    	<label class="est_label" for="cityIdO">城市:</label>
								</td>
								<td class="aaa" id="cityTdO">
						
								</td>
						  </tr>
						  <tr>
								<td class="aaa">
									<label class="est_label" for="districtId">区域:</label>
						    </td>
						    <td class="aaa" id="districtTdO">
						
						    </td>
						    <td class="aaa">
									<label class="est_label" for="area">商圈:</label>
						    </td>
						    <td class="aaa" id="areaTdO">
						
						    </td>
						  </tr>
						  <tr>
								<td class="aaa">
									<label class="est_label" for="area">面积:</label>
						    </td>
						    <td class="aaa">
						    	<s:textfield name="area" id="area" cssClass="memberC_input08"/>m<sup>2</sup>
						    </td>
						    <td class="aaa">
									<label class="est_label" for="practicalArea" >实用面积:</label>
						    </td>
						    <td class="aaa">
						    	<s:textfield name="practicalArea" id="practicalArea" cssClass="memberC_input08"/>m<sup>2</sup>
						    </td>
						  </tr>
						  <tr>
								<td class="aaa">
									<label class="est_label" for="estateType">房源类型:</label>
						    </td>
						    <td class="aaa">
						    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" cssStyle="width:140px;"
						    	id="estateType" name="estateType" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						    <td class="aaa">
									<label class="est_label" >户型:</label>
						    </td>
						    <td class="aaa">
						    	<s:textfield name="hall" cssClass="memberC_input06" />厅
									<s:textfield name="bedroom" cssClass="memberC_input06" />室
									<s:textfield name="toilet" cssClass="memberC_input06" />卫
									<s:textfield name="porch" cssClass="memberC_input06" />阳
						    </td>
						  </tr>
						  <tr>
								<td class="aaa">
									<label class="est_label" for="palaceId">楼盘:</label>
						    </td>
						    <td class="aaa" colspan="3">
						    	<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#est_palace')" name="palaceId" 
									cssStyle="width:140px;" emptyOption="true" listValue="itemName" listKey="itemKey"/>
						    </td>
						  </tr>
						  <tr>
								<td class="aaa">
									<label class="est_label" for="address">地址:</label>
						    </td>
						    <td class="aaa" colspan="3">
						    	<s:textfield id="address" name="address" cssClass="memberC_input04" />
						    </td>
						  </tr>
						  <tr>
								<td class="aaa">
									<label class="est_label" for="totalFloor">总楼层:</label>
						    </td>
						    <td class="aaa">
						    	<s:textfield	name="totalFloor" cssClass="memberC_input08"/>
						    </td>
						    <td class="aaa">
									<label class="est_label" for="floor">楼层:</label>
						    </td>
						    <td class="aaa">
						    	<s:textfield	name="floor" cssClass="memberC_input08"/>
						    </td>
						  </tr>
						  <tr>
								<td class="aaa">
									<label class="est_label" for="isLift">是否电梯房:</label>
						    </td>
						    <td class="aaa">
						    	<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$is_lift')" cssStyle="width:140px;"
								 	id="isLift" name="isLift" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						    <td class="aaa">
									<label class="est_label" for="toward">朝向:</label>
						    </td>
						    <td class="aaa">
						    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward',null,'0')" cssStyle="width:140px;"
								 	id="toward" name="toward" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						  </tr>
						  <tr>
								<td class="aaa">
									<label class="est_label" for="fitment">装修:</label>
						    </td>
						    <td class="aaa">
						    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment',null,'0')" cssClass="dropdown"
								 	id="fitment" name="fitment" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						    <td class="aaa">
									<label class="est_label" for="device">家电设备:</label>
						    </td>
						    <td class="aaa">
							    <s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$device',null,'0')" cssClass="dropdown"
								 	id="device" name="device" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						  </tr>
						  <tr>
								<td class="aaa" >
									<label class="est_label" for="manageCost">管理费:</label>
						    </td>
						    <td class="aaa">
						    	<s:textfield name="manageCost" id="manageCost" cssClass="memberC_input08" />元/平方米·月
						    </td>
						    <td class="aaa" >
									<label class="est_label" for="tradeMode">交易方式:</label>
						    </td>
						    <td class="aaa" >
						    	<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$out_trade_mode',null,'0;4;5')" cssStyle="width:140px;"
						  		name="tradeMode" id="tradeMode" listValue="itemName" listKey="itemKey" emptyOption="true" onchange="f_chageTradeModeO()"/>
						    </td>
						  </tr>
						</table>
						
						<div id="saleDivO" style="display: none;">
							<div class="blank10" ></div>
							<p id="left_title">
								<b>楼盘出售信息 <span class="cOrange">(出售楼盘必填)</span></b>
							</p>
							<div class="memberC_line"></div>
						</div>
						<table border="0" cellpadding="0" cellspacing="0" width="90%" id="saleTblO" style="display: none;">
							<tr>
								<td class="aaa" style="width: 15%" >
									<label class="est_label" for="estateCardNo">房产证号</label>:
						    </td>
						    <td class="aaa" >
						    	<s:textfield	name="estateCardNo" id="estateCardNo" cssClass="memberC_input01"/>
						    </td>
						    <td class="aaa" style="width: 15%">
									<label class="est_label" for="buildYear">建筑年份</label>:
						    </td>
						    <td class="aaa" >
						    	<s:textfield name="buildYear" id="buildYear" cssClass="memberC_input01"/>
						    </td>
						  </tr>
						  <tr>
						  	<td class="aaa" >
						  		<label class="est_label" for="card5year">房产证是否满5年</label>:
						  	</td>
						  	<td class="aaa" >
						  		<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$yes_no')"
						  		name="card5year" id="card5year" listValue="itemName" listKey="itemKey" cssClass="dropdown"/>
						  	</td>
						  	<td class="aaa" >
						  		<label class="est_label" for="salePrice">售价</label>
						  	</td>
						  	<td class="aaa" >
						  		<s:textfield name="salePrice" id="salePrice" cssClass="memberC_input08" />元
								</td>
						  </tr>
						  <tr>
								<td class="aaa" >
						  		<label class="est_label" for="develop">开发商</label>
						  	</td>
						  	<td class="aaa" colspan="3" >
						  		<s:textfield name="develop" id="develop" cssClass="memberC_input04" />
								</td>
						  </tr>
						</table>
						
						<div id="rentDivO" style="display: none;">
							<div class="blank10"></div>
							<p id="left_title">
								<b>楼盘出租信息 <span class="cOrange">(出租楼盘必填)</span>
								</b>
							</p>
						</div>
						<div class="memberC_line"></div>
						<table width="90%" border="0" cellspacing="0" cellpadding="0" id="rentTblO" style="display: none;">
							<tr>
						  	<td class="aaa" style="width: 15%" >
						  		<label class="est_label" for="rentPrice">租价</label>
								</td>
								<td class="aaa" >
						  		<s:textfield name="rentPrice" id="rentPrice" cssClass="memberC_input08" />元/月
								</td>
								<td class="aaa" style="width: 15%" >
									<label class="est_label" for="minMonth">最少租期</label>
								</td>
								<td class="aaa" >
									<s:textfield name="minMonth" id="minMonth" cssClass="memberC_input08" />
								</td>
							</tr>
							<tr>
								<td class="aaa" >
						  		<label class="est_label" for="deposit">押金</label>
								</td>
								<td class="aaa" >
									<s:textfield name="deposit" id="deposit" cssClass="memberC_input08" />元	
								</td>
								<td class="aaa" >
						  		<label class="est_label" for="otherCost">其他收费</label>
								</td>
								<td class="aaa" >
									<s:textfield name="otherCost" id="otherCost" cssClass="memberC_input08" />元/月
								</td>
							</tr>
							<tr>
								<td class="aaa" >
						  		<label class="est_label" for="waterCost">水费</label>
								</td>								
								<td class="aaa" colspan="3">
									<input type="text" onchange="f_changeCost(this)" 
										<s:if test="waterCost==-1">readonly class="readonly" value=""</s:if>
										<s:else>value="${electricCost }" class="memberC_input08"</s:else> 
									/>元/度
									<input type="checkbox" <s:if test="waterCost==-1">checked</s:if> onclick="f_changeCost(this)" />
									<label for="waterCost">按当地政府标准</label>
									<s:hidden name="waterCost" id="waterCost" />
								</td>
						  </tr>
						  <tr>
								<td class="aaa" >
						  		<label class="est_label" for="electricCost">电费</label>
								</td>
								<td class="aaa" colspan="3">
									<input type="text" onchange="f_changeCost(this)" 
										<s:if test="electricCost==-1">readonly class="readonly" value=""</s:if>
										<s:else>value="${electricCost }" class="memberC_input08"</s:else> 
									/>元/度
									<input type="checkbox" <s:if test="electricCost==-1">checked</s:if> onclick="f_changeCost(this)" />
									<label for="electricCost">按当地政府标准</label>
									<s:hidden name="electricCost" id="electricCost" />
								</td>
						  </tr>
						</table>
						
						<s:if test="cmd!='new'">
							<div class="blank10"></div>
							<p id="left_title">
								<b>联系方式</b>
							</p>
							<div class="memberC_line"></div>
							<table border="0" cellpadding="0" cellspacing="0" width="90%" id="saleTbl" >
								<tr>
									<td class="aaa" style="width: 15%" >
										<label class="est_label" >联系人</label>:
							    </td>
							    <td class="aaa" >
										<s:textfield name="contactUser.userName" cssClass="memberC_input01" />	
							    </td>
									<td class="aaa" style="width: 15%" >
										<label class="est_label" >手机</label>:
							    </td>
							    <td class="aaa" >
										<s:textfield name="contactUser.userCode" cssClass="memberC_input01" />    	
							    </td>
							  </tr>
							  <tr>
									<td class="aaa" >
										<label class="est_label" >登录密码</label>:
							    </td>
							    <td class="aaa" >
										<s:password name="contactUser.password" cssClass="memberC_input01" />    	
							    </td>
									<td class="aaa" >
										<label class="est_label" >确认密码</label>:
							    </td>
							    <td class="aaa" >
										<input id="" class="memberC_input01" />
							    </td>
							  </tr>
							</table>
						</s:if>
						
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="memberC_button">
							<input class="memberC_button1" type="submit" value="保存"  />&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
					</s:form>
					
					<s:form name="formItemIn" action="estateInOwnReleaseSave" namespace="/freetrade" method="post" theme="simple" cssStyle="display:none;" >
						<s:hidden name="tradeType" value="1"/>
						<s:hidden name="estateId" />
						<p class="cGray02">
							<b>求购求租信息</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有效期：
							<input name="effective" type="text" size="2" value="${effective }" />天
						</p>
						<div class="memberC_line"></div>
						<p id="left_title">
							<b>楼盘基本信息 <span class="cOrange">(必填)</span></b>
						</p>
						<div class="memberC_line"></div>
							<table border="0" cellpadding="0" cellspacing="0" width="90%">
								<tr>
									<td class="aaa" style="width: 15%" >
										<label class="est_label" for="title">标题:</label>
									</td>
									<td class="aaa" colspan="3">
										<s:textfield name="title" id="title" cssClass="memberC_input04"/>
									</td>
								</tr>
								<tr>
							  	<td class="aaa" style="width: 15%" >
							  		<label class="est_label" for="provinceId">省份:</label>
							  	</td>
							  	<td class="aaa">
							  		<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" cssClass="dropdown" 
							  		id="provinceIdI" name="provinceId" emptyOption="true" onchange="f_changeProvince('I')" listValue="itemName" listKey="itemKey"/>
							  	</td>
							    <td class="aaa" style="width: 15%" >
							    	<label class="est_label" for="cityId">城市:</label>
									</td>
									<td class="aaa" id="cityTdI">
									
									</td>
							  </tr>
							  <tr>
									<td class="aaa" >
										<label class="est_label" for="districtId">区域:</label>
										
							    </td>
							    <td class="aaa" id="districtTdI">
							    
							    </td>
							    <td class="aaa">
										<label class="est_label" for="area">商圈:</label>
										
							    </td>
							    <td class="aaa" id="areaTdI">
							    
							    </td>
							  </tr>
							  <tr>
									<td class="aaa">
										<label class="est_label">面积:</label>
									</td>
									<td class="aaa">
										<s:textfield name="areaFrom" cssClass="memberC_input08"/>m<sup>2</sup>到<s:textfield name="areaTo" cssClass="memberC_input08"/>m<sup>2</sup>
									</td>
								</tr>
								<tr>
									<td class="aaa">
										<label class="est_label" for="estateType">房源类型:</label>
							    </td>
							    <td class="aaa">
							    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" cssClass="dropdown"
							    	id="estateType" name="estateType" emptyOption="true" listValue="itemName" listKey="itemKey" />
							    </td>
							    <td class="aaa">
										<label class="est_label" >户型:</label>
							    </td>
							    <td class="aaa">
							    	<s:textfield name="hall" cssClass="memberC_input06" />厅
										<s:textfield name="bedroom" cssClass="memberC_input06" />室
										<s:textfield name="toilet" cssClass="memberC_input06" />卫
										<s:textfield name="porch" cssClass="memberC_input06" />阳
							    </td>
							  </tr>
								<tr>
									<td class="aaa">
										<label class="est_label" for="isLift">是否要电梯房:</label>
									</td>
									<td class="aaa">
										<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$is_lift')" cssClass="dropdown"
									 	id="isLift" name="isLift" emptyOption="true" listValue="itemName" listKey="itemKey" />
									</td>
									<td class="aaa">
										<label class="est_label" for="toward">朝向:</label>
									</td>
									<td class="aaa">
										<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward')" cssClass="dropdown"
									 	id="toward" name="toward" emptyOption="true" listValue="itemName" listKey="itemKey" />
									</td>
								</tr>
								<tr>
									<td class="aaa">
										<label class="est_label" for="fitment">装修:</label>
									</td>
									<td class="aaa">
										<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment',null,'6')" cssClass="dropdown"
									 	id="fitment" name="fitment" emptyOption="true" listValue="itemName" listKey="itemKey" />
									</td>
									<td class="aaa">
										<label class="est_label" for="device">家电设备:</label>
									</td>
									<td class="aaa">
										<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$device',null,'4')" cssClass="dropdown"
									 	id="device" name="device" emptyOption="true" listValue="itemName" listKey="itemKey" />
									</td>
								</tr>
								<tr>
									<td class="aaa">
										<label class="est_label" for="tradeMode">交易方式:</label>
									</td>
									<td class="aaa">
										<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$in_trade_mode',null,'0;4;5')" cssClass="dropdown" emptyOption="true"
							  		name="tradeMode" id="tradeMode" listValue="itemName" listKey="itemKey" onchange="f_chageTradeModeI()"/>
									</td>
								</tr>
								<tr>
									<td class="aaa">
										<label class="est_label" for="remark">备注:</label>
									</td>
									<td class="aaa" colspan="3">
										<s:textfield name="remark" />
									</td>
								</tr>
							</table>
						
						<div id="saleDivI" style="display: none;">
							<div class="blank10"></div>
							<p id="left_title" >
								<b>楼盘求售信息<span class="cOrange">(求售楼盘必填)</span></b>
							</p>
							<div class="memberC_line"></div>
						</div>
						<table border="0" cellpadding="0" cellspacing="0" width="90%" id="saleTblI" style="display: none;">
							<tr>
								<td class="aaa" style="width: 15%" >
									<label class="est_label" >售价:</label>
								</td>
								<td class="aaa">
									<s:textfield name="buyPriceFrom" />元-<s:textfield name="buyPriceTo" />元
								</td>
							</tr>
						</table>
						
						<div id="rentDivI" style="display: none;">
							<div class="blank10"></div>
							<p id="left_title">
								<b>楼盘求租信息<span class="cOrange">(求租楼盘必填)</span></b>
							</p>
							<div class="memberC_line"></div>
						</div>
						<table width="90%" border="0" cellspacing="0" cellpadding="0" id="rentTblI" style="display: none;">
							<tr>
								<td class="aaa" style="width: 15%" >
									<label class="est_label" >租价:</label>
								</td>
								<td class="aaa">
									<s:textfield name="rentPriceFrom" />元/月-<s:textfield name="rentPriceTo" />元/月
								</td>
							</tr>
						</table>
						
						<div class="blank10"></div>
						<p id="left_title">
							<b>联系方式 <span class="cOrange">(带*号为必填项)</span></b>
						</p>
						<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="90%">
							<tr>
								<td class="aaa" style="width: 15%" >
									<label> 联系人:</label>
								</td>
								<td class="aaa" >
						    	<s:textfield name="contactUser.userName" cssClass="memberC_input01" />
								</td>
								<td class="aaa" style="width: 15%">
									<label> 手机号码:</label>
								</td>
								<td class="aaa" >
									<s:textfield name="contactUser.userCode" cssClass="memberC_input01" />    	
								</td>
							</tr>
							<tr>
								<td class="aaa" >
									<label>帐号密码:</label>
								</td>
								<td class="aaa" >
										<s:password name="contactUser.password" cssClass="memberC_input01" />    	
								</td>
								<td class="aaa" >
									<label>确认密码:</label>
								</td>
								<td class="aaa" >
									<input id="" class="memberC_input01" />
								</td>
							</tr>
						</table>
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="memberC_button">
							<input class="memberC_button1" type="submit" value="保存" />&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
					</s:form>
			</div>
			
			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- col05 -->

			<div class="clear"></div>
			<div class="blank12"></div>
			<!-- foot -->

			<%@ include file="../CommonPage/Foot.jsp"%>

		</div>
	</body>
</html>
<script type="text/javascript">
window.onload = function(){
	f_chageTradeModeO();
	if(document.getElementById("selectTradeType").value == "2"){
		document.forms[0].style.display = "none";
		document.forms[1].style.display = "block";
	}else{
		document.forms[0].style.display = "block";
		document.forms[1].style.display = "none";
	}
}
function f_changeInOut(v){
	if(v=="1"){
		document.forms[0].style.display = "block";
		document.forms[1].style.display = "none";
	}else{
		document.forms[0].style.display = "none";
		document.forms[1].style.display = "block";
	}
}

function f_chageTradeModeO(){
	var obj = document.forms[0].tradeMode;
	if(obj.value==1){
		$('#rentDivO').show();
		$('#rentTblO').show();
		$('#saleDivO').hide();
		$('#saleTblO').hide();
	}else if(obj.value==2){
		$('#rentDivO').hide();
		$('#rentTblO').hide();
		$('#saleDivO').show();
		$('#saleTblO').show();
	}else if(obj.value==3){
		$('#rentDivO').show();
		$('#rentTblO').show();
		$('#saleDivO').show();
		$('#saleTblO').show();
	}else{
		$('#rentDivO').hide();	
		$('#rentTblO').hide();
		$('#saleDivO').hide();
		$('#saleTblO').hide();
	}
}
function f_chageTradeModeI(){
	var obj = document.forms[1].tradeMode;
	if(obj.value==1){
		$('#rentDivI').show();
		$('#rentTblI').show();
		$('#saleDivI').hide();
		$('#saleTblI').hide();
	}else if(obj.value==2){
		$('#rentDivI').hide();
		$('#rentTblI').hide();
		$('#saleDivI').show();
		$('#saleTblI').show();
	}else if(obj.value==3){
		$('#rentDivI').show();
		$('#rentTblI').show();
		$('#saleDivI').show();
		$('#saleTblI').show();
	}else{
		$('#rentDivI').hide();	
		$('#rentTblI').hide();
		$('#saleDivI').hide();
		$('#saleTblI').hide();
	}
}

function f_changeProvince(v){
	if($("#provinceId"+v).val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId"+v).val()},function(json){
		var selectTag = new SelectTag("cityId"+v,"cityId",json.data,"itemKey","itemName","",'f_changeCity("'+v+'")');
		$("#cityTd"+v).html(selectTag.toString());
	},"json");
}
function f_changeCity(v){
	if($("#provinceId"+v).val()=="")
		return;
	if($("#cityId"+v).val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#provinceId"+v).val(),cityId:$("#cityId"+v).val()},function(json){
		var selectTag = new SelectTag("districtId"+v,"districtId",json.data,"itemKey","itemName","",'f_changeDistrict("'+v+'")');
		$("#districtTd"+v).html(selectTag.toString());
	},"json");
}

function f_changeDistrict(v){
	if($("#provinceId"+v).val()=="")
		return;
	if($("#cityId"+v).val()=="")
		return;
	if($("#districtId"+v).val()=="")
		return;
	$.post("getBusinessareaList.action",{provinceId:$("#provinceId"+v).val(),cityId:$("#cityId"+v).val(),districtId:$("#districtId"+v).val()},function(json){
		var selectTag = new SelectTag("areaId"+v,"areaId",json.data,"itemKey","itemName","");
		$("#areaTd"+v).html(selectTag.toString());
	},"json");
}

function f_changeCost(obj){
	var o = $(obj.parentNode).find("input[type='text']");
	if(obj.type=="checkbox"){
		o.attr("readonly",obj.checked);
		o.val("");
		if(obj.checked){
			o.addClass("readonly");
			o.removeClass("memberC_input08");
			$(obj.parentNode).find("input[type='hidden']").val("-1");
		}else{
			o.addClass("memberC_input08");
			o.removeClass("readonly");
			$(obj.parentNode).find("input[type='hidden']").val("");
		}
	}else if(obj.type=="text"){
		$(obj.parentNode).find("input[type='hidden']").val(obj.value)
	}
}
</script>