<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
String contextPath = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="../js/jquery.js"></script>
<link type="text/css" rel="stylesheet" href="../css/Common.css" />
<link type="text/css" rel="stylesheet" href="../css/AdminPage.css" />
<script type="text/javascript">
$(document).ready(function() {
	$(".menuHeadTd").click(function(){
		$(this).parent().next("tr").toggle();
		$(this).toggleClass("menuHeadTd2");
		return false;
	});
})
</script>
</head>
  
<body>
<table style="width: 100%;">
	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>个人信息管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/user/userInfo.action?userId=${USER.userId }" target="content"><span>个人资料管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/AdminPage/sys/user/userPassword.jsp" target="content"><span>修改密码</span></a></td></tr>
			</table>
		</td>
	</tr>
	
	<tr style="height: 5px;"></tr>
	
	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>用户信息管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/user/userList.action" target="content"><span>用户管理</span></a></td></tr>
			</table>
		</td>
	</tr>

	<tr style="height: 5px;"></tr>

	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>地区类型信息管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/province/provinceList.action" target="content"><span>省份管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/city/cityList.action" target="content"><span>城市管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/district/districtList.action" target="content"><span>地区管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/est/businessarea/businessareaList.action" target="content"><span>商圈管理</span></a></td></tr>
			</table>
		</td>
	</tr>
	
	<tr style="height: 5px;"></tr>

	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>地产管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<!-- 
				<tr><td><a href="<%=contextPath %>/sysadmin/est/palace/palaceList.action" target="content"><span>楼盘管理</span></a></td></tr>
				 -->
				<tr><td><a href="<%=contextPath %>/sysadmin/est/estateout/estateOutList.action" target="content"><span>二手房委托出租出售管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/est/estateout/estateOwnOutList.action" target="content"><span>二手房自主出租出售管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/est/estatein/estateInList.action" target="content"><span>二手房委托求租求售管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/est/estatein/estateOwnInList.action" target="content"><span>二手房自主求租求售管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/est/newestate/newEstateList.action" target="content"><span>新房管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/est/comment/estCommentList.action" target="content"><span>留言管理</span></a></td></tr>
			</table>
		</td>
	</tr>
	
	<tr style="height: 5px;"></tr>

	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>贷款申请管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="<%=contextPath %>/sysadmin/bank/loan/apply/loanApplyList.action" target="content"><span>贷款申请管理</span></a></td></tr>
			</table>
		</td>
	
	<tr style="height: 5px;"></tr>

	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>旺铺管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="<%=contextPath %>/sysadmin/est/commerce/commerceList.action" target="content"><span>旺铺管理</span></a></td></tr>
			</table>
		</td>
	</tr>
	
	<tr style="height: 5px;"></tr>

	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>资讯信息管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="<%=contextPath %>/sysadmin/info/rollInformation/rollInformationList.action" target="content"><span>首页咨询滚动管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/info/newstype/newsTypeList.action" target="content"><span>新闻类型管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/info/news/newsList.action" target="content"><span>新闻管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/info/newscomment/newsCommentList.action" target="content"><span>新闻留言管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/info/information/informationList.action" target="content"><span>资讯管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/info/infocomment/infoCommentList.action" target="content"><span>资讯留言管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/info/advertisement/advertisementList.action?advertisementParameter._nne_type=0" target="content"><span>资讯首页图片管理</span></a></td></tr>
			</table>
		</td>
	</tr>
	
	<tr style="height: 5px;"></tr>
	
	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>论坛管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="<%=contextPath %>/admBase/login.page" target="_blank"><span>论坛管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/forum/forumImageList.action" target="content"><span>业主论坛图片管理</span></a></td></tr>
			<!-- /user/login.page
				<tr><td><a href="<%=contextPath %>/adminGroups/goToForum.action" target="content"><span>会员分组</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminUsers/goToForum.action" target="content"><span>会员管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminUsers/pendingActivations.page" target="content"><span>尚未启用</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminCategories/goToForum.action" target="content"><span>版面分类</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminForums/goToForum.action" target="content"><span>版面管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminModeration/goToForum.action" target="content"><span>文章审核</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminRankings/goToForum.action" target="content"><span>等级管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminBanning/goToForum.action" target="content"><span>封锁控制</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminSmilies/goToForum.action" target="content"><span>表情符号</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminAttachments/configurations.page" target="content"><span>附件管理--附件设置</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminAttachments/quotaLimit.page" target="content"><span>附件管理--附件大小限制</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminAttachments/extensionGroups.page" target="content"><span>附件管理--扩展名分组</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminAttachments/extensions.page" target="content"><span>附件管理--扩展名</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/adminCache/goToForum.action" target="content"><span>缓存</span></a></td></tr>
				 -->
			</table>
		</td>
	</tr>
	
	<tr style="height: 5px;"></tr>

	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>系统管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/config/configList.action" target="content"><span>系统配置信息管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/pageinfo/pageInfoList.action?pageInfoParameter.currentPage=1" target="content"><span>页面信息管理</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/pageinfo/pageInfoBank.action?infoName=Bank" target="content"><span>银行合作</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/attention/attentionList.action" target="content"><span>买卖房注意事项</span></a></td></tr>
				<tr><td><a href="<%=contextPath %>/sysadmin/sys/advertisement/advertisementList.action" target="content"><span>广告管理</span></a></td></tr>				
			</table>
		</td>
	</tr>
	
</table>
</body>
</html>

