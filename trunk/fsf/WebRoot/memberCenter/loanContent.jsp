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
		<script type="text/javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" src="../js/jquery.form.min.js"></script>
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
					<span class="cOrange">按揭贷款</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>

				<div class="memberC_allRight02">
					<!-- right -->
					<s:form action="loanApplySave" namespace="/memberCenter" method="post" name="formItem" id="formItem" theme="simple" onsubmit="return f_validate();" >
					<s:hidden name="cmd" />
					<s:hidden name="applyId"/>
					<s:hidden name="status"/>
					
					<s:hidden name="loanApplyParameter.currentPage" id="currentPage"  />
					<s:hidden name="loanApplyParameter.maxResults" id="maxResults" />
					<input type="hidden" name="loanApplyParameter._ne_createUserId" value="${USER.userId }" />
					<s:hidden name="loanApplyParameter._dge_createTime" />
					<s:hidden name="loanApplyParameter._dle_createTime" />
					<input type="hidden" name="loanApplyParameter.sortColumns" value="createTime|DESC" />
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
								<td width="16%">
									<label><s:text name="realName"/>:</label>
								</td>
								<td width="35%" >
									<s:textfield name="realName" cssClass="memberC_input01" />
								</td>
								<td width="16%" >
									<label><s:text name="sex"/>:</label>
								</td>
								<td width="35%" >
									<input type="radio" name="sex" value="1" checked="checked" />男&nbsp;&nbsp;
									<input type="radio" name="sex" value="2" />女
								</td>
							</tr>
							<tr>
								<td>
									<label><s:text name="paperType"/>:</label>
								</td>
								<td>
									<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$paper_type')" name="paperType" 
									id="paperType" listValue="itemName" listKey="itemKey" emptyOption="true" />
								</td>
								<td>
									<label><s:text name="paperNo"/>:</label>
								</td>
								<td>
									<s:textfield name="paperNo" cssClass="memberC_input01" />
								</td>
							</tr>
							<tr>
								<td>
									<label><s:text name="company"/>:</label>
								</td>
								<td>
									<s:textfield name="company" cssClass="memberC_input01" />
								</td>
								<td>
									<label><s:text name="isMarry"/>:</label>
								</td>
								<td>
									<input type="radio" name="isMarry" value="1" checked="checked" />是&nbsp;&nbsp;
									<input type="radio" name="isMarry" value="0" />否
								</td>
							</tr>
							<tr>
								<td>
									<label><s:text name="phone"/>:</label>
									</td>
								<td>
									<s:textfield name="phone" cssClass="memberC_input01" />
								</td>
								<td>
									<label><s:text name="tel"/>:</label>
								</td>
								<td>
									<s:textfield name="tel" cssClass="memberC_input01" />
								</td>
							</tr>
						</table>
						<div class="blank10"></div>
						<br/>
						<p>
							<b>贷款信息登记 <span class="cOrange">(必填)</span></b>
						</p>
						<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td width="16%" >
									<label><s:text name="loanAmount"/>:</label>
								</td>
								<td width="35%" >
									<s:textfield name="loanAmount" cssClass="memberC_input02" />元
								</td>
								<td width="16%" >
									<label><s:text name="loanYear"/>:</label>
								</td>
								<td width="35%" >
									<s:textfield name="loanYear" cssClass="memberC_input03" />年
								</td>
							</tr>
							<tr>
								<td>
									<label><s:text name="repayType"/>:</label>
								</td>
								<td>
									<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$repay_type')" name="repayType" 
									id="repayType" listValue="itemName" listKey="itemKey" emptyOption="true" />
								</td>
								<td>
									<label><s:text name="loanUsage"/>:</label>
								</td>
								<td>
									<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$loan_usage')" name="loanUsage" 
									id="loanUsage" listValue="itemName" listKey="itemKey" emptyOption="true" />
								</td>
							</tr>
						</table>
						<div class="blank10"></div>
						<br/>
						<p>
							<b>抵押物业信息登记 <span class="cOrange">(必填)</span></b>
						</p>
						<div class="memberC_line"></div>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td width="16%" >
									<label><s:text name="provinceId"/>:</label>
								</td>
								<td width="35%" >
									<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="provinceId" 
									onchange="f_changeProvince()" id="provinceId" listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown" />
								</td>
								<td width="16%" >
									<label><s:text name="_ne_cityId" />:</label>
								</td>
								<td width="35%" id="cityTd" >
								
								</td>
							</tr>
							<tr>
								<td width="16%" >
									<label><s:text name="_ne_districtId" />:</label>
								</td>
								<td width="35%" id="districtTd" >
									
								</td>
							</tr>
							<tr>
								<td>
									<label><s:text name="_ne_estateProperty" />:</label>
								</td>
								<td>
									<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$estate_property')" name="estateProperty" 
									id="estateProperty" listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown" />
								</td>
							</tr>
							<tr>
								<td>
									<label><s:text name="estateName"/>:</label>
								</td>
								<td colspan="3" >
									<s:textfield name="estateName" cssClass="memberC_input04" />
								</td>
							</tr>
							<tr>
								<td>
									<label><s:text name="address"/>:</label>
								</td>
								<td colspan="3">
									<s:textfield name="address" cssClass="memberC_input04" />
								</td>
							</tr>
							<tr>
								<td>
									<label><s:text name="estatePrice"/>:</label>
								</td>
								<td>
									<s:textfield name="estatePrice" cssClass="memberC_input02" />元
								</td>
								<td>
									<label><s:text name="registerPrice"/>:</label>
								</td>
								<td>
									<s:textfield name="registerPrice" cssClass="memberC_input02" />元
								</td>
							</tr>
							<tr>
								<td>
									<label><s:text name="estateTime"/>:</label>
								</td>
								<td>
									<s:textfield name="estateYear" cssClass="memberC_input05" />年
									<s:textfield name="estateMonth" cssClass="memberC_input03" />月
								</td>
								<td>
									<label><s:text name="area"/>:</label>
								</td>
								<td>
									<s:textfield name="area" cssClass="memberC_input02" />m<sup>2</sup>
								</td>
							</tr>
						</table>
						<div class="blank10"></div>
						<div class="blank10"></div>
						<div class="blank10"></div>
						<br/>
						<div align="center">
							<input class="memberC_button" type="button" onclick="g_save()" value="<s:text name="g_save"/>" >
							<input class="memberC_button" type="button" onclick="g_back('/memberCenter/loanApplyList.action')" value="<s:text name="g_back"/>" >
						</div>
					</s:form>
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
<script type="text/javascript">
window.onload = function(){
	f_changeProvince(true);
}
function f_validate(){
	fromName = "formItem";
	//addfield("applyId","<s:text name="applyId"/>","Integer",false,10);
	addfield("realName","<s:text name="realName"/>","String",false,20);
	addfield("sex","<s:text name="sex"/>","Integer",false,3);
	addfield("paperType","<s:text name="paperType"/>","Integer",false,3);
	addfield("paperNo","<s:text name="paperNo"/>","String",false,30);
	addfield("company","<s:text name="company"/>","String",false,30);
	addfield("isMarry","<s:text name="isMarry"/>","Integer",false,3);
	addfield("phone","<s:text name="phone"/>","String",false,20);
	addfield("tel","<s:text name="tel"/>","String",false,20);
	addfield("loanAmount","<s:text name="loanAmount"/>","Number",false,12,2);
	addfield("loanYear","<s:text name="loanYear"/>","Integer",false,2);
	addfield("repayType","<s:text name="repayType"/>","Integer",false,3);
	addfield("loanUsage","<s:text name="loanUsage"/>","Integer",false,3);
	addfield("provinceId","<s:text name="provinceId"/>","Integer",false,10);
	addfield("cityId","<s:text name="cityId"/>","Integer",false,10);
	addfield("districtId","<s:text name="districtId"/>","Integer",true,10);
	addfield("estateProperty","<s:text name="estateProperty"/>","Integer",false,3);
	addfield("address","<s:text name="address"/>","String",false,80);
	addfield("estatePrice","<s:text name="estatePrice"/>","Number",false,12,2);
	addfield("registerPrice","<s:text name="registerPrice"/>","Number",false,12,2);
	addfield("estateYear","<s:text name="estateYear"/>","Integer",false,4);
	addfield("estateMonth","<s:text name="estateMonth"/>","Integer",false,2,null,null,1,12);
	addfield("area","<s:text name="area"/>","Number",false,12,2);
	//addfield("createTime","<s:text name="createTime"/>","Date",false,19);
	//addfield("createUserId","<s:text name="createUserId"/>","Integer",false,10);
	addfield("status","<s:text name="status"/>","Integer",false,3);
	return validate();
}
function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","cityId",json.data,"itemKey","itemName","${cityId}","f_changeCity()");
		$("#cityTd").html(selectTag.toString());
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
		$("#districtTd").html(selectTag.toString());
	},"json");
}
</script>
