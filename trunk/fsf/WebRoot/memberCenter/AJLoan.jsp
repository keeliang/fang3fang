<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。">
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C">
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)">
		<title>按揭贷款 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/Form.jquery.js"></script>
		<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
		<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>
		<script type="text/javascript"
			src="../js/Validate.jquery.validate.min.js"></script>
		<script type="text/javascript" src="../js/SelectAll.js"></script>
		<script type="text/javascript" src="../js/HistoryBack.js"></script>
		<script type="text/javascript" src="../js/DisplayClear.js"></script>
		<script type="text/javascript" src="js/DisplayMessageAJ.js"></script>
		<script type="text/javascript" src="js/Ajloan.js"></script>
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
					<span class="cOrange">按揭贷款</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>

				<div class="memberC_allRight02">
					<form action="/Fang3FangWeb/Access" method="post" name="AJForm"
						id="AJForm">
						<!-- right -->
						<p class="cGray02">
							<b>在线按揭贷款申请</b>
						</p>
						<div class="memberC_line"></div>
						<p>
							<b>借款人信息登记 <span class="cOrange">(带*号为必填项)</span> </b>
						</p>
						<div class="memberC_line"></div>
						<input name="referaction" type="hidden" id="referAction"
							value="ApplyForLoans" />
						<input name="useraction" type="hidden" id="useraction"
							value="Estates" />
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td>
									<label id="left_zsxm" for="Contacter">
										<span class="cOrange">*</span> 真实姓名:
									</label>
									<input id="Contacter" name="Contacter" type="text"
										class="memberC_input01" />
								</td>
								<td>
									<label id="xb">
										性别:
									</label>
									<input type="radio"  checked="checked" id="userSex" name="userSex" value="1"/>
									男&nbsp;&nbsp;
									<input type="radio"  id="userSex" name="userSex" value="0"/>
									女
								</td>
							</tr>
							<tr>
								<td>
									<label id="left_zjlx" for="DocumentTypeID">
										证件类型:
									</label>
									<select name="DocumentTypeID" id="DocumentTypeID">
										<option value="">
											请选择
										</option>
									</select>
								</td>
								<td>
									<label id="left_zjhm" for="DocumentNumber">
										证件号码:
									</label>
									<input type="text" name="DocumentNumber" id="DocumentNumber"
										class="memberC_input01" />
								</td>
							</tr>
							<tr>
								<td>
									<label id="left_gzdw" for="WorkPlace">
										工作单位:
									</label>
									<input type="text" id="WorkPlace" name="WorkPlace"
										class="memberC_input01" />
								</td>
								<td>
									<label id="left_yh" for="IsMarried">
										已婚:
									</label>
									<input type="radio"  checked="checked" id="isMarried" name="isMarried" value="1"/>
									是&nbsp;&nbsp;
									<input type="radio"  id="isMarried" name="isMarried" value="0"/>
									否
								</td>
							</tr>
							<tr>
								<td>
									<label id="left_sjhm">
										<span class="cOrange">*</span> 手机号码:
									</label>
									<input type="text" name="MobilePhone" id="MobilePhone"
										class="memberC_input01" />
								</td>
								<td>
									<label id="left_gddh">
										固定号码:
									</label>
									<input type="text" id="HomePhone" name="HomePhone"
										class="memberC_input01" />
								</td>
							</tr>
						</table>
						<div class="blank10"></div>
						<p>
							<b>贷款信息登记 <span class="cOrange">(必填)</span> </b>
						</p>
						<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td>
									<label id="dhje">
										贷款金额:
									</label>
									<input type="text" id="LoanMoney" name="LoanMoney"
										class="memberC_input02" />
									元
								</td>
								<td>
									<label id="dhqx">
										贷款期限:
									</label>
									<input type="text" id="LoanDueDate" name="LoanDueDate"
										class="memberC_input03" />
									年
								</td>
							</tr>
							<tr>
								<td>
									<label id="hhfs">
										还款方式:
									</label>
									<select name="RePayWayID" id="RePayWayID">
										<option value="">
											请选择
										</option>
									</select>
								</td>
								<td>
									&nbsp;
								</td>
							</tr>
							<tr>
								<td>
									<label id="jjyt" for="LoanToUse">
										借款用途:
									</label>
									<select name="LoanToUse" id="LoanToUse">
										<option value="">
											请选择
										</option>
									</select>
								</td>
								<td>
									&nbsp;
								</td>
							</tr>
						</table>
						<div class="blank10"></div>
						<p>
							<b>抵押物信息登记 <span class="cOrange">(必填)</span> </b>
						</p>
						<div class="memberC_line"></div>
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
							</tr>
							<tr>
								<td>
									<label id="left_sq" for="TownID">
										商圈:
									</label>
									<select name="TownID" id="TownID">
										<option value="">
											请选择
										</option>
									</select>
								</td>
								<td>
									<label id="left_fcxj" for="EstateType_EstateID">
										房产性质:
									</label>
									<select name="EstateType_EstateID" id="EstateType_EstateID">
										<option value="">
											请选择
										</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<label id="lpmc" for="PropertyName">
										楼盘/小区名称:
									</label>
									<input type="text" id="PropertyName" name="PropertyName"
										class="memberC_input04" />
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<label id="dz" for="Address">
										地址:
									</label>
									<input type="text" id="Address" name="Address"
										class="memberC_input04" />
								</td>
							</tr>
							<tr>
								<td>
									<label id="gzjg" for="EstateCost">
										购置价格:
									</label>
									<input type="text" id="EstateCost" name="EstateCost"
										class="memberC_input02" />
									万元
								</td>
								<td>
									<label id="DocumentCost" for="DocumentCost">
										产房证登记价格:
									</label>
									<input type="text" id="DocumentCost" name="DocumentCost"
										class="memberC_input02" />
									万元
								</td>
							</tr>
							<tr>
								<td>
									<label id="left_jqsj" for="DoneYear">
										竣工时间:
									</label>
									<input type="text" id="DoneYear" name="DoneYear"
										class="memberC_input05" />
									<label id="color_other">
										年
									</label>
									<input type="text" class="memberC_input03" id="DoneMonth"
										name="DoneMonth" />
									<label id="color_other">
										月
									</label>
								</td>
								<td>
									<label id="jzmz" for="Area">
										建筑面积:
									</label>
									<input type="text" name="Area" id="Area"
										class="memberC_input02" />
									m
									<sup>
										2
									</sup>
								</td>
							</tr>
						</table>
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
