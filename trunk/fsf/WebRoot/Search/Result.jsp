<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C">  
<meta name="title"	content="番禺房地产门户 - 房上房地产网(http://wwww.fang3fang.com)" />
<title>自由贸易区 - 房上房地产网</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script> 
<script type="text/javascript" src="js/showDiv.js" ></script>
<SCRIPT type="text/javascript" src="js/slide.js"></SCRIPT>
<SCRIPT type="text/javascript" src="js/result.js"></SCRIPT>
<style type="text/css">
body .new_menu {
background:url(../images/bg.jpg) repeat-x top;
}
</style>
</head>
<body>
<div class="box">

	<!-- new menu -->
    <%@ include file="../CommonPage/New_Menu.jsp" %> 

	<!-- head -->
   <%@ include file="../CommonPage/Head.jsp" %> 
    

    <!-- search -->
    <%@ include file="../CommonPage/Search.jsp" %> 
    
    <div class="city_list">
					<p>
						[区域查询]： 番禺市桥
						<a href="#" class="cRed"><u>从化区</u> </a>
						<a href="#" class="cRed"><u>花都区</u> </a>
						<a href="#" class="cRed"><u>黄埔区</u> </a>
						<a href="#" class="cRed"><u>芳村区</u> </a>
						<a href="#" class="cRed"><u>白云区</u> </a>
						<a href="#" class="cRed"><u>番禺区</u> </a>
						<a href="#" class="cRed"><u>海珠区</u> </a>
						<a href="#" class="cRed"><u>荔湾区</u> </a>
						<a href="#" class="cRed"><u>越秀区</u> </a>
						<a href="#" class="cRed"><u>增城区</u> </a>
						<a href="#" class="cRed"><u>天河区</u> </a>
						<a href="#" class="cRed"><u>东山区</u> </a>
						<a href="#" class="cRed"><u>南海</u> </a>
						<a href="#" class="cRed"><u>萝岗区</u> </a>
						<a href="#" class="cRed"><u>佛山市</u> </a>
						<a href="#" class="cRed"><u>中山</u> </a>
					</p>
					<p>
						[价格查询]：
						<a href="#" class="cRed"><u>30万以下</u> </a>
						<a href="#" class="cRed"><u>30-60万</u> </a>
						<a href="#" class="cRed"><u>60-100万</u> </a>
						<a href="#" class="cRed"><u>100-150万</u> </a>
						<a href="#" class="cRed"><u>150-200万</u> </a>
						<a href="#" class="cRed"><u>200-300万</u> </a>
						<a href="#" class="cRed"><u>300-500万</u> </a>
						<a href="#" class="cRed"><u>500万以上</u> </a>
					</p>
					<p>
						[面积查询]：
						<a href="#" class="cRed"><u>40平米以下</u> </a>
						<a href="#" class="cRed"><u>40-60平米</u> </a>
						<a href="#" class="cRed"><u>60-80平米</u> </a>
						<a href="#" class="cRed"><u>80-110平米</u> </a>
						<a href="#" class="cRed"><u>110-130平米</u> </a>
						<a href="#" class="cRed"><u>130-150平米</u> </a>
						<a href="#" class="cRed"><u>150-200平米</u> </a>
						<a href="#" class="cRed"><u>200-300平米</u> </a>
						<a href="#" class="cRed"><u>300-500平米</u> </a>
					</p>
					<p>
						[房型查询]：
						<a href="#" class="cRed"><u>一房</u> </a>
						<a href="#" class="cRed"><u>二房</u> </a>
						<a href="#" class="cRed"><u>三房</u> </a>
						<a href="#" class="cRed"><u>四房</u> </a>
						<a href="#" class="cRed"><u>五房</u> </a>
						<a href="#" class="cRed"><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：
						<a href="#" class="cRed"><u>普通住宅</u> </a>
						<a href="#" class="cRed"><u>公寓</u> </a>
						<a href="#" class="cRed"><u>商铺</u> </a>
						<a href="#" class="cRed"><u>别墅</u> </a>
						<a href="#" class="cRed"><u>写字楼</u> </a>
						<a href="#" class="cRed"><u>仓库厂房</u> </a>
						<a href="#" class="cRed"><u>车位</u> </a>
					</p>
				</div>

			

   
   <div class="clear"></div>
   <!-- guide -->
   <div id="guide" class="guide">
        <p>您当前的所在位置：<a href="../main/index.jsp">房上房</a> &gt; <a href="../freetrade/index.jsp">搜索</a> &gt; <a id="TypeInfo" href="../freetrade/index.jsp">搜索结果</a> &gt; <span id="PropertyInfo" class="cOrange">祈福</span></p>
   </div>
 
   <div>
   　　　　　　　　　　　　　　　　　　<img height="21" align="absmiddle" width="21" src="images/searchPic2.jpg"/>共为您找到&nbsp;<b><span class="cOrange">90</span></b>&nbsp;条相关记录
   </div>
   <!-- content -->
   <div class="freeTrade_contnet">
   		<!-- left -->
   		<div class="freeTrade_contnetL">
   	    <div class="freeTrade_contnetL_show">
               <div id="EstateInfo" class="freeTrade_contnetL_title01"><span class="float_right">排序方式<select><option>按价格  从高到低</option><option>按价格  从低到高</option></select></span><span class="cOrange font14"><b>搜索结果</b></span> <img src="images/freeTrade_down.jpg" width="13" height="13" align="absmiddle" /></div>
               <table border="0" cellpadding="0" cellspacing="0" class="freeTrade_table" width="650px">
                	<tr>
                    	
                        <td id="PropertyName" class="grayBg" width="330px" colspan="2"><span class="cOrange">标题</span>
                        
                        </td>
                        <td class="grayBg">户型</td>
                        <td class="grayBg"><span>面积</span> </td>
                        <td  class="grayBg">单价</td>
                         <td class="grayBg"><span class="cOrange">总价</span> </td>
                          <td class="grayBg"><span class="cOrange">发布人</span> 
                          </td>
                    </tr>
                   <tr>
                    	<td ><img src="" width="105" height="80" /></td>
                        <td id="PropertyName">
                        <a href="#" ><span class="Stitle">花都-富豪山庄</span></a>                      	
                      	<br/>
                           地铁出口 豪华装修
                        </td>
                        <td>3室2厅</td>
                        <td ><span>172.5㎡</span> </td>
                        <td >16694元/㎡</td>
                         <td><span class="cOrange">288万</span> </td>
                          <td ><span class="cOrange">神秘人</span><br/>
                          2009-11-12
                           </td>
                    </tr>
                     <tr>
                    	<td ><img src="" width="105" height="80" /></td>
                        <td id="PropertyName">
                      	 <a href="#" ><span class="Stitle">番禺-祈福新村倚湖湾</span></a>
                      	 <br/>
                      	 高品质生活，由倚湖开始
                        </td>
                        <td>3室2厅</td>
                        <td ><span>172.5㎡</span> </td>
                        <td >16694元/㎡</td>
                         <td><span class="cOrange">288万</span> </td>
                          <td ><span class="cOrange">神秘人</span><br/>
                          2009-11-12
                           </td>
                    </tr>
                     <tr>
                    	<td ><img src="" width="105" height="80" /></td>
                        <td id="PropertyName">
                      	 <a href="#" ><span class="Stitle">番禺-祈福新村蝶舞轩</span></a>
                      	 <br/>
						祈福新村蝶舞轩南向中间位置59万！
                        </td>
                        <td>3室2厅</td>
                        <td ><span>172.5㎡</span> </td>
                        <td >16694元/㎡</td>
                         <td><span class="cOrange">288万</span> </td>
                          <td ><span class="cOrange">神秘人</span><br/>
                          2009-11-12
                           </td>
                    </tr>
                     <tr>
                    	<td ><img src="" width="105" height="80" /></td>
                        <td id="PropertyName">
                      	 <a href="#" ><span class="Stitle">番禺-祈福新村倚湖湾</span></a>
                      	 <br/>
                      	 高品质生活，由倚湖开始
                        </td>
                        <td>3室2厅</td>
                        <td ><span>172.5㎡</span> </td>
                        <td >16694元/㎡</td>
                         <td><span class="cOrange">288万</span> </td>
                          <td ><span class="cOrange">神秘人</span><br/>
                          2009-11-12
                           </td>
                    </tr>
                     <tr>
                    	<td ><img src="" width="105" height="80" /></td>
                        <td id="PropertyName">
                      	 <a href="#" ><span class="Stitle">番禺-祈福新村康怡居</span></a>
                      	 <br/>
							全屋明亮，装修漂亮
                        </td>
                        <td>3室2厅</td>
                        <td ><span>172.5㎡</span> </td>
                        <td >16694元/㎡</td>
                         <td><span class="cOrange">288万</span> </td>
                          <td ><span class="cOrange">神秘人</span><br/>
                          2009-11-12
                           </td>
                    </tr>
                    
                   
                </table>
            
            <table>
            	 <tr>
                    	<td></td>
                    	<td height="30px">第1页</td>
                    	<td>共2页</td>
                    	<td><</td>
                    	<td>1</td>
                    	<td>2</td>
                    	<td>></td>
                    </tr>
            </table>
            
            
               </div>              
          </div>          
     </div>
        
        <!-- right -->
        <%@ include file="show_right.jsp" %> 
  
  <div class="clear"></div>
  <div class="blank12"></div>
  <!-- foot -->
  <%@ include file="../CommonPage/Foot.jsp" %> 
    
</div>
</body>
</html>
