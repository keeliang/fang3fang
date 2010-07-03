<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/share/share.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>银行合作</title>
<link rel="stylesheet" href="css/style.css" type="text/css" />

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
                  <li><a href="<%=contextPath %>/Info/infoIndexList.action"><span>地产资讯</span></a></li>  
                  <li><a href="<%=contextPath %>/forum/goToForum.action"><span>论坛</span></a></li> 
                  <li class="menuHere"><a href="<%=contextPath %>/CoBank/index.jsp"><span>银行合作</span></a></li>
                  <li><a href="<%=contextPath %>/commerce/commerceIndex.action"><span>旺铺招租</span></a></li> 
                  <li><a href="<%=contextPath %>/invitedexperts/index.action"><span>专家顾问</span></a></li> 
                </ul>
            </div>
        </div>
        <div class="navR" id="hello">
        	<s:if test="#session.USER==null">
						<a href="../member/toRegister.action" class="cYellow"> [注册会员] </a>
						<a href="../member/login.jsp" class="cYellow">[登录]</a>
					</s:if>
					<s:else>
						您好！${USER.userCode }
						<a href="<%=contextPath %>/memberCenter/index.action" class="cYellow"> [会员中心]</a>
						<a href="<%=contextPath %>/CommonPage/ClearSession.jsp" class="cYellow">[注销]</a>
					</s:else>
				</div>
        <div class="clear"></div>
    	<div class="nav_bottom">
        	<div class="nav_bottomL"></div>
            <div class="nav_bottomR"></div>
        </div>
    </div>
	
	<!-- content -->
			<div class="content">
	
	<!-- ad -->
	<div class="info_img"><img src="images/ad.gif" width="937" height="121" alt="" title="" /></div>
	</div>
	<br/>
	<div style="background-image:url(images/bBg.jpg);">
		<div class="BTitleImg"><img src="images/coBank.jpg" /></div>
		<div style="float:left;margin-left:825px;position:absolute;margin-top:-55px"></div>
	</div>

	<br/><br/>
	<div class="Bcontent">
	<div align=left>
	 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="http://www.abchina.com/cn/hq/abc/index/index.jsp/lang=cn/index.html">
	     <img src="images/bank01.jpg"  width="220" height="50"/></a>
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="http://ebank.gdb.com.cn/comminfo/index.html">
		<img src="images/bank02.jpg"  width="220" height="50"/> </a></div>
		<table id="conTable">
		<tr>
		<td  width="20">
		
		</td>
		<td width="300" align="left" id="BankInfoTD">
             <font size="3"  face="宋体"">中国农业银行是新中国设立的第一家商业银行，也是改革开放后第一家恢复成立的国家专业银行。中国农业银行最初成立于1951年，1979年2月再次恢复成立后，成为在农村经济领域占主导地位的国有专业银行。1994年中国农业发展银行分设，1996年农村信用社与农行脱离行政隶属关系，中国农业银行开始向国有独资商业银行转变。2009年1月15日，中国农业银行完成工商变更登记手续，由国有独资商业银行整体改制为股份有限公司，并更名为“中国农业银行股份有限公司”。</font>
		</td>
		<td width="210">
		<img src="images/bank_m1.jpg"  width="160" height="120" id="midPic"/><hr color="#ffffff"/>
		<img src="images/bank_m2.jpg"  width="160" height="120" id="midPic"/>
		</td>
		<td width="300" align="left" id="BankInfoTD">
             <font size="3"  face="宋体" >广东发展银行，简称广发行，是中华人民共和国的一家股份制银行。1988年9月成立，注册资本114.08亿元人民币，总部在中国广东省广州市农林下路83号.广发行在中国大陆多个城市共设立了28家分行，业务范围为中华人民共和国《商业银行法》规 定的所有银行业务.截止2008年12月末，广东发展银行总资产人民币5464亿元，本外币各项存款余额4204亿元，各项贷款余额3110亿元,资本充足率11.6%.在1993年11月8日，广东发展银行在澳门开设分行，并作为中国商业银行在境外开设的首家银行，有一般的银行服务。</font>
		</td>
		</tr>
		</table>
		<br/>
		　　<img src="images/logo-front-bg.jpg" />
		<br/>
		<div align=left>
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <a href="http://www.ccb.com/portal/cn/home/index.html">
         <img src="images/bank03.jpg"  width="220" height="50"/></a>
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 
		<a href="http://www.boc.cn/">
		<img src="images/bank04.jpg"  width="220" height="50"/> </a></div>
		<table id="conTable">
		<tr>
		<td  width="20"></td>
		<td width="300" align="left"  face="宋体" id="BankInfoTD">
            <span><font size="3">中国建设银行股份有限公司，简称建行，中国大陆四大国有商业银行之一，是中国内地规模第三大的银行。它是香港中资金融股的六行三保之一。建行总部设在北京，成立于1954年10月1日，原名中国人民建设银行。作为国家专业银行，主要经办国家基本建设拨款，管理和监督使用国家计划确定的基本建设资金。中国建设银行是首间以全流通形式在香港上市的中国国有商业银行，同时是首间在中国大陆登记的公司成为恒生指数成份股。
</font></span>
		</td>
		<td width="210" align="center">
		<img src="images/bank_m3.jpg"  width="160" height="120" id="midPic"/><hr color="#ffffff"/>
		<img src="images/bank_m4.jpg"  width="160" height="120" id="midPic"/>
		</td>
		<td width="300" align="left"  face="宋体" id="BankInfoTD">
             <font size="3">广东发展银行，简称广发行，是中华人民共和国的一家股份制银行。1988年9月成立，注册资本114.08亿元人民币，总部在中国广东省广州市农林下路83号.广发行在中国大陆多个城市共设立了28家分行，业务范围为中华人民共和国《商业银行法》规 定的所有银行业务.截止2008年12月末，广东发展银行总资产人民币5464亿元，本外币各项存款余额4204亿元，各项贷款余额3110亿元,资本充足率11.6%.在1993年11月8日，广东发展银行在澳门开设分行，并作为中国商业银行在境外开设的首家银行，有一般的银行服务。</font>
		</td>
		</tr>
		</table>
	<br/>
	<div style="background-image:url(images/bBg.jpg);height:53px"><div class="BTitleImg">&nbsp;</div>
	</div><!--content-->

	<!-- foot -->
  	<%@ include file="../CommonPage/Foot.jsp" %>
	
</div>
</body>
</html>
