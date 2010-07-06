<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<%@ include file="/share/validate.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。" />
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C" />
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)" />
		<title>会员注册 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/Form.jquery.js"></script>
		<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
		<script type="text/javascript" src="js/Register.js"></script>
	</head>
	<body>

		<div class="member_box">
			<!-- head -->
			<%@ include file="../CommonPage/Member_head.jsp"%>
		</div>
		<!-- content -->
		<div class="member_regContent">
			<div class="member_regContent_des">
				欢迎您注册房上房会员帐号，申请过程将不会收取您任何费用。您将享受更多房上房为您提供的功能、放心的会员服务。我们的服务热线是：<s:property value="@chance.common.SystemConfigInitListener@sysConfig.get('service_tel1')" />，<s:property value="@chance.common.SystemConfigInitListener@sysConfig.get('service_tel2')" />
			</div>
			<div class="member_regContent_show">
				<form action="/member/register.action" method="post" name="formItem" id="formItem">
					<p>注：<span class="cRed">*</span>为必填内容</p>
					<div id="errorMsg" class="errorMsg"></div>
					<div class="member_regContent_showTitle">
						<b>基本信息 (必填)</b>
					</div>
					<p><s:actionmessage/></p>
					<p class="p_username">
						<label id="left">
							<span class="cRed">*</span>用户名：
						</label>
						<input name="userCode" type="text" id="userCode" onblur="" class="member_regContent_showInput" />
						<label id="c_UserName"></label>
					</p>
					<p class="p_suggestive">
						<label>&nbsp;</label>
						<span class="cGray">1-20个字符。</span>
					</p>
					<p class="p_userpsw">
						<label id="left">
							<span class="cRed">*</span>密码：
						</label>
						<input name="password" type="password" id="password" class="member_regContent_showInput" />
					</p>
					<p class="p_suggestive">
						<label>&nbsp;</label>
						<span class="cGray">不得多于16个字符组成。</span>
					</p>
					<p class="p_reuserpsw">
						<label id="left">
							<span class="cRed">*</span>重新输入密码：
						</label>
						<input name="confirmPassword" type="password" id="confirmPassword" class="member_regContent_showInput" />
						<label id="c_password"></label>
					</p>

					<div class="blank12"></div>
					<div class="blank12"></div>
					<div class="member_regContent_showTitle">
						<b>找回密码信息</b>
					</div>
					<p class="NewP cGray">
						您知道机密问题有什么用吗？当此帐号修改密码时会要求您回答机密问题，这将确保是您本人在进行密码修改操作，使您的帐号更安全。
					</p>
					<p class="cOrange NewP">
						下一步需要您再次确认此资料，所以请务必认真填写。
					</p>
					<div class="blank12"></div>
					<p class="p_question">
						<label id="left">
							<span class="cRed">*</span>问题：
						</label>
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#question')" 
						cssClass="member_regContent_showInput" name="question" id="question" 
						listValue="itemName" listKey="itemKey" emptyOption="true" />
					</p>
					<p class="p_answer">
						<label id="left"><span class="cRed">*</span>答案：</label>
						<input name="answer" type="text" id="answer" class="member_regContent_showInput" />
					</p>
					<p class="p_email">
						<label id="left"><span class="cRed">*</span>找回密码邮箱：</label>
						<input name="email" type="text" id="email" class="member_regContent_showInput" />
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
							真实姓名：
						</label>
						<input name="userName" type="text" id="userName" class="member_regContent_showInput" />
					</p>
					<p class="p_mobilephone">
						<label id="left">
							<span class="cRed">*</span>手机号码：
						</label>
						<input name="phone" type="text" id="phone" class="member_regContent_showInput" />
					</p>
					<p class="p_sex">
						<label id="left">性别：	</label>
						<input name="sex" type="radio" id="man" value="1"	checked="checked" />男&nbsp;&nbsp;
						<input name="sex" type="radio" id="woman" value="2" />女
					</p>
					<p class="p_qq">
						<label id="left">	QQ号码：</label>
						<input name="qq" type="text" id="qq" class="member_regContent_showInput" />
					</p>
					<p class="p_image">
						<label id="left">头像相片：</label>
						<select name="Photo" id="Photo" size="1" class="member_regContent_showInput" multiple="multiple" ></select>
						<input type="button" name="selectfile" id="selectfile" value="选择文件" />
					</p>
					<p class="p_verification">
						<label id="left">
							<span class="cRed">*</span>验证码：
						</label>
						<input name="validateCode" type="text" id="Verification" class="member_regContent_showInput02" />&nbsp;
						<img class="image" src="../CommonPage/image.jsp" width="60" 	height="20" align="absmiddle" />
					</p>
					<p>
						<label id="left">&nbsp;</label>
						<s:fielderror name="validateCode"/>
					</p>
					<div class="member_regContent_tiaokuan"></div>
					<p class="center" id="loading" style="display: none;">
						<img src="<%=contextPath %>/images/Loading.gif" /><br/>
						处理中，请稍候...
					</p>
					<p class="center">
						<input type="button" id="btnRegister" class="member_regContent_submit" value="确认注册" />
					</p>
					<div class="member_regContent_done">
						<p>如果您已经是会员，请点击<a href="../member/login.jsp"><b>登录</b></a>，进行下一步操作！</p>
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
<script type="text/javascript" >
function f_validate(){
	fromName = "formItem";
	addfield("userCode","<s:text name="userCode"/>","String",false,20);
	addfield("password","<s:text name="password"/>","String",false,16);
	addfield("question","<s:text name="question"/>","String",false,30);
	addfield("answer","<s:text name="answer"/>","String",false,30);
	addfield("userName","<s:text name="userName"/>","String",true,50);
	addfield("sex","<s:text name="sex"/>","Integer",false,3);
	addfield("phone","<s:text name="phone"/>","String",false,32);
	addfield("qq","<s:text name="qq"/>","String",true,20);
	addfield("email","<s:text name="email"/>","Email",true,80);
	return validate();
}
</script>