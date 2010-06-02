<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>委托交易区 - 出售出租信息 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/Form.jquery.js"></script>
		<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
		<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>
		<script type="text/javascript" src="../js/Validate.jquery.validate.min.js"></script>
		<script type="text/javascript" src="../js/SelectAll.js"></script>
		<script type="text/javascript" src="../js/HistoryBack.js"></script>
		<script type="text/javascript" src="../js/DisplayClear.js"></script>
		<script type="text/javascript" src="js/DisplayMessageCS_Proxy.js"></script>
		<script type="text/javascript" src="js/PCS.js"></script>
		<script type="text/javascript" src="<%=contextPath %>/js/Form.jquery.js"></script>
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
					<span class="cOrange">委托交易区 - 出售出租信息</span>
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
					<s:form name="formItem" action="estateOutSave" namespace="/memberCenter" method="post" theme="simple">
						<s:hidden name="estateId"/>
						<s:hidden name="tradeType" value="2"/>
						<s:hidden name="cmd" />

						<p class="cGray02"> 
							<b>委托交易区 - 出售出租信息</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有效期：
							<input name="effective" type="text" size="2" value="${effective }" />
							天
						</p>
						<div class="memberC_line"></div>
						<p id="left_title">
							<b>楼盘基本信息 <span class="cOrange">(必填)</span>
							</b>
						</p>
						<div class="memberC_line"></div>

						<table border="0" cellpadding="0" cellspacing="0" width="100%">
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
						    	<s:textfield name="hall" cssClass="memberC_input06" /><s:text name="hall"/>
									<s:textfield name="bedroom" cssClass="memberC_input06" /><s:text name="bedroom"/>
									<s:textfield name="toilet" cssClass="memberC_input06" /><s:text name="toilet"/>
									<s:textfield name="porch" cssClass="memberC_input06" /><s:text name="porch"/>
						    </td>
						  </tr>
						  <tr>
								<td class="label_td">
									<label class="est_label" for="palaceId"><s:text name="palaceId"/>:</label>
						    </td>
						    <td class="content_td" colspan="3">
						    	<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#est_palace')" name="palaceId" 
									cssStyle="width:140px;" emptyOption="true" listValue="itemName" listKey="itemKey"/>
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
						  <s:if test="cmd!='new'">
							  <tr>
							    <td class="label_td" >
							    	<s:hidden name="examine" />
										<label class="est_label" for="examine"><s:text name="examine" />:</label>
							    </td>
							    <td class="content_td" >
							    	<fsf:dictTranslate groupName="$examine" value="examine"/>
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
						  	<s:hidden name="examine" value="0" />
						  </s:if>
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
						
						<s:if test="cmd!='new'">
							<div class="blank10"></div>
							<p id="left_title">
								<b>联系方式</b>
							</p>
							<div class="memberC_line"></div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%" id="saleTbl" >
								<tr>
									<td style="width: 120px;">
										<label class="est_label" >委托人</label>:
							    </td>
							    <td class="content_td" >
							    		<s:hidden name="contactUserId" />
											<s:textfield name="contactUser.userCode" cssClass="memberC_input01_readonly" readonly="true"/>    	
							    </td>
							    <td style="width: 120px;" >
										<label class="est_label" >电话</label>:
							    </td>
							    <td class="content_td" >
											<s:textfield name="contactUser.tel" cssClass="memberC_input01_readonly" readonly="true"/>    	
							    </td>
							  </tr>
							  <tr>
									<td class="label_td" >
										<label class="est_label" >手机</label>:
							    </td>
							    <td class="content_td" >
											<s:textfield name="contactUser.phone" cssClass="memberC_input01_readonly" readonly="true"/>    	
							    </td>
							    <td class="label_td" >
										<label class="est_label" >QQ</label>:
							    </td>
							    <td class="content_td" >
											<s:textfield name="contactUser.qq" cssClass="memberC_input01_readonly" readonly="true"/>    	
							    </td>
							  </tr>
							</table>
						</s:if>
						
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="memberC_button">
							<input class="memberC_button1" type="button" value="保存" onclick="g_save()" />&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="memberC_button1" type="button" value="返回" />
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
$(function() {
	f_changeProvince(true);
	f_chageTradeMode();
});
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
