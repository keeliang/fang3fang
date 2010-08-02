<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>管理发布 - 委托代理区出售信息 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
		<script type="text/javascript" src="../js/jquery.js"></script>
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
					<span class="cOrange">管理发布 - 委托代理区出售信息</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>
				
				<s:form action="estateOutList" namespace="/memberCenter" name="formList" theme="simple" >
				<s:hidden name="estateOutParameter.currentPage" id="currentPage"  />
				<s:hidden name="estateOutParameter.maxResults" id="maxResults" />
				<s:hidden name="estateOutParameter._ne_tradeType" />
				<s:hidden name="estateOutParameter._ne_createUserId" />
				<input type="hidden" name="estateOutParameter.sortColumns" value="createTime|DESC" />
				<input type="hidden" name="isRecommond" value="1" />
				
				<div class="memberC_allRight02">
					<!-- right -->
					<p class="cGray02">
						<b>管理发布 - 委托代理区出售出租信息</b>
					</p>
					<div class="blank10"></div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" >
							<tr>
								<td width="15%" style="font-size: 12px;" >是否通过审核:</td>
								<td width="35%">
									<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$examine')" name="estateOutParameter._ne_examine" 
									cssStyle="width:140px;" emptyOption="true" listValue="itemName" listKey="itemKey"/>
								</td>
								<td width="15%" style="font-size: 12px;">状态:</td>
								<td width="35%">
									<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$out_trade_mode')" name="estateOutParameter._ne_tradeMode" 
									cssStyle="width:140px;" emptyOption="true" listValue="itemName" listKey="itemKey"/>
								</td>
							</tr>
							<tr>
								<td width="15%" style="font-size: 12px;"><s:text name="_dge_createTime" />:</td>
								<td width="35%">
									<s:textfield name="estateOutParameter._dge_createTime" onclick="WdatePicker()" >
										<s:param name="value">
											<s:date name="estateOutParameter._dge_createTime" format="yyyy-MM-dd"/>
										</s:param>
									</s:textfield>
								</td>
								<td width="15%" style="font-size: 12px;"><s:text name="_dle_createTime" />:</td>
								<td width="35%">
									<s:textfield name="estateOutParameter._dle_createTime" onclick="WdatePicker()" >
										<s:param name="value">
											<s:date name="estateOutParameter._dle_createTime" format="yyyy-MM-dd"/>
										</s:param>
									</s:textfield>
								</td>
							</tr>
							<tr>
								<td colspan="4" align="right">
									<s:if test="#session.USER.userType!=3">
										<input class="memberC_button1" type="button" onclick="f_recommond(1)" value="设为推荐" />
										<input class="memberC_button1" type="button" onclick="f_recommond(0)" value="设为不推荐" />
									</s:if>
									<input class="memberC_button1" type="button" onclick="g_delete('/memberCenter/estateOutDelete.action')" value="删除" />
									<input class="memberC_button1" type="button" onclick="g_list()" value="搜索" />
								</td>
							</tr>
						</table>
					<table id="tblList" border="0" cellpadding="0" cellspacing="0" width="100%" class="memberC_table">
						<thead>
							<tr>
								<td width="4%" >
									<input type="checkbox" onclick="g_select(this)" />
								</td>
								<td><b>楼盘名称</b></td>
								<td><b>面积</b></td>
								<td><b>售价(万元)</b></td>
								<td><b>租价</b></td>
								<td><b>状态</b></td>
								<td><b>委托联系人</b></td>
								<td><b>发布日期</b></td>
								<td><b>是否通过审核</b></td>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="pageView.records" id="item">
								<s:url action="estateOutEdit" namespace="/memberCenter" id="url" includeParams="none">
									<s:param name="estateId" value="#item.estateId"></s:param>
								</s:url>
								<tr>
									<td>
										<input type="checkbox" name="selectedPK" value="<s:property value="#item.estateId"/>"/>
									</td>
									<td><a href="javascript:g_edit('${url}')" ><s:property value="estateName"/></a></td>
									<td><s:property value="area"/></td>
									<td><s:property value="salePrice/10000"/></td>
									<td><s:property value="rentPrice"/></td>
									<td><fsf:dictTranslate groupName="$out_trade_mode" value="tradeMode" /></td>
									<td><fsf:dictTranslate groupName="#sys_user" value="contactUserId" /></td>
									<td><s:date name="createTime" format="yyyy-MM-dd"/></td>
									<td>
										<fsf:dictTranslate groupName="$examine" value="examine" />
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
					<table width="100%" >
						<tr>
							<td width="100%" align="right" >
								<%@ include file="/share/pageNavigation.jsp" %>
							</td>
						</tr>
					</table>
				</div>
				</s:form>
			</div>
		</div>

		<div class="clear"></div>
		<div class="blank12"></div>
		<!-- foot -->
		<%@ include file="../CommonPage/Foot.jsp"%>
	</body>
</html>
<script type="text/javascript" >
function f_recommond(val){
	document.forms["formList"].action = "/memberCenter/expertRecommond.action";
	document.forms["formList"].isRecommond.value = val;
	document.forms["formList"].submit();
}
</script>