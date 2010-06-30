<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp"%>
		<%@ include file="/share/validate.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。" />
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C" />
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)" />
		<title>自主交易区 - 求购求租信息 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/CollapsiblePanel.js"></script>
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/Form.jquery.js"></script>
		<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
		<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>
		<script type="text/javascript"
			src="../js/Validate.jquery.validate.min.js"></script>
		<script type="text/javascript" src="../js/SelectAll.js"></script>
		<script type="text/javascript" src="../js/HistoryBack.js"></script>
		<script type="text/javascript" src="../js/DisplayClear.js"></script>
		<script type="text/javascript" src="js/DisplayMessageQG_Autonomous.js"></script>

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
					<span class="cOrange">自主交易区 - 求购求租信息</span>
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
					<s:form action="estateInOwnSave" namespace="/memberCenter" name="formItem" id="formItem" method="post" theme="simple" onsubmit="return f_validate()" >
						<s:hidden name="estateInParameter.currentPage" id="currentPage"  />
						<s:hidden name="estateInParameter.maxResults" id="maxResults" />
						<s:hidden name="estateInParameter._ne_tradeType" value="2" />
						<s:hidden name="estateInParameter._ne_createUserId" />
						<s:hidden name="estateInParameter._dge_createTime" />
						<s:hidden name="estateInParameter._dle_createTime" />
						<s:hidden name="tradeType" value="2"/>
						<s:hidden name="estateId" />
						<s:hidden name="cmd" />
						<p class="cGray02">
							<b>自主交易区 - 求购求租信息</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有效期：
							<input name="effective" type="text" size="2" value="${effective }" />天
						</p>
						<div class="memberC_line"></div>
						<p id="left_title">
							<b>楼盘基本信息 <span class="cOrange">(必填)</span></b>
						</p>
						<div class="memberC_line"></div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td class="label_td">
										<label class="est_label" for="title"><s:text name="title"/>:</label>
									</td>
									<td colspan="3">
										<s:textfield name="title" id="title" cssClass="memberC_input04"/>
									</td>
								</tr>
								<tr>
							  	<td class="label_td">
							  		<label class="est_label" for="provinceId"><s:text name="provinceId"/>:</label>
							  	</td>
							  	<td class="content_td">
							  		<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" cssClass="dropdown" 
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
									<td class="label_td">
										<label class="est_label"><s:text name="area"/>:</label>
									</td>
									<td class="content_td">
										<s:textfield name="areaFrom" cssClass="memberC_input08"/>m<sup>2</sup>到<s:textfield name="areaTo" cssClass="memberC_input08"/>m<sup>2</sup>
									</td>
								</tr>
								<tr>
									<td class="label_td">
										<label class="est_label" for="estateType"><s:text name="estateType"/>:</label>
							    </td>
							    <td class="content_td">
							    	<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_type')" cssClass="dropdown"
							    	id="estateType" name="estateType" emptyOption="true" listValue="itemName" listKey="itemKey" />
							    </td>
							    <td class="label_td">
										<label class="est_label" ><s:text name="structure"/>:</label>
							    </td>
							    <td class="content_td">
							    	<s:textfield name="hall" cssClass="memberC_input06" /><s:text name="hall"/>
										<s:textfield name="bedroom" cssClass="memberC_input06" /><s:text name="bedroom"/>
										<s:textfield name="toilet" cssClass="memberC_input06" /><s:text name="toilet"/>
										<s:textfield name="porch" cssClass="memberC_input06" /><s:text name="porch"/>
							    </td>
							  </tr>
								<tr>
									<td class="label_td">
										<label class="est_label" for="isLift"><s:text name="isLift"/>:</label>
									</td>
									<td class="content_td">
										<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$is_lift')" cssClass="dropdown"
									 	id="isLift" name="isLift" emptyOption="true" listValue="itemName" listKey="itemKey" />
									</td>
									<td>
										<label class="est_label" for="toward"><s:text name="toward"/>:</label>
									</td>
									<td>
										<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$toward')" cssClass="dropdown"
									 	id="toward" name="toward" emptyOption="true" listValue="itemName" listKey="itemKey" />
									</td>
								</tr>
								<tr>
									<td class="label_td">
										<label class="est_label" for="fitment"><s:text name="fitment"/>:</label>
									</td>
									<td class="content_td">
										<s:select	list="@fsf.web.common.SelectTagStaticUtil@getConfig('$fitment',null,'6')" cssClass="dropdown"
									 	id="fitment" name="fitment" emptyOption="true" listValue="itemName" listKey="itemKey" />
									</td>
									<td class="label_td">
										<label class="est_label" for="device"><s:text name="device"/>:</label>
									</td>
									<td class="content_td">
										<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$device',null,'4')" cssClass="dropdown"
									 	id="device" name="device" emptyOption="true" listValue="itemName" listKey="itemKey" />
									</td>
								</tr>
								<tr>
									<td class="label_td">
										<label class="est_label" for="tradeMode"><s:text name="tradeMode"/>:</label>
									</td>
									<td class="content_td">
										<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$in_trade_mode')" cssClass="dropdown" emptyOption="true"
							  		name="tradeMode" id="tradeMode" listValue="itemName" listKey="itemKey" onchange="f_chageTradeMode(this)"/>
									</td>
								</tr>
								<tr>
									<td class="label_td">
										<label class="est_label" for="remark"><s:text name="remark"/>:</label>
									</td>
									<td colspan="3">
										<s:textfield name="remark" />
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
							  	<input type="hidden" name="examine" value="0" />
							  </s:if>
							</table>
						
						<div id="saleDiv" style="display: none;">
							<div class="blank10"></div>
							<p id="left_title" >
								<b>楼盘求售信息<span class="cOrange">(求售楼盘必填)</span></b>
							</p>
							<div class="memberC_line"></div>
						</div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" style="display: none;">
							<tr>
								<td class="label_td">
									<label class="est_label" ><s:text name="buyPrice"/>:</label>
								</td>
								<td>
									<s:textfield name="buyPriceFrom" />元-<s:textfield name="buyPriceTo" />元
								</td>
							</tr>
						</table>
						
						<div id="rentDiv" style="display: none;">
							<div class="blank10"></div>
							<p id="left_title">
								<b>楼盘求租信息<span class="cOrange">(求租楼盘必填)</span></b>
							</p>
							<div class="memberC_line"></div>
						</div>
						<table width="100%" border="0" cellspacing="0" cellpadding="0" id="rentTbl" style="display: none;">
							<tr>
								<td class="label_td">
									<label class="est_label" ><s:text name="rentPrice"/>:</label>
								</td>
								<td>
									<s:textfield name="rentPriceFrom" />元/月-<s:textfield name="rentPriceTo" />元/月
								</td>
							</tr>
						</table>
						
						<div class="blank10"></div>
						<p id="left_title">
							<b>联系方式 <span class="cOrange">(带*号为必填项)</span></b>
						</p>
						<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td style="width: 110px;">
									<label> 联系人:</label>
								</td>
								<td>
									<s:if test="cmd=='new'">
										<input name="contactUserId" type="hidden" value="${USER.userId }" />
						    		<input value="${USER.userCode }" class="memberC_input01_readonly" readonly="true" />
						    	</s:if>
						    	<s:if test="cmd!='new'">
						    		<s:hidden name="contactUserId" />
										<s:textfield name="contactUser.userCode" cssClass="memberC_input01_readonly" readonly="true"/>    	
						    	</s:if>
								</td>
								<td style="width: 110px;">
									<label> 手机号码:</label>
								</td>
								<td>
									<s:if test="cmd=='new'">
						    		<input value="${USER.phone }" class="memberC_input01_readonly" readonly="true" />
						    	</s:if>
						    	<s:if test="cmd!='new'">
										<s:textfield name="contactUser.phone" cssClass="memberC_input01_readonly" readonly="true"/>    	
						    	</s:if>
								</td>
							</tr>
							<tr>
								<td>
									<label>固定电话:</label>
								</td>
								<td>
									<s:if test="cmd=='new'">
						    		<input value="${USER.tel }" class="memberC_input01_readonly" readonly="true" />
						    	</s:if>
						    	<s:if test="cmd!='new'">
										<s:textfield name="contactUser.tel" cssClass="memberC_input01_readonly" readonly="true"/>    	
						    	</s:if>
								</td>
								<td>
									<label>QQ号码:</label>
								</td>
								<td>
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
							<input class="memberC_button1" type="submit" value="保存" />&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
					</s:form>
				</div>
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
	addfield("title","标题","String",false,80);
	addfield("provinceId","省份","Integer",true,10);
	addfield("cityId","城市","Integer",true,10);
	addfield("districtId","区域","Integer",true,10);
	addfield("areaId","商圈","Integer",true,10);
	addfield("effective","有效天数","Integer",false,10);
	addfield("tradeMode","交易方式","Integer",false,3);
	addfield("hall","厅","Integer",false,10);
	addfield("bedroom","室","Integer",false,10);
	addfield("toilet","卫","Integer",false,10);
	addfield("porch","阳","Integer",false,10);
	addfield("toward","朝向","Integer",true,10);
	addfield("areaFrom","可接受面积大于","Number",false,12);
	addfield("areaTo","可接受面积小于","Number",false,12);
	addfield("isLift","要求电梯房","Integer",false,3);
	addfield("fitment","要求装修","Integer",false,3);
	addfield("device","家电设备","Integer",false,3);
	addfield("remark","备注","String",true,65535);
	var obj = document.forms[0].tradeMode;
	if(obj.value==1 || obj.value==3){
		addfield("rentPriceFrom","可接受租价大于","Number",true,14);
		addfield("rentPriceTo","可接受租价小于","Number",true,14);	
	}else if(obj.value==2 || obj.value==3){
		addfield("buyPriceFrom","可接受购买价大于","Number",true,14);
		addfield("buyPriceTo","可接受购买价小于","Number",true,14);
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
</script>