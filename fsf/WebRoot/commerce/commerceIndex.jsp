<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/share/share.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/> 
<meta name="title" content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)"/> 
<title>旺铺招租 - 房上房地产网</title>


<link href="<%=contextPath%>/commerce/css/general.css" rel="stylesheet" type="text/css" />
<link href="<%=contextPath%>/commerce/css/dialog.css" rel="stylesheet" type="text/css" />
<link href="<%=contextPath%>/commerce/css/style.css" rel="stylesheet" type="text/css" />

<script src="<%=contextPath%>/js/jquery.js" language="javascript"></script>
<script src="<%=contextPath%>/commerce/js/popup.js" language="javascript"></script>			
<script src="<%=contextPath%>/commerce/js/dialog.js" language="javascript"></script>
<script src="<%=contextPath%>/commerce/js/showDiv.js" language="javascript"></script>
<script src="<%=contextPath%>/commerce/js/commerce.js" language="javascript"></script>
<script src="<%=contextPath%>/commerce/js/showRent.js" language="javascript"></script>
<script src="<%=contextPath%>/commerce/js/DisplayMessageShopType.js" language="javascript"></script>

</head>
<body style="background-color:#FFFFFF">
<%@include file="/commerce/commerceHeader.jsp" %>
    
    <div class="clear"></div>
    <div class="blank12"></div>
    <!-- content -->
    <div class="content">
		
        <div id="about11" style="display: block;">
        <div class="wangpu_show">
            <!-- wangpu menu -->
        <div class="wangpu_menu">
                <div class="wangpu_menuLine"></div>
                <ul class="wangpuList"> 
                  <li class="wangpuLeftW">&nbsp;</li>                  
                  <li id="aboutnav11" class="wangpuHere"><a href="javascript:showDiv(1,1);" onclick="javascript:showDiv(1,1);" target="_self"><span>全部信息</span></a></li> 
                  <li id="aboutnav21"><a href="javascript:showDiv(2,1);" onclick="javascript:showDiv(2,1);" target="_self"><span>厂房仓库</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav31"><a href="javascript:showDiv(3,1);" onclick="javascript:showDiv(3,1);" target="_self"><span>酒楼转让 </span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav41"><a href="javascript:showDiv(4,1);" onclick="javascript:showDiv(4,1);" target="_self"><span>写字楼</span></a></li> 
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav51"><a href="javascript:showDiv(5,1);" onclick="javascript:showDiv(5,1);" target="_self"><span>餐厅转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav61"><a href="javascript:showDiv(6,1);" onclick="javascript:showDiv(6,1);" target="_self"><span>商铺</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav71"><a href="javascript:showDiv(7,1);" onclick="javascript:showDiv(7,1);" target="_self"><span>工厂转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav81"><a href="javascript:showDiv(8,1);" onclick="javascript:showDiv(8,1);" target="_self"><span>美容发廊</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav91"><a href="javascript:showDiv(9,1);" onclick="javascript:showDiv(9,1);" target="_self"><span>房租转让</span></a></li>
                  <li class="wangpuList">&nbsp;</li> 
                </ul>  
          </div>
          <!-- 
            <div class="wangpu_button"><a href="javascript:add()"><img src="images/wangpu_fabu.jpg" width="145" height="31" alt="我要发布信息" title="我要发布信息"/></a></div>
         -->
         <!-- 弹出窗口 -->
         
          <div class="wangpu_button" id="Jbutton"><a href="#"><img src="images/wangpu_fabu.jpg" width="142" height="31" alt="我要发布信息" title="我要发布信息"/></a></div>
        
         <div id="popupContact">
		<a id="popupContactClose" href="#">x</a>
		<h1>发布旺铺信息</h1>
		
		
		<form action="/Fang3FangWeb/Access" method="post" name="AddRentForm" id="AddRentForm">
        <input name="referaction" type="hidden" id="referAction" value="AddRentInfo" />
        <input name="useraction" type="hidden" id="useraction" value="Estates" />
       
       <table width="100%" height="28" border="0" align="left" cellspacing="0" bordercolor="#ffffff" bordercolorlight="#c3c3c3" bgcolor="#FFFFFF">
	 
	    <tr>
		<TD style="text-align:right">选择类型：</td>
		<td align="left">
		<select id="StoreTypeID" name="StoreTypeID"><option>-请选择-</option></select>		
    </td>
	</tr>
	<tr height="32" class="boxTop">
		<td  width="50%" style="text-align:right"><span class="label">标题：</span></td>
		<td align="left" width="170"><input type="text" name="Title" id="Title" class="textfule"/></td>
		
	</tr>
	<tr height="32" >
		<td style="text-align:right"><span class="label">内容：</span></td>
		<td align="left" width="280"><textarea name="Content" id="Content" class="textfule" cols="32" rows="4"></textarea>
	
		<font color="#999999">[可对商铺详细描述，请控制在128个字以内]</font>
		</td>
	</tr>
	<tr height="32" >
		<td  style="text-align:right"><span class="label">位置：</span></td>
		<td align="left" width="280">
			<!-- 市 -->
			<span><select id="CityID" name="CityID"><option value="">请选择</option>
			</select>&nbsp;市</span>
			<!-- 区 -->
			<span><select id="DistrictID" name="DistrictID"><option value="">-请选择-</option></select>区</span>
			<select id="TownID" name="TownID"><option value="">-请选择-</option></select>
		</td>
	</tr>
	<tr height="32" >
		<td style="text-align:right"><span class="label">地址：</span></td>
		<td align="left" width="170"><input type="text" name="Address" id="Address" class="textfule" size="35"/></td>
	</tr>
	
		
	<tr height="32" >
		<td  style="text-align:right"><span class="label">联系人名称：</span></td>
		<td align="left" width="170"><input type="text" name="ContactPerson" id="ContactPerson" value="" class="textfule"/></td>
	</tr>
	<tr height="32" >
		<td  style="text-align:right"><span class="label">联系电话：</span></td>
		<td align="left" width="170"><input type="text" name="Phone" id="Phone" class="textfule"/></td>
	</tr>


	<tr>
		<td align="center" colspan="2" height="44">&nbsp;<input type="submit" name="Submit" id="Submit" value="确定"/>
		　　 <input type="reset" name="Reset" id="Reset" value="重置"/></td>
	</tr>


