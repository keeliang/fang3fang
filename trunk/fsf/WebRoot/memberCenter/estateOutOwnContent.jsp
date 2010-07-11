<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<%@ include file="/share/validate.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>自主交易区 - 出售出租信息 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.form.min.js"></script>
		<style type="text/css">
		.readonly{background-color:#D4D4D4;width: 80px;}
		</style>
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
					<span class="cOrange">自主交易区 - 出售出租信息</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>

				<!-- right -->
				<div class="memberC_allRight02">
					<!-- right -->
					<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
					<s:form name="formItem" id="formItem" action="estateOutOwnSave" namespace="/memberCenter" method="post" theme="simple" onsubmit="return f_validate()" >
						<s:hidden name="estateId"/>
						<s:hidden name="tradeType" value="1"/>
						<s:hidden name="cmd" />
						<s:hidden name="isRecommond" value="1"/>

						<p class="cGray02"> 
							<b>自主交易区 - 出售出租信息</b>
						</p>
						<div class="memberC_line"></div>
						<p id="left_title">
							<b>楼盘基本信息 <span class="cOrange">(必填)</span>
							</b>
						</p>
						<div class="memberC_line"></div>

						<table border="0" cellpadding="0" cellspacing="0" width="100%">
						  <tr>
						  	<td class="label_td">
						  		<label class="est_label" for="provinceId"><s:text name="provinceId"/>:</label>
						  	</td>
						  	<td class="content_td">
						  		<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" cssStyle="width:140px;"
						  		id="provinceId" name="provinceId" emptyOption="true" onchange="f_changeProvince()" listValue="itemName" listKey="itemKey"/>
						  	</td>
						    <td class="label_td">
						    	<label class="est_label" for="cityId"><s:text name="cityId"/>:</label>
								</td>
								<td class="content_td" id="cityTd">
						
								</td>
						  </tr>
						  <tr>
								<td class="label_td">
									<label class="est_label" for="districtId"><s:text name="districtId"/>:</label>
						    </td>
						    <td class="content_td" id="districtTd">
						
						    </td>
						    <td class="label_td">
									<label class="est_label" for="area"><s:text name="areaId"/>:</label>
						    </td>
						    <td class="content_td" id="areaTd">
						
						    </td>
						  </tr>
						  <tr>
								<td>
									<label class="est_label" for="estateName"><s:text name="estateName"/>:</label>
								</td>
								<td colspan="3">
									<s:textfield name="estateName" id="estateName" cssClass="memberC_input04"/>
									<input type="button" value="上传图片" id="btnUpload" />
									<s:hidden name="imagePath" />
								</td>
							</tr>
						  <tr>
								<td class="label_td">
									<label class="est_label" for="area"><s:text name="area"/>:</label>
						    </td>
						    <td class="content_td">
						    	<s:textfield name="area" id="area" cssClass="memberC_input08"/>m<sup>2</sup>
						    </td>
						    <td class="label_td">
									<label class="est_label" for="practicalArea" ><s:text name="practicalArea"/>:</label>
						    </td>
						    <td class="content_td">
						    	<s:textfield name="practicalArea" id="practicalArea" cssClass="memberC_input08"/>m<sup>2</sup>
						    </td>
						  </tr>
						  <tr>
								<td class="label_td">
									<label class="est_label" for="estateType"><s:text name="estateType"/>:</label>
						    </td>
						    <td class="content_td">
						    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" cssStyle="width:140px;"
						    	id="estateType" name="estateType" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						    <td class="label_td">
									<label class="est_label" ><s:text name="structure"/>:</label>
						    </td>
						    <td class="content_td">
									<s:textfield name="bedroom" cssClass="memberC_input06" /><s:text name="bedroom"/>
									<s:textfield name="hall" cssClass="memberC_input06" /><s:text name="hall"/>
									<s:textfield name="toilet" cssClass="memberC_input06" /><s:text name="toilet"/>
									<s:textfield name="porch" cssClass="memberC_input06" /><s:text name="porch"/>
						    </td>
						  </tr>
						  <tr>
								<td class="label_td">
									<label class="est_label" for="address"><s:text name="address"/>:</label>
						    </td>
						    <td class="content_td" colspan="3">
						    	<s:textfield id="address" name="address" cssClass="memberC_input04" />
						    </td>
						  </tr>
						  <tr>
								<td class="label_td">
									<label class="est_label" for="totalFloor"><s:text name="totalFloor"/>:</label>
						    </td>
						    <td class="content_td">
						    	<s:textfield	name="totalFloor" cssClass="memberC_input08"/>
						    </td>
						    <td class="label_td">
									<label class="est_label" for="floor"><s:text name="floor"/>:</label>
						    </td>
						    <td class="content_td">
						    	<s:textfield	name="floor" cssClass="memberC_input08"/>
						    </td>
						  </tr>
						  <tr>
								<td class="label_td">
									<label class="est_label" for="isLift"><s:text name="isLift"/>:</label>
						    </td>
						    <td class="content_td">
						    	<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$is_lift')" cssStyle="width:140px;"
								 	id="isLift" name="isLift" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						    <td class="label_td">
									<label class="est_label" for="toward"><s:text name="toward"/>:</label>
						    </td>
						    <td class="content_td">
						    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward',null,'0')" cssStyle="width:140px;"
								 	id="toward" name="toward" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						  </tr>
						  <tr>
								<td class="label_td">
									<label class="est_label" for="fitment"><s:text name="fitment"/>:</label>
						    </td>
						    <td class="content_td">
						    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment',null,'0')" cssClass="dropdown"
								 	id="fitment" name="fitment" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						    <td class="label_td">
									<label class="est_label" for="device"><s:text name="device"/>:</label>
						    </td>
						    <td class="content_td">
							    <s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$device',null,'0')" cssClass="dropdown"
								 	id="device" name="device" emptyOption="true" listValue="itemName" listKey="itemKey" />
						    </td>
						  </tr>
						  <tr>
								<td class="label_td" >
									<label class="est_label" for="manageCost"><s:text name="manageCost"/>:</label>
						    </td>
						    <td class="content_td">
						    	<s:textfield name="manageCost" id="manageCost" cssClass="memberC_input08" />元/平方米·月
						    </td>
						    <td class="label_td" >
									<label class="est_label" for="tradeMode"><s:text name="tradeMode" />:</label>
						    </td>
						    <td class="content_td" >
						    	<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$out_trade_mode')" cssStyle="width:140px;"
						  		name="tradeMode" id="tradeMode" listValue="itemName" listKey="itemKey" onchange="f_chageTradeMode()"/>
						    </td>
						  </tr>
						  <tr>
						  	<td class="label_td" >
						  		<label class="est_label" for="remark"><s:text name="remark"/>:</label>
						  	</td>
						  	<td colspan="3">
						  		<s:textarea rows="4" cols="70" name="remark" ></s:textarea>
						  	</td>
						  </tr>
						  <s:if test="cmd!='new'">
						  <tr>
						    <td class="label_td" >
									<label class="est_label" for="examine"><s:text name="examine" />:</label>
						    </td>
						    <td class="content_td" >
						    	<fsf:dictTranslate groupName="$examine" value="examine"/>
						    	<s:hidden name="examine" />
						    </td>
						    <td class="label_td" >
									<label class="est_label" for="examine"><s:text name="examineUserId" />:</label>
						    </td>
						    <td class="content_td" >
						  		<fsf:dictTranslate groupName="#sys_user" value="examineUserId"/>  	
						    	<s:hidden name="examineUserId"/>
						    </td>
						  </tr>
						  </s:if>
						  <s:if test="cmd=='new'">
						  	<s:hidden name="examine" value="1" />
						  </s:if>
						  <tr>
						  	<td class="label_td" >
						  		<label class="est_label" for="effective">有效期：</label>
						  	</td>
						  	<td colspan="3">
						  		<input name="effective" type="text" size="2" value="${effective }" />天
						  	</td>
						  </tr>
						</table>
						
						<div id="saleDiv" style="display: none;">
							<div class="blank10" ></div>
							<p id="left_title">
								<b>楼盘出售信息 <span class="cOrange">(出售楼盘必填)</span></b>
							</p>
							<div class="memberC_line"></div>
						</div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" style="display: none;">
							<tr>
								<td style="width: 120px;" >
									<label class="est_label" for="estateCardNo"><s:text name="estateCardNo" /></label>:
						    </td>
						    <td class="content_td" >
						    	<s:textfield	name="estateCardNo" id="estateCardNo" cssClass="memberC_input01"/>
						    </td>
						    <td style="width: 120px;" >
									<label class="est_label" for="buildYear"><s:text name="buildYear" /></label>:
						    </td>
						    <td class="content_td" >
						    	<s:textfield name="buildYear" id="buildYear" cssClass="memberC_input01"/>
						    </td>
						  </tr>
						  <tr>
						  	<td class="label_td" >
						  		<label class="est_label" for="card5year"><s:text name="card5year" /></label>:
						  	</td>
						  	<td class="content_td" >
						  		<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$yes_no')"
						  		name="card5year" id="card5year" listValue="itemName" listKey="itemKey" cssClass="dropdown"/>
						  	</td>
						  	<td class="label_td" >
						  		<label class="est_label" for="salePrice"><s:text name="salePrice"/></label>
						  	</td>
						  	<td class="content_td" >
						  		<s:textfield name="salePrice" id="salePrice" cssClass="memberC_input08" />元
								</td>
						  </tr>
						  <tr>
								<td class="label_td" >
						  		<label class="est_label" for="develop"><s:text name="develop"/></label>
						  	</td>
						  	<td class="content_td" colspan="3" >
						  		<s:textfield name="develop" id="develop" cssClass="memberC_input04" />
								</td>
						  </tr>
						</table>
						
						<div id="rentDiv" style="display: none;">
							<div class="blank10"></div>
							<p id="left_title">
								<b>楼盘出租信息 <span class="cOrange">(出租楼盘必填)</span>
								</b>
							</p>
						</div>
						<div class="memberC_line"></div>
						<table width="100%" border="0" cellspacing="0" cellpadding="0" id="rentTbl" style="display: none;">
							<tr>
						  	<td style="width: 120px;" >
						  		<label class="est_label" for="rentPrice"><s:text name="rentPrice"/></label>
								</td>
								<td class="content_td" >
						  		<s:textfield name="rentPrice" id="rentPrice" cssClass="memberC_input08" />元/月
								</td>
								<td style="width: 120px;" >
									<label class="est_label" for="minMonth"><s:text name="minMonth"/></label>
								</td>
								<td class="content_td" >
									<s:textfield name="minMonth" id="minMonth" cssClass="memberC_input08" />
								</td>
							</tr>
							<tr>
								<td class="label_td" >
						  		<label class="est_label" for="deposit"><s:text name="deposit"/></label>
								</td>
								<td class="content_td" >
									<s:textfield name="deposit" id="deposit" cssClass="memberC_input08" />元	
								</td>
								<td class="label_td" >
						  		<label class="est_label" for="otherCost"><s:text name="otherCost"/></label>
								</td>
								<td class="content_td" >
									<s:textfield name="otherCost" id="otherCost" cssClass="memberC_input08" />元/月
								</td>								
						  </tr>
						  <tr>
						  	<td class="label_td" >
						  		<label class="est_label" for="waterCost"><s:text name="waterCost"/></label>
								</td>
								<td colspan="3">
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
								<td class="label_td" >
						  		<label class="est_label" for="electricCost"><s:text name="electricCost"/></label>
								</td>
								<td colspan="3">
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
						
						<div class="blank10"></div>
						<p id="left_title">
							<b>联系方式</b>
						</p>
						<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" >
							<tr>
								<td style="width: 120px;">
									<label class="est_label" >联系人</label>:
						    </td>
						    <td class="content_td" >
						    	<s:if test="cmd=='new'">
						    		<input value="${USER.userCode }" class="memberC_input01_readonly" readonly="true" />
						    		<input name="contactUserId" value="${USER.userId }" type="hidden"/>
						    	</s:if>
						    	<s:if test="cmd!='new'">
						    		<s:hidden name="contactUserId" />
										<s:textfield name="contactUser.userCode" cssClass="memberC_input01_readonly" readonly="true"/>    	
						    	</s:if>
						    </td>
						    <td style="width: 120px;" >
									<label class="est_label" >电话</label>:
						    </td>
						    <td class="content_td" >
						    	<s:if test="cmd=='new'">
						    		<input value="${USER.tel }" class="memberC_input01_readonly" readonly="true" />
						    	</s:if>
						    	<s:if test="cmd!='new'">
										<s:textfield name="contactUser.tel" cssClass="memberC_input01_readonly" readonly="true"/>    	
						    	</s:if>
						    </td>
						  </tr>
						  <tr>
								<td class="label_td" >
									<label class="est_label" >手机</label>:
						    </td>
						    <td class="content_td" >
									<s:if test="cmd=='new'">
						    		<input value="${USER.phone }" class="memberC_input01_readonly" readonly="true" />
						    	</s:if>
						    	<s:if test="cmd!='new'">
										<s:textfield name="contactUser.phone" cssClass="memberC_input01_readonly" readonly="true"/>    	
						    	</s:if>    	
						    </td>
						    <td class="label_td" >
									<label class="est_label" >QQ</label>:
						    </td>
						    <td class="content_td" >
									<s:if test="cmd=='new'">
						    		<input value="${USER.qq }" class="memberC_input01_readonly" readonly="true" />
						    	</s:if>
						    	<s:if test="cmd!='new'">
										<s:textfield name="contactUser.qq" cssClass="memberC_input01_readonly" readonly="true"/>    	
						    	</s:if>    	
						    </td>
						  </tr>
						</table>
						
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="memberC_button">
							<input class="memberC_button1" type="button" value="保存" onclick="g_save()" />&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
					</s:form>
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
<script type="text/javascript">
var UploadActionName = "<%=contextPath%>/memberCenter/estUploadFile.action";
$(function() {
	f_changeProvince(true);
	f_chageTradeMode();
});

function f_validate(){
	fromName = "formItem";
	addfield("estateName","<s:text name="estateName"/>","String",false,80);
	addfield("provinceId","省份","Integer",false,10);
	addfield("cityId","城市","Integer",false,10);
	addfield("districtId","区域","Integer",false,10);
	addfield("tradeMode","交易方式","Integer",false,3);
	addfield("area","面积","Number",false,6,2);
	addfield("practicalArea","实用面积","Number",false,6,2);
	addfield("isLift","是否电梯房","Integer",false,3);
	addfield("effective","有效天数","Integer",false,10);
	addfield("address","地址","String",false,128);
	addfield("toward","朝向","Integer",false,10);
	addfield("floor","楼层","Integer",false,10);
	addfield("totalFloor","总楼","Integer",false,10);
	
	addfield("hall","厅","Integer",false,10);
	addfield("bedroom","室","Integer",false,10);
	addfield("toilet","卫","Integer",false,10);
	addfield("porch","阳","Integer",false,10);
	
	addfield("manageCost","管理费","Number",false,14,2);
	addfield("fitment","装修","Integer",false,3);
	addfield("device","家电设备","Integer",false,3);
	
	var obj = document.forms[0].tradeMode;
	if(obj.value==1 || obj.value==3){
		addfield("rentPrice","租价","Number",false,14,2);
		addfield("minMonth","最小租期","Integer",false,10);
		addfield("waterCost","水费","Number",false,6,2);
		addfield("electricCost","电费","Number",false,6,2);
		addfield("otherCost","其他费用","Number",false,12,2);
		addfield("deposit","押金","Number",false,12,2);
	}else if(obj.value==2 || obj.value==3){
		addfield("estateCardNo","房产证号","String",false,50);
		addfield("card5year","房产证是否满五年","Integer",false,3);
		addfield("salePrice","售价","Number",false,14,2);
		addfield("develop","发展商","String",false,50);
		addfield("buildYear","建筑年份","Integer",false,10);
	}
	return validate();
}

function f_chageTradeMode(){
	var obj = $('#tradeMode').get(0);
	if(obj.value==1){
		$('#rentDiv').show();
		$('#rentTbl').show();
		$('#saleDiv').hide();
		$('#saleTbl').hide();
	}else if(obj.value==2){
		$('#rentDiv').hide();
		$('#rentTbl').hide();
		$('#saleDiv').show();
		$('#saleTbl').show();
	}else if(obj.value==3){
		$('#rentDiv').show();
		$('#rentTbl').show();
		$('#saleDiv').show();
		$('#saleTbl').show();
	}else{
		$('#rentDiv').hide();	
		$('#rentTbl').hide();
		$('#saleDiv').hide();
		$('#saleTbl').hide();
	}
}

function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","cityId",json.data,"itemKey","itemName","${cityId}","f_changeCity()");
		$("#cityTd").html(selectTag.toString());
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
		$("#districtTd").html(selectTag.toString());
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
		$("#areaTd").html(selectTag.toString());
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
