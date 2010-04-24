<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'bbb.jsp' starting page</title>
    
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
		<td class="menuHeadTd"><a>用户信息管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="/sysadmin/sys/user/userList.action" target="content"><span>普通用户信息</span></a></td></tr>
				<tr><td><a href="AdminPage_expert.jsp" target="content"><span>专家信息</span></a></td></tr>
				<tr><td><a href="AdminPage_RoleType.jsp" target="content"><span>权限管理</span></a></td></tr>
				<tr><td><a href="AdminPage_Users_Center.jsp" target="content"><span>会员中心管理</span></a></td></tr>
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
				<tr><td><a href="/sysadmin/sys/province/provinceList.action" target="content"><span>省份管理</span></a></td></tr>
				<tr><td><a href="/sysadmin/sys/city/cityList.action" target="content"><span>城市管理</span></a></td></tr>
				<tr><td><a href="/sysadmin/sys/district/districtList.action" target="content"><span>地区管理</span></a></td></tr>
				<tr><td><a href="/sysadmin/est/businessarea/businessareaList.action" target="content"><span>商圈管理</span></a></td></tr>
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
				<tr><td><a href="AdminPage_CityType.jsp" target="content"><span>二手房管理</span></a></td></tr>
				<tr><td><a href="AdminPage_CityType.jsp" target="content"><span>新房管理</span></a></td></tr>
				<tr><td><a href="AdminPage_CityType.jsp" target="content"><span>留言管理</span></a></td></tr>
			</table>
		</td>
	</tr>
	
	<tr style="height: 5px;"></tr>

	<tr class="menuHeadTr">
		<td class="menuHeadTd"><a>旺铺管理</a></td>
	</tr>
	<tr class="menuItemTr">
		<td>
			<table>
				<tr><td><a href="AdminPage_SaleShop.jsp" target="content"><span>旺铺转让管理</span></a></td></tr>
				<tr><td><a href="AdminPage_Business.jsp" target="content"><span>商业招商管理</span></a></td></tr>
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
				<tr><td><a href="AdminPage_News.jsp" target="content"><span>新闻管理</span></a></td></tr>
				<tr><td><a href="AdminPage_News_Type.jsp" target="content"><span>资讯类型管理</span></a></td></tr>
				<tr><td><a href="AdminPage_News.jsp" target="content"><span>资讯管理</span></a></td></tr>
				<tr><td><a href="/sysadmin/info/comment/commentList.action" target="content"><span>留言管理</span></a></td></tr>
			</table>
		</td>
	</tr>
	
	
</table>
</body>
</html>

