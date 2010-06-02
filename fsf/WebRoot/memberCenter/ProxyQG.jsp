<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"> 
<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)" > 
<title>委托交易区 - 求购信息 - 房上房地产网</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/Form.jquery.js"></script>
<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>
<script type="text/javascript" src="../js/Validate.jquery.validate.min.js"></script>
<script type="text/javascript" src="../js/SelectAll.js"></script>
<script type="text/javascript" src="../js/HistoryBack.js"></script>
<script type="text/javascript" src="../js/DisplayClear.js"></script>
<script type="text/javascript" src="js/DisplayMessageQG_Proxy.js"></script>
<script type="text/javascript" src="js/PQG.js"></script>
</head>
<body>
		<div class="memberC_box">
			<!-- head -->
			<%@ include file="../CommonPage/memberC_head.jsp"%>

			<!-- guide -->
			<div class="guide">
				<p>
					您当前的所在位置：
					<a href="#">房上房</a> &gt;&gt;
					<a href="index.jsp">会员中心</a> &gt;&gt;
					<span class="cOrange">委托交易区 - 求购信息</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>

				<!-- right -->
				<div class="memberC_allRight02">
					<!-- right -->
					<form action="/Fang3FangWeb/Access" method="post" name="PQGForm"
						id="PQGForm">
						<p class="cGray02">
							<b>委托交易区 - 求购信息</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有效期：
							<input name="DueDate" type="text" id="DueDate" size="2"
								value="30" />
							天
						</p>
						<div class="memberC_line"></div>
						<p id="left_title">
							<b>楼盘基本信息 <span class="cOrange">(必填)</span>
							</b>
						</p>
						<div class="memberC_line"></div>

						<input name="referaction" type="hidden" id="referAction"
							value="AddEstate" />
						<input name="useraction" type="hidden" id="useraction"
							value="Estates" />
						<input name="SellorRent" type="hidden" id="SellorRent" value="0" />
						<input name="RequireSellRent" type="hidden" id="RequireSellRent"
							value="1" />
						<input name="Consign" type="hidden" id="Consign" value="1" />
						<input type="hidden" name="status" id="status" value="0" />
						<table border="0" cellpadding="0" cellspacing="0" width="100%">

							<tr>
							<td>
									<label id="left_cs" for="ProvinceID">
										省份:
									</label>
									<select name="ProvinceID" id="ProvinceID">
										<option value="">
											请选择
										</option>
									</select>
								</td>
								<td>
									<label id="left_cs" for="CityID">
										城市:
									</label>
									<select name="CityID" id="CityID">
										<option value="">
											请选择
										</option>
									</select>
								</td>
								
							</tr>
							<tr>
							<td>
									<label id="left_dq" for="DistrictID">
										地区:
									</label>
									<select name="DistrictID" id="DistrictID">
										<option value="">
											请选择
										</option>
									</select>
								</td>
								<td colspan="2">
									<label id="left_sq" for="TownID">
										商圈:
									</label>
									<select name="TownID" id="TownID">
										<option value="">
											请选择
										</option>
									</select>
								</td>

							</tr>
							<tr>
								<td colspan="2">
									<label id="left_wylx" for="PropertyID">
										物业类型:
									</label>
									<select name="PropertyID" id="PropertyID">
										<option value="">
											请选择
										</option>
									</select>
								</td>

							</tr>
							<tr>
								<td colspan="">
									<label id="left_qwhx" for="Room">
										期望户型:
									</label>
									<input type="text" class="memberC_input06" name="Room"
										id="Room" />
									<label id="color_other">
										室
									</label>
									<input type="text" class="memberC_input06" name="Hall"
										id="Hall" />
									<label id="color_other">
										厅
									</label>
									<input type="text" class="memberC_input06" name="Toilet"
										id="Toilet" />
									<label id="color_other">
										卫
									</label>
									<input type="text" class="memberC_input06" name="Balcony"
										id="Balcony" />
									<label id="color_other">
										阳台
									</label>
								</td>
							</tr>

							<tr>
								<td colspan="2">
									<label id="left_qwmj" for="Area">
										期望面积:
									</label>
									<input type="text" class="memberC_input03" name="UseArea"
										id="UseArea" />
									<label id="color_other">
										米
										<sup>
											2
										</sup>
									</label>
									<label id="color_other">
										至
									</label>
									<input type="text" class="memberC_input03" name="Area"
										id="Area" />
									<label id="color_other">
										米
										<sup>
											2
										</sup>
									</label>
								</td>

							</tr>
							<tr>
								<td colspan="2">
									<label id="left_qwlc">
										期望楼层:
									</label>
									<input type="text" class="memberC_input03" name="FloorIs"
										id="FloorIs" />
									<label id="color_other">
										层
									</label>
									<label id="color_other">
										至
									</label>
									<input type="text" class="memberC_input03" name="FloorNum"
										id="FloorNum" />
									<label id="color_other">
										层
									</label>
								</td>

							</tr>
							<tr>
								<td colspan="2">
									<label id="left_qwjg" for="Cost">
										期望价格:
									</label>
									<input type="text" class="memberC_input03"
										name="ManagementFees" id="ManagementFees" />
									<label id="color_other">
										万元
									</label>
									<label id="color_other">
										至
									</label>
									<input type="text" class="memberC_input03" name="Cost"
										id="Cost" />
									<label id="color_other">
										万元
									</label>
								</td>

							</tr>
						</table>
						<div class="blank10"></div>
						<p id="left_title">
							<b>楼盘详细信息 <span class="cOrange">(选填)</span>
							</b>
						</p>
						<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td>
									<label id="left_fffs" for="PayWayID">
										付费方式:
									</label>
									<select name="PayWayID" id="PayWayID">
										<option value="">
											请选择
										</option>
									</select>
								</td>
								<td>
									<label id="left_zxbz" for="RenovationStandardID">
										装修标准:
									</label>
									<select name="RenovationStandardID" id="RenovationStandardID">
										<option value="">
											请选择
										</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									<label id="left_cx" for="Orientation">
										朝向:
									</label>
									<select name="Orientation" id="Orientation">
										<option value="">
											请选择
										</option>
									</select>
								</td>
								<td>
									<label id="left_fwnx">
										房屋年限:
									</label>
									<input type="text" class="memberC_input03" name="" id="" />
									<label id="color_other">
										年
									</label>
								</td>
							</tr>

							<tr>
								<td colspan="2">
									<label id="left_qtyq" for="Introduction">
										其它要求:
									</label>
									<textarea class="memberC_textarea02" name="Introduction"
										id="Introduction"></textarea>
								</td>
							</tr>
						</table>
						<div class="blank10"></div>
						<p id="left_title">
							<b>联系方式 <span class="cOrange">(带*号为必填项)</span>
							</b>
						</p>
						<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td>
									<label id="left_lxr" 　for="Contacter">
										<span class="cOrange">*</span> 联系人:
									</label>
									<input type="text" class="memberC_input01" name="Contacter"
										id="Contacter" value='<%=RealName%>' />
								</td>
								<td>
									<label id="left_sjhm">
										<span class="cOrange">*</span> 手机号码:
									</label>
									<input type="text" class="memberC_input01" name="MobilePhone"
										id="MobilePhone" />
								</td>
							</tr>
							<tr>
								<td>
									<label id="left_gddh">
										固定电话:
									</label>
									<input type="text" class="memberC_input01" name="HomePhone"
										id="HomePhone" />
								</td>
								<td>
									<label id="left_mail">
										QQ号码:
									</label>
									<input type="text" class="memberC_input01" id="Email"
										name="Email" />
								</td>
							</tr>
						</table>
						<input name="EstateMsgType" type="hidden" id="EstateMsgType"
							value="EMT3" />
						<input name="ManagementID" type="hidden" id="ManagementID"
							value="M001" />
						<input name="BuildingTypeID" type="hidden" id="BuildingTypeID"
							value="BT01" />
						<input name="EstateBelongID" type="hidden" id="EstateBelongID"
							value="EB01" />
						<input name="EstateTypeID" type="hidden" id="EstateTypeID"
							value="E001" />
						<input name="EstateBelongID" type="hidden" id="EstateBelongID"
							value="EB01" />
						<input name="ManagementID" type="hidden" id="ManagementID"
							value="M001" />
						<input name="RentTimeID" type="hidden" id="RentTimeID"
							value="RT01" />
						<input name="DepositID" type="hidden" id="DepositID" value="DD01" />
						<input name="ConsignID" type="hidden" id="ConsignID"
							value="CI0001" />
						<input name="DocumentTypeID" type="hidden" id="DocumentTypeID"
							value="DT01" />
						<input name="Rent" type="hidden" id="Rent" value="0" />
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="memberC_button">
							<input class="memberC_button1" type="submit" name="Submit"
								id="Submit" value="提交" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="memberC_button1" type="button" name="Return"
								id="Return" value="返回" />
						</div>
					</form>
				</div>

			</div>



		</div>

		<div class="clear"></div>
		<div class="blank12"></div>
		<!-- foot -->
		<%@ include file="../CommonPage/Foot.jsp"%>

		<script type="text/javascript">
<!--
var CollapsiblePanel1 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel1");
var CollapsiblePanel2 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel2");
var CollapsiblePanel3 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel3");
//-->
</script>

	</body>
</html>
