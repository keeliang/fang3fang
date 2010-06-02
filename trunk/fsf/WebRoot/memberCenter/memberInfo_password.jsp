<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C" />
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>个人基本信息 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
		<script src="js/jump.js" type="text/javascript"></script>

		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/Form.jquery.js"></script>
		<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
		<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>

		<script type="text/javascript" src="../js/Validate.jquery.validate.min.js"></script>	
		<script type="text/javascript" src="js/DisplayMessageMemberInfo.js"></script>
		<script type="text/javascript" src="js/ChangeMemberInfo.js"></script>
		<script type="text/javascript" src="js/Changepassword.js"></script>
		<script type="text/javascript" src="<%=contextPath %>/js/Form.jquery.js"></script>
	</head>
	<body>
		<div class="memberC_box">
			<!-- head -->
			<%@ include file="../CommonPage/memberC_head.jsp"%>

			<!-- guide -->
			<div class="guide">
				<p>
					您当前的所在位置：
					<a href="#">房上房</a> &gt;&gt;	<a href="index.jsp">会员中心</a> &gt;&gt;	<span class="cOrange">个人设置</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>

				<div class="memberInfo" id="a1" >
					<div class="memberInfo_nav">
						<ul>
							<li class="memberInfo_navOn modify">
								<a href="#" onclick="javascript:jumpTo(1);"><b>个人基本信息</b> </a>
							</li>
							<li class="memberInfo_navOut password">
								<a href="#;" onclick="javascript:jumpTo(2);"><b>修改密码</b> </a>
							</li>
						</ul>
					</div>
					<aa:zone name="userSave">
					<form action="/memberCenter/userSave.ajax" method="post" name="formItem">
						<input name="userId" type="hidden" value='${userId }' />
						<input name="userCode" type="hidden" value='${userCode }' />
						<input name="password" type="hidden" value='${password }' />
						<s:hidden name="cmd" value="edit" />
						<s:hidden name="question"/>
						<s:hidden name="answer"/>
						<s:hidden name="status" />
						<s:hidden name="userType" />
						<div id="loading1" align="center" style="display: none;" ><img src="<%=contextPath %>/images/Loading.gif"/><br/>处理中，请稍候...</div>
						<div id="msg1" align="center" ><s:actionmessage/></div>
						
						<div class="memberInfo_modify">
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td>
										<label><span class="cOrange">*</span> 真实姓名:</label>
										<s:textfield name="userName" cssClass="memberC_input01" theme="simple" />
									</td>
									<td>
										<label id="xb">性别:</label>
										<input type="radio" name="sex" id="sex1" value="1" <s:if test="sex==1">checked</s:if> />男
										<input type="radio" name="sex" id="sex2" value="2" <s:if test="sex==2">checked</s:if> />女
									</td>
								</tr>
								<tr>
									<td>
										<label id="left_sjhm"><span class="cOrange">*</span> 手机号码:</label>
										<s:textfield name="phone" cssClass="memberC_input01" theme="simple"  />
									</td>
									<td>
										<label id="left_gddh">固定号码:</label>
										<s:textfield name="tel" cssClass="memberC_input01" theme="simple"  />
									</td>
								</tr>
								<tr>
									<td>
										<label id="left_sjhm"><span class="cOrange">*</span> QQ:</label>
										<s:textfield name="qq" cssClass="memberC_input01" theme="simple"  />
									</td>
									<td>
										<label>邮箱:</label>
										<s:textfield name="email" cssClass="memberC_input01" theme="simple" />
									</td>
								</tr>
								<tr>
									<td>
										<label id="left_sjhm"><span class="cOrange">*</span> MSN:</label>
										<s:textfield name="msn" cssClass="memberC_input01" theme="simple"  />
									</td>
								</tr>
								<tr>
									<td>
										<label id="left_sjhm"><span class="cOrange">*</span> 省份:</label>
										<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="provinceId" onchange="f_chageProvince()" 
										listValue="itemName" listKey="itemKey" emptyOption="true" id="provinceId" cssClass="dropdown" theme="simple" />
									</td>
									<td>
										<label id="left_sjhm"><span class="cOrange">*</span> 城市:</label>
										<span id="cityTd"></span>
									</td>
								</tr>
								<tr>
									<td>
										<label id="left_sjhm"><span class="cOrange">*</span> 区:</label>
										<span id="districtTd"></span>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<label>地址:</label>
										<s:textfield name="address" cssClass="memberC_input04" theme="simple" />
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<label>相关相片:</label>
										<input type="button" value="上传图片" id="btnUpload" />
										<s:hidden name="imagePath" />
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<label>个人补充介绍:</label>
										<textarea class="memberC_textarea02" name="remark" >${remark }</textarea>
									</td>
								</tr>
							</table>
							<div class="blank10"></div>
							<div class="blank10"></div>
							<div class="blank10"></div>
							<div class="center"><input type="button" value="确认修改" onclick="f_userSave()" /></div>
							<div class="blank10"></div>
							<div class="blank10"></div>
							<p class="center cGray02">请完善您的个人详细资料，完善后将在发布信息时为您带来便捷的操作。</p>
						</div>
					</form>
					</aa:zone>
				</div>

				<div class="memberInfo" id="a2" style="display: block;" >
					<div class="memberInfo_nav">
						<ul>
							<li class="memberInfo_navOut modify">
								<a href="#" onclick="javascript:jumpTo(1);"><b>个人基本信息</b> </a>
							</li>
							<li class="memberInfo_navOn password">
								<a href="#" onclick="javascript:jumpTo(2);"><b>修改密码</b> </a>
							</li>
						</ul>
					</div>
						<aa:zone name="updatePassword">
						<form action="/memberCenter/updatePassword.ajax" method="post" name="updatePasswordForm" >
							<input name="userId" type="hidden" value='${USER.userId }' />
							<div id="loading2" align="center" style="display: none;" ><img src="<%=contextPath %>/images/Loading.gif"/><br/>处理中，请稍候...</div>
							<div id="msg2" align="center" ><s:actionmessage/></div>
							<div class="memberInfo_password">
								<table border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td colspan="2">
											<label>旧密码:</label>
											<input type="password" name="password" class="memberC_input01" />
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<label>新密码:</label>
											<input type="password" name="newPassword" id="newPassword" class="memberC_input01" />
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<label>确认密码:</label>
											<input type="password" name="confirmNewPassword" id="confirmNewPassword" class="memberC_input01" />
										</td>
									</tr>
								</table>
							</div>
							<div class="blank10"></div>
							<div class="blank10"></div>
							<div class="blank10"></div>
							<div class="center memberInfo_passwordB">
								<input type="button" value="修改密码" onclick="f_updatePassword()" />
							</div>
						</form>
					</aa:zone>
				</div>
			</div>
		</div>

		<div class="clear"></div>
		<div class="blank12"></div>
		<!-- foot -->
		<%@ include file="../CommonPage/Foot.jsp"%>
		<%@include file="/share/upload.jsp" %>
	</body>
