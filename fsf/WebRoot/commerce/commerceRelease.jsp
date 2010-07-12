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
<script type="text/javascript" src="<%=contextPath %>/js/jquery.form.min.js"></script>
</head>
<body style="background-color:#FFFFFF;font-size: 12px;">

<%@include file="/commerce/commerceHeader.jsp" %>

<s:form action="commerceReleaseSave" namespace="/commerce" name="formItem" id="formItem" theme="simple" method="post" onsubmit="return f_validate()" >
<s:hidden name="cmd" />
<s:hidden name="ip" />
<s:hidden name="createUserId" />
<s:hidden name="updateUserId" />
<s:hidden name="createTime" />
<s:hidden name="updateTime" />
<s:hidden name="status" />

<div>
	<table width="65%" border="0" align="left" cellspacing="0" bordercolor="#ffffff" bgcolor="#FFFFFF">
		<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
		<tr><td colspan="2" >
			<div id="errorMsg" ><s:actionmessage /><s:actionerror/><s:fielderror/></div></td>
		</tr>
	  <tr>
			<td class="contentColumnNameTd"><s:text name="commerceType"/>：</td>
			<td>
				<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$commerce_type')" cssClass="dropdown"
 				id="commerceType" name="commerceType" emptyOption="false" listValue="itemName" listKey="itemKey" />
 				<font color="red">*</font>
			</td>
    </td>
	</tr>
	<tr>
		<td class="contentColumnNameTd"><s:text name="title"/>：</td>
		<td><s:textfield name="title" /><font color="red">*</font><input type="button" value="上传图片" id="btnUpload" /></td>
		<s:hidden name="imagePath" />
	</tr>
	<tr>
		<td class="contentColumnNameTd"><s:text name="content"/>：</td>
		<td><s:textarea name="content" rows="4" cols="35"/></td>
	</tr>
	<tr>
		<td style="text-align:right"><span class="label">位置：</span></td>
		<td>
			<span>
				<s:text name="provinceId"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" cssClass="dropdown" 
  			id="provinceId" name="provinceId" emptyOption="true" onchange="f_changeProvince()" listValue="itemName" listKey="itemKey"/>
			</span><br>
			<span>
				<s:text name="cityId"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="citySpan"></span>
			</span><br/>
			<span>
				<s:text name="districtId"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="districtSpan"></span>
			</span><br/>
			<span>
				<s:text name="areaId"/>
				<span id="areaSpan"></span>
			</span>
		</td>
	</tr>
	<tr>
		<td class="contentColumnNameTd"><s:text name="address"/>：</td>
		<td><s:textfield name="address" size="35"/></td>
	</tr>
	<tr>
		<td class="contentColumnNameTd"><s:text name="contacter"/>：</td>
		<td><s:textfield name="contactUser.userName" /></td>
	</tr>
	<tr>
		<td class="contentColumnNameTd"><s:text name="contactTel"/>：</td>
		<td><s:textfield name="contactUser.phone" /></td>
	</tr>
	<tr>
		<td class="contentColumnNameTd">密码：</td>
		<td><s:password name="contactUser.password" /></td>
	</tr>
	<tr>
		<td class="contentColumnNameTd">确认密码：</td>
		<td><input type="password" id="confirmPassword"/></td>
	</tr>
	<tr>
		<td></td>
		<td align="center" height="44">
			<input type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
			<input type="button" onclick="javascript:history.back();" value=" 返 回 "/>
		</td>
	</tr>
</table>
</s:form>
<div class="clear"></div>
  <div class="blank12"></div>
<div>
<%@ include file="/CommonPage/Foot.jsp" %>
</div>
<%@include file="/share/upload.jsp" %>
</body>
</html>
<script type="text/javascript">
var UploadActionName = "<%=contextPath%>/commerce/uploadFile.action";
$(function() {
	f_changeProvince(true);
});

function f_validate(){
	var p = document.forms["formItem"]["contactUser.password"].value;
	var cp = document.getElementById("confirmPassword").value;
	if(p!=cp){
		alert("密码和确认密码不一致");
		return false；
	}
	fromName = "formItem";
	addfield("title","<s:text name="title"/>","String",false,50);
	addfield("content","<s:text name="content"/>","String",false,65535);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("commerceType","<s:text name="commerceType"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	addfield("contactUser.userName","联系人","String",false,50);
	addfield("contactUser.password","密码","String",false,50);
	addfield("contactUser.phone","手机","String",false,32);
	return validate();
}

function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","cityId",json.data,"itemKey","itemName","${cityId}","f_changeCity()");
		$("#citySpan").html(selectTag.toString());
		if(isIndex)
			f_changeCity(isIndex);
	},"json");
}
function f_changeCity(isIndex){
	if($("#provinceId").val()=="")
		return;
	if($("#cityId").val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#provinceId").val(),cityId:$("#cityId").val()},function(json){
		var selectTag = new SelectTag("districtId","districtId",json.data,"itemKey","itemName","${districtId}","f_changeDistrict()");
		$("#districtSpan").html(selectTag.toString());
		if(isIndex)
			f_changeDistrict(isIndex);
	},"json");
}

function f_changeDistrict(isIndex){
	if($("#provinceId").val()=="")
		return;
	if($("#cityId").val()=="")
		return;
	if($("#districtId").val()=="")
		return;
	$.post("getBusinessareaList.action",{provinceId:$("#provinceId").val(),cityId:$("#cityId").val(),districtId:$("#districtId").val()},function(json){
		var selectTag = new SelectTag("areaId","areaId",json.data,"itemKey","itemName","${areaId}");
		$("#areaSpan").html(selectTag.toString());
	},"json");
}
</script>