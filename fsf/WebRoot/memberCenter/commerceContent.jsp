<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>	
		<%@ include file="/share/validate.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。">
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C">
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)">
		<title>按揭贷款 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.form.min.js"></script>
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
					<span class="cOrange">商业旺铺</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>

				<div class="memberC_allRight02">
					<!-- right -->
					<s:form action="commerceSave" namespace="/memberCenter" method="post" name="formItem" id="formItem" theme="simple" onsubmit="return f_validate();" >
					<s:hidden name="cmd" />
					<s:hidden name="commerceId"/>
					<s:hidden name="status"/>
					
					<s:hidden name="commerceParameter.currentPage" id="currentPage"  />
					<s:hidden name="commerceParameter.maxResults" id="maxResults" />
					<input type="hidden" name="commerceParameter._ne_createUserId" value="${USER.userId }" />
					<s:hidden name="commerceParameter._dge_createTime" />
					<s:hidden name="commerceParameter._dle_createTime" />
					<input type="hidden" name="commerceParameter.sortColumns" value="createTime|DESC" />
						<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
						<p class="cGray02">
							<b>在线按揭贷款申请</b>
						</p>
						<br/>
						<div class="memberC_line"></div>
						<p>
							<b>借款人信息登记 <span class="cOrange">(必填)</span></b>
						</p>
						<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td><s:text name="commerceType"/>：</td>
								<td>
									<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$commerce_type')" cssClass="dropdown"
					 				id="commerceType" name="commerceType" emptyOption="false" listValue="itemName" listKey="itemKey" />
					 				<font color="red">*</font>
								</td>
							</tr>
							<tr>
								<td class="contentColumnNameTd"><s:text name="title"/>：</td>
								<td><s:textfield name="title" /><font color="red">*</font><input type="button" value="上传图片" id="btnUpload" /></td>
								<s:hidden name="imagePath" />
							</tr>
							<tr>
								<td><s:text name="content"/>：</td>
								<td><s:textarea name="content" rows="4" cols="35"/></td>
							</tr>
							<tr>
								<td><span class="label">位置：</span></td>
								<td>
									<span>
										<s:text name="provinceId"/>&nbsp;&nbsp;&nbsp;&nbsp;
										<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" cssClass="dropdown" 
						  			id="provinceId" name="provinceId" emptyOption="true" onchange="f_changeProvince()" listValue="itemName" listKey="itemKey"/>
									</span><br/>
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
								<td><s:text name="address"/>：</td>
								<td><s:textfield name="address" size="35"/></td>
							</tr>
							<tr>
								<td><s:text name="contacter"/>：</td>
								<td>
									${USER.userName }
								</td>
							</tr>
							<tr>
								<td><s:text name="contactTel"/>：</td>
								<td>
									${USER.phone }
								</td>
							</tr>
							<tr>
								<td><s:text name="createTime"/>：</td>
								<td>
									<s:date name="createTime" format="yyyy-MM-dd" />
								</td>
							</tr>
						</table>
						<div class="blank10"></div>
						<div class="blank10"></div>
						<br/>
						<div align="center">
							<input class="memberC_button" type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
							<input class="memberC_button" type="button" onclick="g_back('/memberCenter/commerceList.action')" value="<s:text name="g_back"/>" >
						</div>
					</s:form>
				</div>
			</div>
		</div>
<%@include file="/share/upload.jsp" %>
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
<script type="text/javascript">
var UploadActionName = "<%=contextPath%>/memberCenter/comUploadFile.action";
$(function() {
	f_changeProvince(true);
});

function f_validate(){
	fromName = "formItem";
	addfield("title","<s:text name="title"/>","String",false,50);
	addfield("content","<s:text name="content"/>","String",false,65535);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",true,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",true,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("areaId","<s:text name="areaId"/>","Integer",true,10);
	addfield("commerceType","<s:text name="commerceType"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
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
