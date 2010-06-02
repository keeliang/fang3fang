<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>上传图片 - 房上房地产网</title>


<link href="css/style.css" rel="stylesheet" type="text/css" />
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
	<%@ include file="../CommonPage/Foot.jsp" %>

</body>
</html>