</html>
<script type="text/javascript" >
$(function() {
	f_chageProvince(true);
});
function f_updatePassword(){
	ajaxAnywhere.formName = "updatePasswordForm";
	ajaxAnywhere.showLoadingMessage = function(){
		document.getElementById("loading2").style.display = "block";
		document.getElementById("msg2").style.display = "none";
	}
	ajaxAnywhere.hideLoadingMessage = function(){
		document.getElementById("loading2").style.display = "none";
		document.getElementById("msg2").style.display = "block";
	}
	ajaxAnywhere.getZonesToReload = function(){return "updatePassword";}
	ajaxAnywhere.submitAJAX();
}

function f_userSave(){
	ajaxAnywhere.formName = "formItem";
	ajaxAnywhere.showLoadingMessage = function(){
		document.getElementById("loading1").style.display = "block";
		document.getElementById("msg1").style.display = "none";
	}
	ajaxAnywhere.hideLoadingMessage = function(){
		document.getElementById("loading1").style.display = "none";
		document.getElementById("msg1").style.display = "block";
	}
	ajaxAnywhere.getZonesToReload = function(){return "userSave";}
	ajaxAnywhere.onAfterResponseProcessing = function(){f_chageProvince(true);}
	ajaxAnywhere.submitAJAX();
	f_chageProvince(true);
}

function f_chageProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","cityId",json.data,"itemKey","itemName","${cityId}");
		$("#cityTd").html(selectTag.toString());
		$("#districtTd").html("");
		if(isIndex)
			f_changeCity();
	},"json");
}

function f_changeCity(){
	if($("#provinceId").val()=="")
		return;
	if($("#cityId").val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#provinceId").val(),cityId:$("#cityId").val()},function(json){
		var selectTag = new SelectTag("districtId","districtId",json.data,"itemKey","itemName","${districtId}");
		$("#districtTd").html(selectTag.toString()+"<font color='red'>*</font>");
	},"json");
}
</script>

