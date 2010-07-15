<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@ include file="/share/share.jsp"%>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description"
			content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
		<meta name="keywords"
			content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
		<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)"/>
		<title>管理发布 - 按揭贷款 - 房上房地产网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script>
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
					<a href="<%=contextPath %>/memberCenter/index.action">会员中心</a> &gt;&gt;
					<span class="cOrange">管理发布-按揭贷款</span>
				</p>
			</div>

			<!-- content -->
			<div class="memberC">
				<!-- left -->
				<%@ include file="../CommonPage/memberC_left.jsp"%>

				<s:form action="loanApplyList" namespace="/memberCenter" name="formList" theme="simple" >
					<s:hidden name="loanApplyParameter.currentPage" id="currentPage"  />
					<s:hidden name="loanApplyParameter.maxResults" id="maxResults" />
					<input type="hidden" name="loanApplyParameter.sortColumns" value="createTime|DESC" />
					<input type="hidden" name="loanApplyParameter._ne_createUserId" value="${USER.userId }" />
					
				<div class="memberC_allRight02">
					<!-- right -->
					<p class="cGray02">
						<b>管理发布 - 按揭贷款</b>
					</p>
					<div class="blank10"></div>
					<table border="0" cellpadding="0" cellspacing="0" width="100%" >
						<tr>
							<td>
								<s:text name="_dge_createTime" />:
							</td>
							<td>
								<s:textfield name="loanApplyParameter._dge_createTime" onclick="WdatePicker()" >
									<s:param name="value">
										<s:date name="loanApplyParameter._dge_createTime" format="yyyy-MM-dd"/>
									</s:param>
								</s:textfield>
							</td>
							<td>
								<s:text name="_dle_createTime" />:
							</td>
							<td>
								<s:textfield name="loanApplyParameter._dle_createTime" onclick="WdatePicker()"  >
									<s:param name="value">
										<s:date name="loanApplyParameter._dle_createDate" format="yyyy-MM-dd"/>
									</s:param>
								</s:textfield>
							</td>
						</tr>
						<tr>
							<td colspan="4" align="right" >
								<input type="button" onclick="g_new('/memberCenter/loanApplyNew.action')" value="<s:text name="g_new"/>"/>
								<input type="button" onclick="g_delete('/memberCenter/loanApplyDelete.action');" value="<s:text name="g_delete"/>">
								<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
								<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
							</td>
						</tr>
					</table>
					<table border="0" cellpadding="0" cellspacing="0" width="100%" class="memberC_table" id="tblList" name="ListAJLoanTable">
						<thead>
							<tr>
								<td width="4%" height="28" >
									<input type="checkbox" onclick="g_select(this)" >
								</td>
								<td><b>贷款人</b></td>
								<td><b>抵押物名称</b></td>
								<td><b>贷款金额</b></td>
								<td><b>发布日期</b></td>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="pageView.records" >
								<tr>
									<s:url action="loanApplyEdit" namespace="/memberCenter" id="url" includeParams="none" >
										<s:param name="applyId" value="applyId"></s:param>
									</s:url>
									<td>
										<input type="checkbox" name="selectedPK" value="<s:property value="applyId"/>">
									</td>
									<td><a href="javascript:g_edit('${url}')" >${realName }</a></td>
									<td>${estateName }</td>
									<td>${loanAmount }</td>
									<td><s:date name="createTime" format="yyyy-MM-dd" /></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
				</s:form>
				<table width="100%" >
						<tr>
							<td width="100%" align="right" >
								<%@ include file="/share/pageNavigation.jsp" %>
							</td>
						</tr>
					</table>
			</div>
		</div>

		<div class="clear"></div>
		<div class="blank12"></div>
		<!-- foot -->
		<%@ include file="../CommonPage/Foot.jsp"%>

	</body>
</html>
