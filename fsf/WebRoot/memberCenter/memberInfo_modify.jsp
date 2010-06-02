<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"> 
<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"> 
<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)" > 
<title>个人基本信息 - 房上房地产网</title>
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
        <p>您当前的所在位置：<a href="#">房上房</a> &gt;&gt; <a href="index.jsp">会员中心</a> &gt;&gt;  <span class="cOrange">个人设置</span></p>
    </div>
    
    <!-- content -->
    <div class="memberC">
    	<!-- left -->
    	<%@ include file="../CommonPage/memberC_left.jsp"%>
        
        <div class="memberInfo" id="a1" style="display:block;">
        	<div class="memberInfo_nav">
            	<ul>
                	<li class="memberInfo_navOn modify"><a href="#" onclick="javascript:jumpTo(1);"><b>个人基本信息</b></a></li>
                    <li class="memberInfo_navOut password"><a href="#;" onclick="javascript:jumpTo(2);"><b>修改密码</b></a></li>
                </ul>
            </div>
            <div class="memberInfo_modify">
            	<table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td><label><span class="cOrange">*</span> 真实姓名: </label> <input type="text" class="memberC_input01" /></td>
                        <td><label>性别: </label> <input type="radio" name="1" />男&nbsp;&nbsp;<input type="radio" name="1" />女</td>
                    </tr>
                    <tr>
                        <td><label>证件类型: </label> <select><option>请选择</option></select></td>
                        <td><label>证件号码: </label> <input type="text" class="memberC_input01" /></td>
                    </tr>
                    <tr>
                        <td><label>工作单位: </label> <input type="text" class="memberC_input01" /></td>
                        <td><label>已婚: </label> <input type="radio" name="2" />是&nbsp;&nbsp;<input type="radio" name="2" />否</td>
                    </tr>
                    <tr>
                        <td><label><span class="cOrange">*</span> 手机号码: </label> <input type="text" class="memberC_input01" /></td>
                        <td><label>固定号码: </label> <input type="text" class="memberC_input01" /></td>
                    </tr>
                    <tr>
                        <td><label>固定电话: </label> <input type="text" class="memberC_input01" /></td>
                        <td><label>邮箱: </label> <input type="text" class="memberC_input01" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><label>地址: </label> <input type="text" class="memberC_input04" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><label>相关相片: </label>
                        <input type="button" value="上传图片" id="btnUpload" />
												<s:hidden name="imagePath" />
										</td>
                    </tr>
                    <tr>
                        <td colspan="2"><label>个人补充介绍: </label> <textarea class="memberC_textarea02"></textarea></td>
                    </tr>
                </table>
                
                <div class="blank10"></div>
                <div class="blank10"></div>
                <div class="blank10"></div>
                <div class="center"><a href="#"><img src="images/memberInfo_button.jpg" width="130" height="35" alt="完成编辑" title="完成编辑" /></a></div>
                <div class="blank10"></div>
                <div class="blank10"></div>
                <p class="center cGray02">请完善您的个人详细资料，完善后将在发布信息时为您带来便捷的操作。</p>
                
            </div>
        </div>
        
        <div class="memberInfo" id="a2" style="display:none;">
        	<div class="memberInfo_nav">
            	<ul>
                	<li class="memberInfo_navOut modify"><a href="#" onclick="javascript:jumpTo(1);"><b>个人基本信息</b></a></li>
                    <li class="memberInfo_navOn password"><a href="#" onclick="javascript:jumpTo(2);"><b>修改密码</b></a></li>
                </ul>
            </div>
            <div class="memberInfo_password">
            <table border="0" cellpadding="0" cellspacing="0"> 
                <tr>
                   <td colspan="2"><label>旧密码: </label> <input type="text" class="memberC_input01" /></td>
                </tr>
                <tr>
                   <td colspan="2"><label>新密码: </label> <input type="text" class="memberC_input01" /></td>
                </tr>
                <tr>
                   <td colspan="2"><label>确认密码: </label> <input type="text" class="memberC_input01" /></td>
                </tr>
            </table>
            </div>
            
            <div class="blank10"></div>
            <div class="blank10"></div>
            <div class="blank10"></div>
            <div class="center memberInfo_passwordB"><button>修改密码</button></div>
            
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
