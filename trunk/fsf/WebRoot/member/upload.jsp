<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="房上房房地产网，番禺区房地产专业网站，人气最旺、最有价值的番禺房地产网络媒体，提供最全面最及时的房地产新闻资讯内容，提供所有楼盘的详细信息，是二手房(不动产)自由交易网站。为所有楼盘提供功能最全网上浏览，是国内房地产媒体及业内外网友公认的最受欢迎的专业网站和房地产信息库，搜房引擎给网友提供房地产网站中速度最快捷内容最全面的智能搜索点。"/>
	<meta name="keywords" content="房上房,番禺地产,番禺地产网,房地产,买房,卖房,租房,新房,二手房,写字楼,商铺,C2C交易,C2C"/>
	<meta name="title" content="会员中心 - 房上房地产网(http://wwww.fang3fang.com)"/>
	<title>上传图片 - 房上房地产网</title>
	<link href="../memberCenter/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/Form.jquery.js"></script>
	<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
	<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>
	<script type="text/javascript" src="../js/Validate.jquery.validate.min.js"></script>
	<script type="text/javascript" src="js/upload.js"></script>
</head>
<body>
	<div class="memberC_box">
	<!-- head -->
   <%@ include file="../CommonPage/memberC_head.jsp" %>
	<br />
   <table>
    <tr>
    	<td colspan="2">
    	<div>&nbsp;</div>
		<div class="member_uploadC_rightTitle"><b>选择文件</b></div>
		</td>
	</tr>
	<tr><td height="30px">&nbsp;</td></tr>
    <tr>
	    <td width="50%">
		<div class="member_uploadC_left"> 
			<div class="member_uploadC_leftContent">
				<form id="UploadForm" name="UploadForm" enctype="multipart/form-data"  method="post" action="/Fang3FangWeb/Upload">
				<input name="referaction" type="hidden" id="referAction" value="RegEstate" />
				<p>*请选用.jpg格式的图片上传</p><br/>
				  <input type="file" name="selectfilename" id="selectfilename" class="member_uploadContent_showInput" />
				  <input class="button" type="submit" name="upload" id="upload" value=" 粘 贴 " />
				
				</form> 
	   		</div>
		</div>
		</td>
		</tr>
		<tr>
		<td width="50%" >
		<div class="member_uploadC_right">     	 
		    <div class="member_uploadC_rightContent" >
		    	<div>&nbsp;</div>
		    	<form id="CancelForm" name="CancelForm" method="post" action="/Fang3FangWeb/Access">
		    	<div>				
		          <input name="referaction" type="hidden" id="referaction" value="RegEstate" />
		          <input name="useraction" type="hidden" id="useraction" value="DeleteImage" />		        
		          <select name="filename" id="filename" size="5" class="member_uploadContent_showInput2"></select>		      
		        </div>
		        <div>&nbsp;</div>
		        <div>&nbsp;</div>
		        <br/><br/><br/><br/><br/><br/>
		        <div  class="member_uploadC_position_btn">
		        <p><input type="button" name="button" id="button" value=" 完成 "/>&nbsp;&nbsp;&nbsp;
				
				<input type="submit" class="Button" name="delete" id="delete" value=" 取消 " />
				</p>
				</div>
				</form>
		    </div>
		</div>
		</td>
	</tr>
	</table>
	<br /><br />
	<div class="clear"></div>
	<div class="blank12"></div>
</div>
	<!-- foot -->
	<%@ include file="../CommonPage/Foot.jsp"%>

</body>
</html>
