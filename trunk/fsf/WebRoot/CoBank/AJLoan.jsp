<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../CommonPage/Session.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>银行合作</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link type="text/css" rel="stylesheet" href="css/AdminPage.css" />

<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/Form.jquery.js"></script>
<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>
<script type="text/javascript" src="../js/Validate.jquery.validate.min.js"></script>
<script type="text/javascript" src="../js/SelectAll.js"></script>
<script type="text/javascript" src="../js/HistoryBack.js"></script>
<script type="text/javascript" src="../js/DisplayClear.js"></script>
<script type="text/javascript" src="js/DisplayMessageAJ.js"></script>
<script type="text/javascript" src="js/Ajloan.js"></script>

</head>

<body>
<input type="hidden" name="currArea" value="self"/>
<div class="box">

	
	<!-- head -->
     <%@ include file="../CommonPage/Head.jsp" %>
     
	<!-- menu -->
     <div class="nav">
    	<div class="navL">
        	<div class="headMenu">
                <div class="headMenuLine"></div>
                <ul class="menuList">                                                                         
                  <li><a href="../main/index.jsp" ><span>首页</span></a></li>
                  <li><a href="../freetrade/index.jsp"><span>自主交易</span></a></li>
                  <li><a href="../entrustTrade/index.jsp"><span>委托代理</span></a></li>
                  <li><a href="../newHouse/index.jsp"><span>新房推荐</span></a></li>  
                  <li><a href="../Info/index.jsp"><span>地产资讯</span></a></li>  
                  <li><a href="..<%=contextPath %>/forum/goToForum.action"><span>论坛</span></a></li> 
                  <li class="menuHere"><a href="index.jsp"><span>银行合作</span></a></li>
                  <li><a href="../rent/index.jsp"><span>旺铺招租</span></a></li> 
                  <li><a href="../invitedexperts/index.jsp"><span>交易顾问</span></a></li> 
                </ul>
            </div>
        </div>
        <div class="navR" id="hello">您好！<%=RealName %> 					<%
						if (RealName == "您还没有登录") {
					%>
					<a href="../member/reg.jsp" class="cYellow"> [注册会员] </a>
					<a href="../member/login.jsp" class="cYellow">[登录]</a>
					<%
						} else {
					%>
					<a href="../memberCenter/index.jsp" class="cYellow"> [会员中心] </a>
					<a href="../CommonPage/ClearSession.jsp" class="cYellow">[注销]</a>
					<%
						}
					%></div>
        <div class="clear"></div>
    	<div class="nav_bottom">
        	<div class="nav_bottomL"></div>
            <div class="nav_bottomR"></div>
        </div>
    </div>
	
	<div class="content">
	<!-- ad -->
	<div class="info_img"><img src="images/ad.gif" width="937" height="121" alt="" title="" /></div></div><br/>
	
	
	<div id="position">您现在的位置：<a href="../main/index.jsp">房上房</a> <span class="cGray">>></span> <a href="index.jsp">银行合作</a> <span class="cGray">>></span> 在线按揭申请</div> 
	<hr color="#f1f1f1"/>
	<br/>
	<div class="Bcontent">
	  <div class="memberC_allRight02">
        	<!-- right -->
        	<form action="/Fang3FangWeb/Access" method="post" name="AJForm" id="AJForm">
        	<p class="cGray02"><b>在线按揭贷款申请</b> </p><BR/>
            <div class="memberC_line"></div>
            <p><b>借款人信息登记 <span class="cOrange">(带*号为必填项)</span></b></p>
            <div class="memberC_line"></div>
            <input name="referaction" type="hidden" id="referAction" value="ApplyForLoans" />
	        <input name="useraction" type="hidden" id="useraction"   value="Estates" />
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tr>
                	<td width="260"><label><span class="cOrange">*</span> 真实姓名: </label> <input type="text" class="memberC_input01" id="Contacter" name="Contacter" /></td>
                    <td ><label>性别: </label> <input type="radio" checked="checked" id="userSex" name="userSex" value="1" />男&nbsp;&nbsp;<input type="radio" id="userSex" name="userSex" value="0"/>女</td>
                </tr>
                <tr>
                	<td><label>证件类型: </label> <select name="DocumentTypeID" id="DocumentTypeID"><option value="">请选择</option></select></td>
                    <td width="260"><label>证件号码: </label> <input type="text" class="memberC_input01" name="DocumentNumber" id="DocumentNumber" /></td>
                </tr>
                <tr>
                	<td><label>工作单位: </label> <input type="text" class="memberC_input01" id="WorkPlace" name="WorkPlace"/></td>
                    <td><label>已婚: </label> <input type="radio" checked="checked" id="isMarried" name="isMarried" value="1" />是&nbsp;&nbsp;<input type="radio" id="isMarried" name="isMarried" value="0" />否</td>
                </tr>
                <tr>
                	<td><label><span class="cOrange">*</span> 手机号码: </label> <input type="text" class="memberC_input01" name="MobilePhone" id="MobilePhone"/></td>
                    <td><label>固定号码: </label> <input type="text" class="memberC_input01"  id="HomePhone" name="HomePhone"/></td>
                </tr>
            </table>
            <div class="blank10"></div><BR/>
            <p><b>贷款信息登记 <span class="cOrange">(必填)</span></b></p>
            <div class="memberC_line"></div>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tr>
                	<td><label>贷款金额: </label> <input type="text" class="memberC_input02" id="LoanMoney" name="LoanMoney"/> 元</td>
                    <td><label>贷款期限: </label> <input type="text" class="memberC_input03" id="LoanDueDate" name="LoanDueDate"/> 年</td>
                </tr>
                <tr>
                	<td><label>还款方式: </label> <select name="RePayWayID" id="RePayWayID"><option value="">请选择</option></select></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                	<td><label>借款用途: </label> <select name="LoanToUse" id="LoanToUse"><option value="">请选择</option></select></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div class="blank10"></div><BR/>
            <p><b>抵押物业信息登记 <span class="cOrange">(必填)</span></b></p>
            <div class="memberC_line"></div>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
            	<tr>
                	<td><label>城市: </label> <select name="CityID" id="CityID"><option value="">请选择</option></select></td>
                    <td><label>区县: </label> <select name="DistrictID" id="DistrictID"><option value="">请选择</option></select></td>
                </tr>
                <tr>
                	<td><label>商圈: </label> <select name="TownID" id="TownID">	<option value="">请选择</option></select></td>
                    <td><label>产房性质: </label> <select name="EstateType_EstateID" id="EstateType_EstateID"><option>请选择</option></select></td>
                </tr>
                <tr>
                	<td colspan="2"><label>楼盘/小区名称: </label> <input type="text" class="memberC_input04" id="PropertyName" name="PropertyName" /></td>
                </tr>
                <tr>
                	<td colspan="2"><label>地址: </label> <input type="text" class="memberC_input04" id="Address" name="Address"/></td>
                </tr>
                <tr>
                	<td><label>购置价格: </label> <input type="text" class="memberC_input02"  id="EstateCost" name="EstateCost" /> 万元</td>
                    <td><label>产房证登记价格: </label> <input type="text" class="memberC_input02" id="DocumentCost" name="DocumentCost"/> 万元</td>
                </tr>
                <tr>
                	<td><label>竣工时间: </label> <input type="text" class="memberC_input05" id="DoneYear" name="DoneYear" /> 年 <input type="text" class="memberC_input03" id="DoneMonth"
										name="DoneMonth"/> 月</td>
                    <td><label>建筑面积: </label> <input type="text" class="memberC_input02"  name="Area" id="Area"/> m<sup>2</sup></td>
                </tr>
            </table>
            <div class="blank10"></div>
            <div class="blank10"></div>
            <div class="blank10"></div>
            <br/>
            <div align="center">
            <input class="memberC_button" type="submit" name="Submit" id="Submit" value="提交" />
							&nbsp;&nbsp;&nbsp;&nbsp;
		    <input class="memberC_button" type="button" name="Return" id="Return" value="返回" />
        </div>
        </form>
        </div>
        </div>
	<!--content-->
<BR/><BR/>
	<!-- foot -->
  	<%@ include file="../CommonPage/Foot.jsp" %>
	
</div>
</body>
</html>
