<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<%@ include file="/share/validate.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C" />
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>个人基本信息 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
		<script src="js/jump.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
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
					<a href="<%=contextPath %>/main/index.jsp">房上房</a> &gt;&gt;	
					<a href="index.jsp">会员中心</a> &gt;&gt;	
					<span class="cOrange">个人设置</span>
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
								<a href="#" onclick="javascript:jumpTo(2);"><b>修改密码</b> </a>
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
						<div id="errorMsg"  align="left"  ><s:actionmessage/></div>
						
						<div class="memberInfo_modify">
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td>
										<label><span class="cOrange">*</span> 用户呢称:</label>
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
										<label id="left_sjhm">QQ:</label>
										<s:textfield name="qq" cssClass="memberC_input01" theme="simple"  />
									</td>
									<td>
										<label>邮箱:</label>
										<s:textfield name="email" cssClass="memberC_input01" theme="simple" />
									</td>
								</tr>
								<tr>
									<td>
										<label id="left_sjhm">MSN:</label>
										<s:textfield name="msn" cssClass="memberC_input01" theme="simple"  />
									</td>
									<td>
										<label id="left_sjhm"><span class="cOrange">*</span> 省份:</label>
										<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="provinceId" onchange="f_chageProvince()" 
										listValue="itemName" listKey="itemKey" emptyOption="true" id="provinceId" cssClass="dropdown" theme="simple" />
									</td>
								</tr>
								<tr>
									<td>
										<label id="left_sjhm"><span class="cOrange">*</span> 城市:</label>
										<span id="cityTd"></span>
									</td>
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
								<s:if test="#session.USER.userType==2">
									<tr>
										<td colspan="2">
											<label>相关相片:</label>
											<input type="button" value="上传图片" id="btnUpload" />
										</td>
									</tr>
								</s:if>
								<s:hidden name="imagePath" />
								<tr>
									<td colspan="2">
										<label>备注:</label>
										<textarea class="memberC_textarea02" name="remark" >${remark }</textarea>
									</td>
								</tr>
								
									<s:if test="#session.USER.userType==2">
									<tr>
										<td>
											<label><span class="cOrange">*</span>真实姓名:</label>
											<s:textfield name="realName" cssClass="memberC_input01" theme="simple" />
										</td>
										<td>
											<label id="left_sjhm"><span class="cOrange">*</span><s:text name="workProvinceId"/>:</label>
											<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="workProvinceId" onchange="f_chageWorkProvince()" 
											listValue="itemName" listKey="itemKey" emptyOption="true" id="workProvinceId" theme="simple" />
										</td>
									</tr>
									<tr>
										<td>
											<label id="left_sjhm"><span class="cOrange">*</span><s:text name="workCityId"/>:</label>
											<span id="workCityTd"></span>
										</td>
										<td>
											<label id="left_sjhm"><span class="cOrange">*</span><s:text name="workDistrictId"/>:</label>
											<span id="workDistrictTd"></span>
										</td>
									</tr>
									<tr>
										<td>
											<label><span class="cOrange">*</span>公司:</label>
											<s:textfield name="company" theme="simple"/>
										</td>
										<td>
											<label>等级:</label>
											<fsf:dictTranslate groupName="$expert_level" value="level" />
											<s:hidden name="level" />
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<label><span class="cOrange">*</span>执业证号:</label>
											<s:textfield name="license" theme="simple"/>
										</td>
									</tr>
									<tr>
										<td colspan="2" >
											<label>爱好:</label>
											<s:textfield name="hobby" theme="simple" size="60" />
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<label>荣誉:</label>
											<s:textfield name="glory" theme="simple" size="60"/>
										</td>
									</tr>
								</s:if>
							</table>
							<div class="center"><input type="button" value="确认修改" onclick="f_userSave()" /></div>
						</div>
					</form>
					</aa:zone>
				</div>

				<div class="memberInfo" id="a2" style="display: none;" >
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
											<input type="password" id="confirmNewPassword" class="memberC_input01" />
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
var UploadActionName = "<%=contextPath%>/memberCenter/userUploadFile.action";
$(function() {
	f_chageProvince(true);
	f_chageWorkProvince(true);
});
function f_updatePassword(){
	var np = document.forms["updatePasswordForm"].newPassword.value
	var cnp = document.getElementById("confirmNewPassword").value;
	if(np==""){
		alert("新密码不行为空");
		return;
	}
	if(np.length>30){
		alert("新密码不行超过30个字符");
		return;
	}
	if(cnp!=np){
		alert("确认密码和新密码不一致");
		return;
	}
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

function f_validate(){
	fromName = "formItem";
	//addfield("question","<s:text name="question"/>","String",true,30);
	//addfield("answer","<s:text name="answer"/>","String",true,30);
	addfield("userName","用户呢称","String",false,50);
	addfield("sex","<s:text name="sex"/>","Integer",false,3);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("address","<s:text name="address"/>","String",true,200);
	addfield("tel","<s:text name="tel"/>","String",true,20);
	addfield("phone","<s:text name="phone"/>","String",true,32);
	addfield("qq","<s:text name="qq"/>","String",true,20);
	addfield("msn","<s:text name="msn"/>","String",true,20);
	addfield("email","<s:text name="email"/>","Email",true,80);
	addfield("remark","<s:text name="remark"/>","String",true,65535);

	if($('#userType').val() == 2){
		addfield("realName","<s:text name="realName"/>","String",false,20);
		addfield("workProvinceId","<s:text name="workProvinceId"/>","Integer",false,10);
		addfield("workCityId","<s:text name="workCityId"/>","Integer",false,10);
		addfield("workDistrictId","<s:text name="workDistrictId"/>","Integer",false,10);
		addfield("company","<s:text name="company"/>","String",false,50);
		addfield("level","<s:text name="level"/>","String",true,20);
		addfield("license","<s:text name="license"/>","String",false,30);
		addfield("hobby","<s:text name="hobby"/>","String",true,300);
		addfield("glory","<s:text name="glory"/>","String",true,300);
	}
	return validate();
}

function f_userSave(){
	if(!f_validate()){
		return ;
	}
	ajaxAnywhere.formName = "formItem";
	ajaxAnywhere.showLoadingMessage = function(){
		document.getElementById("loading1").style.display = "block";
		document.getElementById("errorMsg").style.display = "none";
	}
	ajaxAnywhere.hideLoadingMessage = function(){
		document.getElementById("loading1").style.display = "none";
		document.getElementById("errorMsg").style.display = "block";
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
function f_chageWorkProvince(isIndex){
	if($("#workProvinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#workProvinceId").val()},function(json){
		var selectTag = new SelectTag("workCityId","workCityId",json.data,"itemKey","itemName","${workCityId}","f_changeWorkCity()");
		$("#workCityTd").html(selectTag.toString());
		if(isIndex)
			f_changeWorkCity();
	},"json");
}

function f_changeWorkCity(){
	if($("#workProvinceId").val()=="")
		return;
	if($("#workCityId").val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#workProvinceId").val(),cityId:$("#workCityId").val()},function(json){
		var selectTag = new SelectTag("workDistrictId","workDistrictId",json.data,"itemKey","itemName","${workDistrictId}");
		$("#workDistrictTd").html(selectTag.toString());
	},"json");
}
</script>

