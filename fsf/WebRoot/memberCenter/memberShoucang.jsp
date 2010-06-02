<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"> 
<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)" > 
<title>我的收藏夹 - 房上房地产网</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/CollapsiblePanel.js" type="text/javascript"></script>
<script src="js/jump.js" type="text/javascript"></script>

</head>
<body>
<div class="memberC_box">
	<!-- head -->
   <%@ include file="../CommonPage/memberC_head.jsp" %> 
    
    <!-- guide -->
    <div class="guide">
        <p>您当前的所在位置：<a href="#">房上房</a> &gt;&gt; <a href="index.jsp">会员中心</a> &gt;&gt;  <span class="cOrange">我的收藏夹</span></p>
    </div>
    
    <!-- content -->
    <div class="memberC">
    	<!-- left -->
    	<%@ include file="../CommonPage/memberC_left.jsp"%>
        
        <div class="memberInfo" id="b1" style="display:block;">
        	<div class="memberInfo_nav02">
            	<ul>
                	<li class="memberInfo_navOn sc"><a href="#" onclick="javascript:jumpTob(1);"><b>所有收藏</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(2);"><b>收藏出售</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(3);"><b>收藏出租</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(4);"><b>收藏求租</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(5);"><b>收藏求购</b></a></li>
                </ul>
            </div>
            <div class="memberShowcang01">
            	<div class="memberShowcang_search"><span class="float_right floatR_paddingT">1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a>&nbsp;&nbsp;&nbsp;&nbsp;</span>房源名称：<input type="text" class="memberC_input01" />&nbsp;&nbsp;收藏时间：<select><option>全部</option></select>&nbsp;<button>查询</button></div>
                <table border="0" cellpadding="0" cellspacing="0" class="memberShowcangTable">
                	<thead>
                	<tr>
                    	<td class="memberTableW01 center">&nbsp;</td>
                        <td class="memberTableW02">房源 / 详细</td>
                        <td class="memberTableW03 center">收藏时间</td>
                        <td class="memberTableW04 center">联系人</td>
                        <td class="memberTableW05 center">删除</td>
                        <td class="memberTableW06 center">评分</td>
                    </tr>
                    </thead>
                    <tbody>
                	<tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    <tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    <tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    <tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    <tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    <tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    <tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    
                    </tbody>
                </table>
                
                <div class="clear"></div>
                
                    <div class="memberShoucang_button"><button>全选</button>&nbsp;<button>反选</button>&nbsp;<button>删除</button></div>
                    <div class="memberShoucang_fenye"> 	
                        <p>1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a></p>
                    </div>
                
            </div>
        </div>
        
        <div class="memberInfo" id="b2" style="display:none;">
        	<div class="memberInfo_nav02">
            	<ul>
                	<li class="memberInfo_navOut sc"><a href="#" onclick="javascript:jumpTob(1);"><b>所有收藏</b></a></li>
                    <li class="memberInfo_navOn sc"><a href="#;" onclick="javascript:jumpTob(2);"><b>收藏出售</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(3);"><b>收藏出租</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(4);"><b>收藏求租</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(5);"><b>收藏求购</b></a></li>
                </ul>
            </div>
            <div class="memberShowcang02">
            	<div class="memberShowcang_search"><span class="float_right floatR_paddingT">1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a>&nbsp;&nbsp;&nbsp;&nbsp;</span>房源名称：<input type="text" class="memberC_input01" />&nbsp;&nbsp;收藏时间：<select><option>全部</option></select>&nbsp;<button>查询</button></div>
                <table border="0" cellpadding="0" cellspacing="0" class="memberShowcangTable">
                	<thead>
                	<tr>
                    	<td class="memberTableW01 center">&nbsp;</td>
                        <td class="memberTableW02">房源 / 详细</td>
                        <td class="memberTableW03 center">收藏时间</td>
                        <td class="memberTableW04 center">联系人</td>
                        <td class="memberTableW05 center">删除</td>
                        <td class="memberTableW06 center">评分</td>
                    </tr>
                    </thead>
                    <tbody>
                	<tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    
                    
                    
                    </tbody>
                </table>
                
                <div class="clear"></div>
                
                    <div class="memberShoucang_button"><button>全选</button>&nbsp;<button>反选</button>&nbsp;<button>删除</button></div>
                    <div class="memberShoucang_fenye"> 	
                        <p>1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a></p>
                    </div>
                
            </div>
        </div>
        
        <div class="memberInfo" id="b3" style="display:none;">
        	<div class="memberInfo_nav02">
            	<ul>
                	<li class="memberInfo_navOut sc"><a href="#" onclick="javascript:jumpTob(1);"><b>所有收藏</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(2);"><b>收藏出售</b></a></li>
                    <li class="memberInfo_navOn sc"><a href="#;" onclick="javascript:jumpTob(3);"><b>收藏出租</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(4);"><b>收藏求租</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(5);"><b>收藏求购</b></a></li>
                </ul>
            </div>
            <div class="memberShowcang03">
            	<div class="memberShowcang_search"><span class="float_right floatR_paddingT">1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a>&nbsp;&nbsp;&nbsp;&nbsp;</span>房源名称：<input type="text" class="memberC_input01" />&nbsp;&nbsp;收藏时间：<select><option>全部</option></select>&nbsp;<button>查询</button></div>
                <table border="0" cellpadding="0" cellspacing="0" class="memberShowcangTable">
                	<thead>
                	<tr>
                    	<td class="memberTableW01 center">&nbsp;</td>
                        <td class="memberTableW02">房源 / 详细</td>
                        <td class="memberTableW03 center">收藏时间</td>
                        <td class="memberTableW04 center">联系人</td>
                        <td class="memberTableW05 center">删除</td>
                        <td class="memberTableW06 center">评分</td>
                    </tr>
                    </thead>
                    <tbody>
                	<tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    
                    
                    
                    </tbody>
                </table>
                
                <div class="clear"></div>
                
                    <div class="memberShoucang_button"><button>全选</button>&nbsp;<button>反选</button>&nbsp;<button>删除</button></div>
                    <div class="memberShoucang_fenye"> 	
                        <p>1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a></p>
                    </div>
                
            </div>
        </div>
        
        <div class="memberInfo" id="b4" style="display:none;">
        	<div class="memberInfo_nav02">
            	<ul>
                	<li class="memberInfo_navOut sc"><a href="#" onclick="javascript:jumpTob(1);"><b>所有收藏</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(2);"><b>收藏出售</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(3);"><b>收藏出租</b></a></li>
                    <li class="memberInfo_navOn sc"><a href="#;" onclick="javascript:jumpTob(4);"><b>收藏求租</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(5);"><b>收藏求购</b></a></li>
                </ul>
            </div>
            <div class="memberShowcang04">
            	<div class="memberShowcang_search"><span class="float_right floatR_paddingT">1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a>&nbsp;&nbsp;&nbsp;&nbsp;</span>房源名称：<input type="text" class="memberC_input01" />&nbsp;&nbsp;收藏时间：<select><option>全部</option></select>&nbsp;<button>查询</button></div>
                <table border="0" cellpadding="0" cellspacing="0" class="memberShowcangTable">
                	<thead>
                	<tr>
                    	<td class="memberTableW01 center">&nbsp;</td>
                        <td class="memberTableW02">房源 / 详细</td>
                        <td class="memberTableW03 center">收藏时间</td>
                        <td class="memberTableW04 center">联系人</td>
                        <td class="memberTableW05 center">删除</td>
                        <td class="memberTableW06 center">评分</td>
                    </tr>
                    </thead>
                    <tbody>
                	<tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    
                    
                    
                    </tbody>
                </table>
                
                <div class="clear"></div>
                
                    <div class="memberShoucang_button"><button>全选</button>&nbsp;<button>反选</button>&nbsp;<button>删除</button></div>
                    <div class="memberShoucang_fenye"> 	
                        <p>1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a></p>
                    </div>
                
            </div>
        </div>
        
        <div class="memberInfo" id="b5" style="display:none;">
        	<div class="memberInfo_nav02">
            	<ul>
                	<li class="memberInfo_navOut sc"><a href="#" onclick="javascript:jumpTob(1);"><b>所有收藏</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(2);"><b>收藏出售</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(3);"><b>收藏出租</b></a></li>
                    <li class="memberInfo_navOut sc"><a href="#;" onclick="javascript:jumpTob(4);"><b>收藏求租</b></a></li>
                    <li class="memberInfo_navOn sc"><a href="#;" onclick="javascript:jumpTob(5);"><b>收藏求购</b></a></li>
                </ul>
            </div>
            <div class="memberShowcang05">
            	<div class="memberShowcang_search"><span class="float_right floatR_paddingT">1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a>&nbsp;&nbsp;&nbsp;&nbsp;</span>房源名称：<input type="text" class="memberC_input01" />&nbsp;&nbsp;收藏时间：<select><option>全部</option></select>&nbsp;<button>查询</button></div>
                <table border="0" cellpadding="0" cellspacing="0" class="memberShowcangTable">
                	<thead>
                	<tr>
                    	<td class="memberTableW01 center">&nbsp;</td>
                        <td class="memberTableW02">房源 / 详细</td>
                        <td class="memberTableW03 center">收藏时间</td>
                        <td class="memberTableW04 center">联系人</td>
                        <td class="memberTableW05 center">删除</td>
                        <td class="memberTableW06 center">评分</td>
                    </tr>
                    </thead>
                    <tbody>
                	<tr>
                    	<td class="center"><input type="checkbox" class="Nborder" /></td>
                        <td>
                        	<dl>
                            	<dt><img src="images/memberShoucang_pic.jpg" width="60" height="41" alt="" title="" /></dt>
                                <dd class="font14"><a href="#" class="cOrange"><b>美心翡翠明廷</b></a></dd>
                                <dd>广州&nbsp;番禺&nbsp;石基</dd>
                                <dd>3室&nbsp;2厅&nbsp;2卫&nbsp;120m<sup>2</sup>&nbsp;70万</dd>
                            </dl>
                        </td>
                        <td class="center">
                        	<p>2009-01-10</p>
                            <p>17:50:32</p>
                        </td>
                        <td class="center">谢渝畅</td>
                        <td class="center"><a href="#"><img src="images/memberShoucang_del.jpg" width="43" height="16" alt="del" title="del" /></a></td>
                        <td class="center"><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star01.jpg" width="22" height="22" /><img src="images/memberShoucang_star02.jpg" width="22" height="22" /></td>
                    </tr>
                    
                    
                    
                    </tbody>
                </table>
                
                <div class="clear"></div>
                
                    <div class="memberShoucang_button"><button>全选</button>&nbsp;<button>反选</button>&nbsp;<button>删除</button></div>
                    <div class="memberShoucang_fenye"> 	
                        <p>1/1   页&nbsp;<a href="#">首页</a>&nbsp;<a href="#">上一页</a>&nbsp;<a href="#">下一页</a>&nbsp;<a href="#">末页</a></p>
                    </div>
                
            </div>
        </div>
        
        
    </div>
    
    
       
</div>
  
  <div class="clear"></div>
  <div class="blank12"></div>
  <!-- foot -->
   <%@ include file="../CommonPage/Foot.jsp" %>

<script type="text/javascript">
<!--
var CollapsiblePanel1 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel1");
var CollapsiblePanel2 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel2");
var CollapsiblePanel3 = new Spry.Widget.CollapsiblePanel("CollapsiblePanel3");
//-->
</script>

</body>
</html>