</table>
</form>
	</div>
	<div id="backgroundPopup"></div>
         
          <!-- 弹出窗口end -->
        </div>
     
        <div class="clear"></div>
        <div class="wangpu_content">
        	<p><span class="float_right paddingR"><b>显示全部</b> <a href="#">近1天</a>&nbsp;<a href="#">近2天</a>&nbsp;<a href="#">近3天</a>&nbsp;<a href="#">近5天</a></span><img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /> <b>地区：</b><a href="#">番禺</a>&nbsp;&nbsp;<a href="#">市桥</a>&nbsp;&nbsp;<a href="#">天河区</a>&nbsp;&nbsp;<a href="#">越秀区</a>&nbsp;&nbsp;<a href="#">海珠区</a>&nbsp;&nbsp;<a href="#">荔湾区</a>&nbsp;&nbsp;<a href="#">白云区</a>&nbsp;&nbsp;<a href="#">增城</a>&nbsp;&nbsp;<a href="#">从化</a>&nbsp;&nbsp;<a href="#">惠州</a>&nbsp;&nbsp;<a href="#">汕头</a></p>
            <div class="wangpu_content_show">
            	<table border="0" cellpadding="0" cellspacing="0" width="100%">
                	<tr>
                    	<td valign="top">
                        	<div class="wangpu_col">
                                <div class="wangpu_col_title">厂房仓库</div>
                                <div class="wangpu_col_content" id="showShop">
                                    <p><span class="float_right cGray">aa</span><span class="cOrange bold">bb</span></p>
                                    <s:iterator value="factoryList" id="item">
                                    	<p><s:property value="title"/></p>
                                    </s:iterator>
                                </div>
                                 <div class="wangpu_col_line"></div>
                              
                               
                                <div class="wangpu_col_title">酒楼转让</div>
                                <div class="wangpu_col_content" id="jiulou01">
                                    <p><span class="float_right cGray"></span><span class="cOrange bold"></span></p>
                                    <p></p>
                                </div>
                                 <div class="wangpu_col_line"></div>
                            </div>
                        </td>
                        <td valign="top">
                        	<div class="wangpu_col">
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content" id="jiulou02">
                                    <p><span class="float_right cGray"></span><span class="cOrange bold"></span></p>
                                    <p></p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_title">写字楼</div>
                                <div class="wangpu_col_content" id="xiezilou">
                                    <p><span class="float_right cGray"></span><span class="cOrange bold"></span></p>
                                    <p></p>
                                </div>
                                <div class="wangpu_col_line"></div>
                               
                            </div>
                        </td>
                        <td valign="top">
                        	<div class="wangpu_col">
                                <div class="wangpu_col_title">餐厅转让</div>
                                <div class="wangpu_col_content" id="canting">
                                    <p><span class="float_right cGray"></span><span class="cOrange bold"></span></p>
                                    <p></p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_title">商铺</div>
                                <div class="wangpu_col_content" id="shangpu">
                                    <p><span class="float_right cGray"></span><span class="cOrange bold"></span></p>
                                    <p></p>
                                </div>
                                <div class="wangpu_col_line"></div>
                            </div>
                        </td>
                        <td valign="top">
                        	<div class="wangpu_col">
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_title">工厂转让</div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺区金山大道新光快线出口，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                            </div>
                        </td>
                        <td valign="top">
                        	<div class="wangpu_col02">
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_title">房租转让</div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                                <div class="wangpu_col_line"></div>
                                <div class="wangpu_col_content">
                                    <p><span class="float_right cGray">3分钟</span><span class="cOrange bold">厂房出租</span></p>
                                    <p>位于番禺主城区，邻寸市桥区中心，欢迎来电：34058237</p>
                                </div>
                            </div>
                        </td>
                        
                    </tr>
                </table>
            	
                
                
            
            </div>
        </div>
        
        <div class="clear"></div>
        <div class="blank12"></div>
        
        <!-- col04 -->
        
            
        	<div class="clear"></div>
            <div class="blank12"></div>
            <!-- col06 -->
            
            
         
        
        </div>
        
        <div id="about12" style="display: none;">
        <div class="wangpu_show">
            <!-- wangpu menu -->
        <div class="wangpu_menu">
                <div class="wangpu_menuLine"></div>
                <ul class="wangpuList"> 
                  <li class="wangpuLeftW">&nbsp;</li>
                  <li class="wangpuLeftW02">&nbsp;</li>                                                      
                  <li id="aboutnav11"><a href="javascript:showDiv(1,1);" onclick="javascript:showDiv(1,1);" target="_self"><span>全部信息</span></a></li> 
                  <li id="aboutnav21" class="wangpuHere"><a href="javascript:showDiv(2,1);" onclick="javascript:showDiv(2,1);" target="_self"><span>厂房仓库</span></a></li>
                  <li id="aboutnav31"><a href="javascript:showDiv(3,1);" onclick="javascript:showDiv(3,1);" target="_self"><span>酒楼转让 </span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav41"><a href="javascript:showDiv(4,1);" onclick="javascript:showDiv(4,1);" target="_self"><span>写字楼</span></a></li> 
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav51"><a href="javascript:showDiv(5,1);" onclick="javascript:showDiv(5,1);" target="_self"><span>餐厅转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav61"><a href="javascript:showDiv(6,1);" onclick="javascript:showDiv(6,1);" target="_self"><span>商铺</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav71"><a href="javascript:showDiv(7,1);" onclick="javascript:showDiv(7,1);" target="_self"><span>工厂转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav81"><a href="javascript:showDiv(8,1);" onclick="javascript:showDiv(8,1);" target="_self"><span>美容发廊</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav91"><a href="javascript:showDiv(9,1);" onclick="javascript:showDiv(9,1);" target="_self"><span>房租转让</span></a></li>
                  <li class="wangpuList">&nbsp;</li> 
                </ul>  
          </div>
            <div class="wangpu_button"><a href="#"><img src="images/wangpu_fabu.jpg" width="145" height="31" alt="我要发布信息" title="我要发布信息" /></a></div>
        </div>
        <div class="clear"></div>
        <div class="wangpu_content">
        	<p><span class="float_right paddingR"><b>显示全部</b> <a href="#">近1天</a>&nbsp;<a href="#">近2天</a>&nbsp;<a href="#">近3天</a>&nbsp;<a href="#">近5天</a></span><img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /> <b>地区：</b><a href="#">番禺</a>&nbsp;&nbsp;<a href="#">市桥</a>&nbsp;&nbsp;<a href="#">天河区</a>&nbsp;&nbsp;<a href="#">越秀区</a>&nbsp;&nbsp;<a href="#">海珠区</a>&nbsp;&nbsp;<a href="#">荔湾区</a>&nbsp;&nbsp;<a href="#">白云区</a>&nbsp;&nbsp;<a href="#">增城</a>&nbsp;&nbsp;<a href="#">从化</a>&nbsp;&nbsp;<a href="#">惠州</a>&nbsp;&nbsp;<a href="#">汕头</a></p>
            <div class="wangpu_content_show">
            	<div class="wangpu_CF_left">
                	<ul>
                    	<li class="LiBg">
                        	<dl>
                            	<dt><img src="images/small_pic01.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li>
                        	<dl>
                            	<dt><img src="images/small_picNone.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li class="LiBg">
                        	<dl>
                            	<dt><img src="images/small_pic01.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li>
                        	<dl>
                            	<dt><img src="images/small_picNone.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li class="LiBg">
                        	<dl>
                            	<dt><img src="images/small_pic01.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li>
                        	<dl>
                            	<dt><img src="images/small_picNone.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li class="LiBg">
                        	<dl>
                            	<dt><img src="images/small_pic01.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li>
                        	<dl>
                            	<dt><img src="images/small_picNone.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li class="LiBg">
                        	<dl>
                            	<dt><img src="images/small_pic01.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li>
                        	<dl>
                            	<dt><img src="images/small_picNone.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li class="LiBg">
                        	<dl>
                            	<dt><img src="images/small_pic01.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li>
                        	<dl>
                            	<dt><img src="images/small_picNone.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li class="LiBg">
                        	<dl>
                            	<dt><img src="images/small_pic01.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                        <li>
                        	<dl>
                            	<dt><img src="images/small_picNone.jpg" width="59" height="42" alt="" title="" /></dt>
                                <dd><a href="#" class="cOrange"><b>目首选零投资咖啡加盟创业项目</b></a>&nbsp;&nbsp;&nbsp;&nbsp;- 13 周 以前  </dd>
                                <dd>CBD内复式临街旺铺期待您的加入!具备餐饮条件,可满足多种业态要求.位于SOHO尚都北塔入口处北侧,面对新城国际及朝外</dd>
                            </dl>
                        </li>
                    </ul>
                    
                    <div class="wangpu_fenye">
                    	<div class="quotes"><span class="disabled"> < </span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a><a href="#?page=4">4</a><a href="#?page=5">5</a><a href="#?page=6">6</a><a href="#?page=7">7</a>...<a href="#?page=199">199</a><a href="#?page=200">200</a><a href="#?page=2"> > </a></div>
                    </div>
                    
                    
                </div>
                <div class="wangpu_CF_right">
                	<div class="wangpu_col_line"></div>
                       <div class="wangpu_col_content wangpu_tuijian"><b>推荐房源</b></div>
                       <div class="clear"></div>
                       <ul>
                            <li>
                                <p><img src="images/p01.jpg" width="131" height="86" alt="" title="" /></p>
                                <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                                <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                            </li>
                            <li>
                                <p><img src="images/p02.jpg" width="131" height="86" alt="" title="" /></p>
                                <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                                <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                            </li>
                            <li>
                                <p><img src="images/p03.jpg" width="131" height="86" alt="" title="" /></p>
                                <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                                <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                            </li>
                            <li>
                                <p><img src="images/p04.jpg" width="131" height="86" alt="" title="" /></p>
                                <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                                <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                            </li>
                            <li>
                                <p><img src="images/p05.jpg" width="131" height="86" alt="" title="" /></p>
                                <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                                <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                            </li>
                            <li>
                                <p><img src="images/p06.jpg" width="131" height="86" alt="" title="" /></p>
                                <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                                <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                            </li>
                            <li>
                                <p><img src="images/p07.jpg" width="131" height="86" alt="" title="" /></p>
                                <p><a href="#" class="cRed02"><u>金泰・先锋</u></a>&nbsp;&nbsp;<a href="#" class="cRed02"><u>业主论坛</u></a></p>
                                <p><span class="cRed02">2008.12.12</span>&nbsp;&nbsp;<span class="cRed02">16000元</span></p>
                            </li>
                  </ul>
                </div>
          </div>
        </div>
        </div>
        
        
        <div id="about13" style="display: none;">
        <div class="wangpu_show">
            <!-- wangpu menu -->
        <div class="wangpu_menu">
                <div class="wangpu_menuLine"></div>
                <ul class="wangpuList"> 
                  <li class="wangpuLeftW">&nbsp;</li>                   <li class="wangpuLeftW02">&nbsp;</li>                                                     
                  <li id="aboutnav11"><a href="javascript:showDiv(1,1);" onclick="javascript:showDiv(1,1);" target="_self"><span>全部信息</span></a></li> 
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav21"><a href="javascript:showDiv(2,1);" onclick="javascript:showDiv(2,1);" target="_self"><span>厂房仓库</span></a></li>
                  <li id="aboutnav31" class="wangpuHere"><a href="javascript:showDiv(3,1);" onclick="javascript:showDiv(3,1);" target="_self"><span>酒楼转让 </span></a></li>
                  <li id="aboutnav41"><a href="javascript:showDiv(4,1);" onclick="javascript:showDiv(4,1);" target="_self"><span>写字楼</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>      
                  <li id="aboutnav51"><a href="javascript:showDiv(5,1);" onclick="javascript:showDiv(5,1);" target="_self"><span>餐厅转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav61"><a href="javascript:showDiv(6,1);" onclick="javascript:showDiv(6,1);" target="_self"><span>商铺</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav71"><a href="javascript:showDiv(7,1);" onclick="javascript:showDiv(7,1);" target="_self"><span>工厂转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav81"><a href="javascript:showDiv(8,1);" onclick="javascript:showDiv(8,1);" target="_self"><span>美容发廊</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav91"><a href="javascript:showDiv(9,1);" onclick="javascript:showDiv(9,1);" target="_self"><span>房租转让</span></a></li>
                  <li class="wangpuList">&nbsp;</li> 
                </ul>  
          </div>
            <div class="wangpu_button"><a href="#"><img src="images/wangpu_fabu.jpg" width="145" height="31" alt="我要发布信息" title="我要发布信息" /></a></div>
        </div>
        <div class="clear"></div>
        <div class="wangpu_content">
        	<p><span class="float_right paddingR"><b>显示全部</b> <a href="#">近1天</a>&nbsp;<a href="#">近2天</a>&nbsp;<a href="#">近3天</a>&nbsp;<a href="#">近5天</a></span><img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /> <b>地区：</b><a href="#">番禺</a>&nbsp;&nbsp;<a href="#">市桥</a>&nbsp;&nbsp;<a href="#">天河区</a>&nbsp;&nbsp;<a href="#">越秀区</a>&nbsp;&nbsp;<a href="#">海珠区</a>&nbsp;&nbsp;<a href="#">荔湾区</a>&nbsp;&nbsp;<a href="#">白云区</a>&nbsp;&nbsp;<a href="#">增城</a>&nbsp;&nbsp;<a href="#">从化</a>&nbsp;&nbsp;<a href="#">惠州</a>&nbsp;&nbsp;<a href="#">汕头</a></p>
            <div class="wangpu_content_show">暂无内容！</div>
        </div>
        </div>
        
        <div id="about14" style="display: none;">
        <div class="wangpu_show">
            <!-- wangpu menu -->
        <div class="wangpu_menu">
                <div class="wangpu_menuLine"></div>
                <ul class="wangpuList"> 
                  <li class="wangpuLeftW">&nbsp;</li>                   <li class="wangpuLeftW02">&nbsp;</li>                                                     
                  <li id="aboutnav11"><a href="javascript:showDiv(1,1);" onclick="javascript:showDiv(1,1);" target="_self"><span>全部信息</span></a></li> 
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav21"><a href="javascript:showDiv(2,1);" onclick="javascript:showDiv(2,1);" target="_self"><span>厂房仓库</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav31"><a href="javascript:showDiv(3,1);" onclick="javascript:showDiv(3,1);" target="_self"><span>酒楼转让 </span></a></li>
                  <li id="aboutnav41" class="wangpuHere"><a href="javascript:showDiv(4,1);" onclick="javascript:showDiv(4,1);" target="_self"><span>写字楼</span></a></li>      
                  <li id="aboutnav51"><a href="javascript:showDiv(5,1);" onclick="javascript:showDiv(5,1);" target="_self"><span>餐厅转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav61"><a href="javascript:showDiv(6,1);" onclick="javascript:showDiv(6,1);" target="_self"><span>商铺</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav71"><a href="javascript:showDiv(7,1);" onclick="javascript:showDiv(7,1);" target="_self"><span>工厂转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav81"><a href="javascript:showDiv(8,1);" onclick="javascript:showDiv(8,1);" target="_self"><span>美容发廊</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav91"><a href="javascript:showDiv(9,1);" onclick="javascript:showDiv(9,1);" target="_self"><span>房租转让</span></a></li>
                  <li class="wangpuList">&nbsp;</li> 
                </ul>  
          </div>
            <div class="wangpu_button"><a href="#"><img src="images/wangpu_fabu.jpg" width="145" height="31" alt="我要发布信息" title="我要发布信息" /></a></div>
        </div>
        <div class="clear"></div>
        <div class="wangpu_content">
         	<p><span class="float_right paddingR"><b>显示全部</b> <a href="#">近1天</a>&nbsp;<a href="#">近2天</a>&nbsp;<a href="#">近3天</a>&nbsp;<a href="#">近5天</a></span><img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /> <b>地区：</b><a href="#">番禺</a>&nbsp;&nbsp;<a href="#">市桥</a>&nbsp;&nbsp;<a href="#">天河区</a>&nbsp;&nbsp;<a href="#">越秀区</a>&nbsp;&nbsp;<a href="#">海珠区</a>&nbsp;&nbsp;<a href="#">荔湾区</a>&nbsp;&nbsp;<a href="#">白云区</a>&nbsp;&nbsp;<a href="#">增城</a>&nbsp;&nbsp;<a href="#">从化</a>&nbsp;&nbsp;<a href="#">惠州</a>&nbsp;&nbsp;<a href="#">汕头</a></p>
            <div class="wangpu_content_show">暂无内容！</div>
        </div>
        </div>
        
        <div id="about15" style="display: none;">
        <div class="wangpu_show">
            <!-- wangpu menu -->
        <div class="wangpu_menu">
                <div class="wangpu_menuLine"></div>
                <ul class="wangpuList"> 
                  <li class="wangpuLeftW">&nbsp;</li>                  <li class="wangpuLeftW02">&nbsp;</li>                                                      
                  <li id="aboutnav11"><a href="javascript:showDiv(1,1);" onclick="javascript:showDiv(1,1);" target="_self"><span>全部信息</span></a></li> 
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav21"><a href="javascript:showDiv(2,1);" onclick="javascript:showDiv(2,1);" target="_self"><span>厂房仓库</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav31"><a href="javascript:showDiv(3,1);" onclick="javascript:showDiv(3,1);" target="_self"><span>酒楼转让 </span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav41"><a href="javascript:showDiv(4,1);" onclick="javascript:showDiv(4,1);" target="_self"><span>写字楼</span></a></li>      
                  <li id="aboutnav51" class="wangpuHere"><a href="javascript:showDiv(5,1);" onclick="javascript:showDiv(5,1);" target="_self"><span>餐厅转让</span></a></li>
                  <li id="aboutnav61"><a href="javascript:showDiv(6,1);" onclick="javascript:showDiv(6,1);" target="_self"><span>商铺</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav71"><a href="javascript:showDiv(7,1);" onclick="javascript:showDiv(7,1);" target="_self"><span>工厂转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav81"><a href="javascript:showDiv(8,1);" onclick="javascript:showDiv(8,1);" target="_self"><span>美容发廊</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav91"><a href="javascript:showDiv(9,1);" onclick="javascript:showDiv(9,1);" target="_self"><span>房租转让</span></a></li>
                  <li class="wangpuList">&nbsp;</li> 
                </ul>  
          </div>
            <div class="wangpu_button"><a href="#"><img src="images/wangpu_fabu.jpg" width="145" height="31" alt="我要发布信息" title="我要发布信息" /></a></div>
        </div>
        <div class="clear"></div>
        <div class="wangpu_content">
        	<p><span class="float_right paddingR"><b>显示全部</b> <a href="#">近1天</a>&nbsp;<a href="#">近2天</a>&nbsp;<a href="#">近3天</a>&nbsp;<a href="#">近5天</a></span><img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /> <b>地区：</b><a href="#">番禺</a>&nbsp;&nbsp;<a href="#">市桥</a>&nbsp;&nbsp;<a href="#">天河区</a>&nbsp;&nbsp;<a href="#">越秀区</a>&nbsp;&nbsp;<a href="#">海珠区</a>&nbsp;&nbsp;<a href="#">荔湾区</a>&nbsp;&nbsp;<a href="#">白云区</a>&nbsp;&nbsp;<a href="#">增城</a>&nbsp;&nbsp;<a href="#">从化</a>&nbsp;&nbsp;<a href="#">惠州</a>&nbsp;&nbsp;<a href="#">汕头</a></p>
            <div class="wangpu_content_show">暂无内容！</div>
        </div>
        </div>
        
        <div id="about16" style="display: none;">
        <div class="wangpu_show">
            <!-- wangpu menu -->
        <div class="wangpu_menu">
                <div class="wangpu_menuLine"></div>
                <ul class="wangpuList"> 
                  <li class="wangpuLeftW">&nbsp;</li>                   <li class="wangpuLeftW02">&nbsp;</li>                                                     
                  <li id="aboutnav11"><a href="javascript:showDiv(1,1);" onclick="javascript:showDiv(1,1);" target="_self"><span>全部信息</span></a></li> 
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav21"><a href="javascript:showDiv(2,1);" onclick="javascript:showDiv(2,1);" target="_self"><span>厂房仓库</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav31"><a href="javascript:showDiv(3,1);" onclick="javascript:showDiv(3,1);" target="_self"><span>酒楼转让 </span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav41"><a href="javascript:showDiv(4,1);" onclick="javascript:showDiv(4,1);" target="_self"><span>写字楼</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>      
                  <li id="aboutnav51"><a href="javascript:showDiv(5,1);" onclick="javascript:showDiv(5,1);" target="_self"><span>餐厅转让</span></a></li>
                  <li id="aboutnav61" class="wangpuHere"><a href="javascript:showDiv(6,1);" onclick="javascript:showDiv(6,1);" target="_self"><span>商铺</span></a></li>
                  <li id="aboutnav71"><a href="javascript:showDiv(7,1);" onclick="javascript:showDiv(7,1);" target="_self"><span>工厂转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav81"><a href="javascript:showDiv(8,1);" onclick="javascript:showDiv(8,1);" target="_self"><span>美容发廊</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav91"><a href="javascript:showDiv(9,1);" onclick="javascript:showDiv(9,1);" target="_self"><span>房租转让</span></a></li>
                  <li class="wangpuList">&nbsp;</li> 
                </ul>  
          </div>
            <div class="wangpu_button"><a href="#"><img src="images/wangpu_fabu.jpg" width="145" height="31" alt="我要发布信息" title="我要发布信息" /></a></div>
        </div>
        <div class="clear"></div>
        <div class="wangpu_content">
        	<p><span class="float_right paddingR"><b>显示全部</b> <a href="#">近1天</a>&nbsp;<a href="#">近2天</a>&nbsp;<a href="#">近3天</a>&nbsp;<a href="#">近5天</a></span><img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /> <b>地区：</b><a href="#">番禺</a>&nbsp;&nbsp;<a href="#">市桥</a>&nbsp;&nbsp;<a href="#">天河区</a>&nbsp;&nbsp;<a href="#">越秀区</a>&nbsp;&nbsp;<a href="#">海珠区</a>&nbsp;&nbsp;<a href="#">荔湾区</a>&nbsp;&nbsp;<a href="#">白云区</a>&nbsp;&nbsp;<a href="#">增城</a>&nbsp;&nbsp;<a href="#">从化</a>&nbsp;&nbsp;<a href="#">惠州</a>&nbsp;&nbsp;<a href="#">汕头</a></p>
            <div class="wangpu_content_show">暂无内容！</div>
        </div>
        </div>
        
        <div id="about17" style="display: none;">
        <div class="wangpu_show">
            <!-- wangpu menu -->
        <div class="wangpu_menu">
                <div class="wangpu_menuLine"></div>
                <ul class="wangpuList"> 
                  <li class="wangpuLeftW">&nbsp;</li>                   <li class="wangpuLeftW02">&nbsp;</li>                                                     
                  <li id="aboutnav11"><a href="javascript:showDiv(1,1);" onclick="javascript:showDiv(1,1);" target="_self"><span>全部信息</span></a></li> 
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav21"><a href="javascript:showDiv(2,1);" onclick="javascript:showDiv(2,1);" target="_self"><span>厂房仓库</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav31"><a href="javascript:showDiv(3,1);" onclick="javascript:showDiv(3,1);" target="_self"><span>酒楼转让 </span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav41"><a href="javascript:showDiv(4,1);" onclick="javascript:showDiv(4,1);" target="_self"><span>写字楼</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>      
                  <li id="aboutnav51"><a href="javascript:showDiv(5,1);" onclick="javascript:showDiv(5,1);" target="_self"><span>餐厅转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav61"><a href="javascript:showDiv(6,1);" onclick="javascript:showDiv(6,1);" target="_self"><span>商铺</span></a></li>
                  <li id="aboutnav71" class="wangpuHere"><a href="javascript:showDiv(7,1);" onclick="javascript:showDiv(7,1);" target="_self"><span>工厂转让</span></a></li>               
                  <li id="aboutnav81"><a href="javascript:showDiv(8,1);" onclick="javascript:showDiv(8,1);" target="_self"><span>美容发廊</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav91"><a href="javascript:showDiv(9,1);" onclick="javascript:showDiv(9,1);" target="_self"><span>房租转让</span></a></li>
                  <li class="wangpuList">&nbsp;</li> 
                </ul>  
          </div>
            <div class="wangpu_button"><a href="#"><img src="images/wangpu_fabu.jpg" width="145" height="31" alt="我要发布信息" title="我要发布信息" /></a></div>
        </div>
        <div class="clear"></div>
        <div class="wangpu_content">
        	<p><span class="float_right paddingR"><b>显示全部</b> <a href="#">近1天</a>&nbsp;<a href="#">近2天</a>&nbsp;<a href="#">近3天</a>&nbsp;<a href="#">近5天</a></span><img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /> <b>地区：</b><a href="#">番禺</a>&nbsp;&nbsp;<a href="#">市桥</a>&nbsp;&nbsp;<a href="#">天河区</a>&nbsp;&nbsp;<a href="#">越秀区</a>&nbsp;&nbsp;<a href="#">海珠区</a>&nbsp;&nbsp;<a href="#">荔湾区</a>&nbsp;&nbsp;<a href="#">白云区</a>&nbsp;&nbsp;<a href="#">增城</a>&nbsp;&nbsp;<a href="#">从化</a>&nbsp;&nbsp;<a href="#">惠州</a>&nbsp;&nbsp;<a href="#">汕头</a></p>
            <div class="wangpu_content_show">暂无内容！</div>
        </div>
        </div>
        
        <div id="about18" style="display: none;">
        <div class="wangpu_show">
            <!-- wangpu menu -->
        <div class="wangpu_menu">
                <div class="wangpu_menuLine"></div>
                <ul class="wangpuList"> 
                  <li class="wangpuLeftW">&nbsp;</li>                  <li class="wangpuLeftW02">&nbsp;</li>                                                      
                  <li id="aboutnav11"><a href="javascript:showDiv(1,1);" onclick="javascript:showDiv(1,1);" target="_self"><span>全部信息</span></a></li> 
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav21"><a href="javascript:showDiv(2,1);" onclick="javascript:showDiv(2,1);" target="_self"><span>厂房仓库</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav31"><a href="javascript:showDiv(3,1);" onclick="javascript:showDiv(3,1);" target="_self"><span>酒楼转让 </span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav41"><a href="javascript:showDiv(4,1);" onclick="javascript:showDiv(4,1);" target="_self"><span>写字楼</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>      
                  <li id="aboutnav51"><a href="javascript:showDiv(5,1);" onclick="javascript:showDiv(5,1);" target="_self"><span>餐厅转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav61"><a href="javascript:showDiv(6,1);" onclick="javascript:showDiv(6,1);" target="_self"><span>商铺</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav71"><a href="javascript:showDiv(7,1);" onclick="javascript:showDiv(7,1);" target="_self"><span>工厂转让</span></a></li>               
                  <li id="aboutnav81" class="wangpuHere"><a href="javascript:showDiv(8,1);" onclick="javascript:showDiv(8,1);" target="_self"><span>美容发廊</span></a></li> 
                  <li id="aboutnav91"><a href="javascript:showDiv(9,1);" onclick="javascript:showDiv(9,1);" target="_self"><span>房租转让</span></a></li>
                  <li class="wangpuList">&nbsp;</li> 
                </ul>  
          </div>
            <div class="wangpu_button"><a href="#"><img src="images/wangpu_fabu.jpg" width="145" height="31" alt="我要发布信息" title="我要发布信息" /></a></div>
        </div>
        <div class="clear"></div>
        <div class="wangpu_content">
        	<p><span class="float_right paddingR"><b>显示全部</b> <a href="#">近1天</a>&nbsp;<a href="#">近2天</a>&nbsp;<a href="#">近3天</a>&nbsp;<a href="#">近5天</a></span><img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /> <b>地区：</b><a href="#">番禺</a>&nbsp;&nbsp;<a href="#">市桥</a>&nbsp;&nbsp;<a href="#">天河区</a>&nbsp;&nbsp;<a href="#">越秀区</a>&nbsp;&nbsp;<a href="#">海珠区</a>&nbsp;&nbsp;<a href="#">荔湾区</a>&nbsp;&nbsp;<a href="#">白云区</a>&nbsp;&nbsp;<a href="#">增城</a>&nbsp;&nbsp;<a href="#">从化</a>&nbsp;&nbsp;<a href="#">惠州</a>&nbsp;&nbsp;<a href="#">汕头</a></p>
            <div class="wangpu_content_show">暂无内容！</div>
        </div>
        </div>
        
        <div id="about19" style="display: none;">
        <div class="wangpu_show">
            <!-- wangpu menu -->
        <div class="wangpu_menu">
                <div class="wangpu_menuLine"></div>
                <ul class="wangpuList"> 
                  <li class="wangpuLeftW">&nbsp;</li>                  <li class="wangpuLeftW02">&nbsp;</li>                                                      
                  <li id="aboutnav11"><a href="javascript:showDiv(1,1);" onclick="javascript:showDiv(1,1);" target="_self"><span>全部信息</span></a></li> 
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav21"><a href="javascript:showDiv(2,1);" onclick="javascript:showDiv(2,1);" target="_self"><span>厂房仓库</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav31"><a href="javascript:showDiv(3,1);" onclick="javascript:showDiv(3,1);" target="_self"><span>酒楼转让 </span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav41"><a href="javascript:showDiv(4,1);" onclick="javascript:showDiv(4,1);" target="_self"><span>写字楼</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>      
                  <li id="aboutnav51"><a href="javascript:showDiv(5,1);" onclick="javascript:showDiv(5,1);" target="_self"><span>餐厅转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav61"><a href="javascript:showDiv(6,1);" onclick="javascript:showDiv(6,1);" target="_self"><span>商铺</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>
                  <li id="aboutnav71"><a href="javascript:showDiv(7,1);" onclick="javascript:showDiv(7,1);" target="_self"><span>工厂转让</span></a></li>
                  <li class="wangpuLine">&nbsp;</li>               
                  <li id="aboutnav81"><a href="javascript:showDiv(8,1);" onclick="javascript:showDiv(8,1);" target="_self"><span>美容发廊</span></a></li> 
                  <li id="aboutnav91" class="wangpuHere"><a href="javascript:showDiv(9,1);" onclick="javascript:showDiv(9,1);" target="_self"><span>房租转让</span></a></li>
                   
                </ul>  
          </div>
            <div class="wangpu_button"><img src="images/wangpu_fabu.jpg" width="145" height="31" alt="我要发布信息" title="我要发布信息"  onClick="add()"/></div>
        </div>
        <div class="clear"></div>
        <div class="wangpu_content">
        	<p><span class="float_right paddingR"><b>显示全部</b> <a href="#">近1天</a>&nbsp;<a href="#">近2天</a>&nbsp;<a href="#">近3天</a>&nbsp;<a href="#">近5天</a></span><img src="images/freeTrade_dot04.jpg" width="10" height="10" align="absmiddle" /> <b>地区：</b><a href="#">番禺</a>&nbsp;&nbsp;<a href="#">市桥</a>&nbsp;&nbsp;<a href="#">天河区</a>&nbsp;&nbsp;<a href="#">越秀区</a>&nbsp;&nbsp;<a href="#">海珠区</a>&nbsp;&nbsp;<a href="#">荔湾区</a>&nbsp;&nbsp;<a href="#">白云区</a>&nbsp;&nbsp;<a href="#">增城</a>&nbsp;&nbsp;<a href="#">从化</a>&nbsp;&nbsp;<a href="#">惠州</a>&nbsp;&nbsp;<a href="#">汕头</a></p>
            <div class="wangpu_content_show">暂无内容！</div>
        </div>
        </div>

    
  </div>
  
  <div class="clear"></div>
  <div class="blank12"></div>
  <!-- foot -->
    <%@ include file="/CommonPage/Foot.jsp" %>
    
</div>   
</body>
</html>
