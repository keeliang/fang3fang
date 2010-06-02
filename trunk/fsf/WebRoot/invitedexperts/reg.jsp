<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。" />
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C" />
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)" />
		<title>经纪人注册 - 房上房地产网</title>
		<link href="../member/css/style.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/Form.jquery.js"></script>
		<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
		<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>
		<script type="text/javascript"
			src="../js/Validate.jquery.validate.min.js"></script>
		<script type="text/javascript" src="js/Register.js"></script>
		<script type="text/javascript" src="js/check.js"></script>

	</head>
	<body>

		<div class="member_box">
			<!-- head -->
			<%@ include file="../CommonPage/Member_head.jsp"%>
		</div>
		<!-- content -->
		<div class="member_regContent">
			<div class="member_regContent_des">
				欢迎您注册房上房经纪人帐号，申请过程将不会收取您任何费用。您将享受更多房上房为您提供的功能、放心的会员服务。我们的服务热线是：020-84881393，020-84617393
			</div>
			<div class="member_regContent_show">
				<form action="/Fang3FangWeb/Access" method="post"
					name="ExpertsRegisterForm" id="ExpertsRegisterForm">
					<input name="referaction" type="hidden" id="referAction"
						value="AddExpertUser" />
					<input name="useraction" type="hidden" id="useraction"
						value="estate" />
					<p>
						注：
						<span class="cRed">*</span>为必填内容
					</p>
					<div class="member_regContent_showTitle">
						<b>基本信息 (必填)</b>
					</div>


					<p class="p_username">
						<label id="left">
							<span class="cRed">*</span>用户名：
						</label>
						<input name="UserName" type="text" id="UserName"
							onblur="validation(this.value)"
							class="member_regContent_showInput" />
						<label id="c_UserName"></label>
					</p>
					<p class="p_suggestive">
						<label>
							&nbsp;
						</label>
						<span class="cGray">1-12个字符，每个汉字或全角字符算2个字符。</span>
					</p>
					<p class="p_userpsw">
						<label id="left">
							<span class="cRed">*</span>密码：
						</label>
						<input name="UserPsw" type="password" id="UserPsw"
							class="member_regContent_showInput" />
					</p>
					<p class="p_suggestive">
						<label>
							&nbsp;
						</label>
						&nbsp;
						<span class="cGray">6-16个字符组成，但不能9位以下的纯数字。英文字符区分大小写。</span>
					</p>
					<p class="p_reuserpsw">
						<label id="left">
							<span class="cRed">*</span>重新输入密码：
						</label>
						<input name="ReUserPsw" type="password" id="ReUserPsw"
							onblur="password()" class="member_regContent_showInput" />
						<label id="c_password"></label>
					</p>


					<div class="blank12"></div>
					<div class="blank12"></div>

					<div class="member_regContent_showTitle">
						<b>个人信息</b>
					</div>
					<p class="NewP cGray">
						个人信息将涉及到您自己发布房源的联系，请您填写您自己的真实姓名、与联系手机号码。
					</p>
					<div class="blank12"></div>
					<p class="p_realname">
						<label id="left">
							<span class="cRed">*</span>真实姓名：
						</label>
						<input name="RealName" type="text" id="RealName"
							class="member_regContent_showInput" />
					</p>
					<p class="p_mobilephone">
						<label id="left">
							<span class="cRed">*</span>手机号码：
						</label>
						<input name="MobilePhone" type="text" id="MobilePhone"
							class="member_regContent_showInput" />
					</p>
					<p class="p_sex">
						<label id="left">
							性别：
						</label>
						<input name="Sex" type="radio" id="man" value="1"
							checked="checked" />
						男&nbsp;&nbsp;
						<input name="Sex" type="radio" id="woman" value="0" />
						女
					</p>
					<p class="p_company">
						<label id="left">
							<span class="cRed">*</span>所属公司：
						</label>
						<input type="text" name="company" id="RegCompany" />
					</p>
					<p class="p_area">
						<label id="left">
							<span class="cRed">*</span>负责区域：
						</label>
						<input type="text" name="area" id="RegArea" />
					</p>
					<p class="p_zyz">
						<label id="left">
							执业证：
						</label>
						<input type="text" name="zyz" />
					</p>

					<p class="p_qq">
						<label id="left">
							QQ号码：
						</label>
						<input name="QQ" type="text" id="QQ"
							class="member_regContent_showInput" />
					</p>
					<p class="p_email">
						<label id="left">
							E-mail：
						</label>
						<input name="QQ" type="text" id="QQ"
							class="member_regContent_showInput" />
					</p>
					<p class="p_dec">
						<label id="left">
							个人描述：
						</label>
						<input name="QQ" type="text" id="QQ"
							class="member_regContent_showInput" />
					</p>
					<p class="p_image">
						<label id="left">
							头像相片：
						</label>
						<SELECT name="Photo" id="Photo" size="1"
							class="member_regContent_showInput" MULTIPLE>
						</SELECT>
						<input type="button" name="selectfile" id="selectfile"
							value="选择文件" />
					</p>
					<p class="p_verification">
						<label id="left">
							<span class="cRed">*</span>验证码：
						</label>
						<input name="Verification" type="text" id="Verification"
							class="member_regContent_showInput02" />
						&nbsp;
						<img class="image" src="../CommonPage/image.jsp" width="60"
							height="20" align="absmiddle" />
					</p>
					<div class="member_regContent_tiaokuan">
						<input type="checkbox" name="Protocol" id="Protocol" />
						&nbsp;
						<span class="cGray">请查看并同意<a href="#">《房上房用户协议》</a> </span>
					</div>
					<p class="center">
						<input type="submit" name="Submit" id="Submit"
							class="member_regContent_submit" value="确认注册" />
					</p>
					<div class="member_regContent_done">
						<p>
							如果您已经是会员，请点击
							<a href="../member/login.jsp"><b>登录</b> </a>，进行下一步操作！
						</p>
					</div>
				</form>
			</div>
		</div>



		<div class="clear"></div>
		<div class="blank12"></div>
		<!-- foot -->
		<%@ include file="../CommonPage/Foot.jsp"%>

	</body>
</html>
