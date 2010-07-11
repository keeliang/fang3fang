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
		<title>资金监管 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
		<script type="text/javascript" src="js/CollapsiblePanel.js"></script>
		<script type="text/javascript" src="../js/jquery.form.min.js"></script>
		<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
		<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>
		<script type="text/javascript"
			src="../js/Validate.jquery.validate.min.js"></script>
		<script type="text/javascript" src="../js/SelectAll.js"></script>
		<script type="text/javascript" src="../js/HistoryBack.js"></script>
		<script type="text/javascript" src="../js/DisplayClear.js"></script>		
		<script type="text/javascript" src="js/DisplayMessageJG.js"></script>
		<script type="text/javascript" src="js/Jqloan.js"></script>

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
					<span class="cOrange">资金监管</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>

				<div class="memberC_allRight02">
					<form action="/Fang3FangWeb/Access" method="post" name="JGForm"
						id="JGForm">
						<!-- right -->
							<p class="cGray02">
								<b>二手房交易资金监管申请表</b>
							</p>
							<div class="memberC_line"></div>
							<p>
								<b>卖房人信息 <span class="cOrange">(带*号为必填项)</span>
								</b>
							</p>
							<div class="memberC_line"></div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td>
										<label id="mfrxx" for="SellerName">
											<span class="cOrange">*</span> 卖房人姓名:
										</label>
										<input type="text" class="memberC_input01" name="SellerName"
											id="SellerName" />
									</td>

								</tr>
								<tr>
									<td>
										<label id="zjlx01" for="SellerDocumentTypeID">
											卖房人证件类型:
										</label>
										<select name="SellerDocumentTypeID" id="SellerDocumentTypeID">
											<option value="">
												请选择
											</option>
										</select>
									</td>

								</tr>
								<tr>
									<td>
										<label id="zjhm01" for="SellerDocumentNumber">
											卖房人证件号码:
										</label>
										<input type="text" class="memberC_input01"
											type="SellerDocumentNumber" id="SellerDocumentNumber" name="SellerDocumentNumber"/>
									</td>

								</tr>

							</table>
							<div class="blank10"></div>
							<p>
								<b>买房人信息 <span class="cOrange">(带*号为必填项)</span>
								</b>
							</p>
							<div class="memberC_line"></div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td>
										<label id="BuyerName" for="BuyerName">
											<span class="cOrange">*</span> 买房人姓名:
										</label>
										<input type="text" class="memberC_input01" name="BuyerName"
											id="BuyerName" />
									</td>

								</tr>
								<tr>
									<td>
										<label id="zjlx02" for="BuyerDocumentTypeID">
											买房人证件类型:
										</label>
										<select id="BuyerDocumentTypeID" name="BuyerDocumentTypeID">
											<option value="">
												请选择
											</option>
										</select>
									</td>

								</tr>
								<tr>
									<td>
										<label for="BuyerDocumentNumber" id="zjhm02">
											买房人证件号码:
										</label>
										<input id="BuyerDocumentNumber" name="BuyerDocumentNumber"
											type="text" class="memberC_input01" />
									</td>
								</tr>
							</table>
							<div class="blank10"></div>
							<p>
								<b>楼宇信息 <span class="cOrange">(带*号为必填项)</span>
								</b>
							</p>
							<div class="memberC_line"></div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td>
										<label id="jylydz" for="Address">
											<span class="cOrange">*</span> 交易楼宇地址:
										</label>
										<input type="text" class="memberC_input01" id="Address"
											name="Address" />
									</td>
								</tr>
								<tr>
									<td>
										<label id="fdchm" for="DocumentNumber">
											房地产证号码:
										</label>
										<input type="text" class="memberC_input01" id="DocumentNumber"
											name="DocumentNumber" />
									</td>
								</tr>
							</table>
							<div class="blank10"></div>
							<p>
								<b>资金监管信息 <span class="cOrange">(带*号为必填项)</span>
								</b>
							</p>
							<div class="memberC_line"></div>
						<input name="referaction" type="hidden" id="referAction"
							value="ApplyForJG" />
						<input name="useraction" type="hidden" id="useraction"
							value="Estates" />
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td>
										<label id="zjjg" for="Cost">
											<span class="cOrange">*</span> 资金监管金额:
										</label>
										<input name="Cost" id="Cost" type="text"
											class="memberC_input02" />
										元
									</td>
								</tr>
								<tr>
									<td>
										<label id="lxdh" for="MobilePhone">
											<span class="cOrange">*</span> 联系电话:
										</label>
										<input name="MobilePhone" id="MobilePhone" type="text"
											class="memberC_input01" />
									</td>

								</tr>

								<tr>
									<td>
										<label id="qtyq" for="Other">
											其它要求:
										</label>
										<textarea class="memberC_textarea" name="Other" id="Other"></textarea>
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
