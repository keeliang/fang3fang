<%@page contentType="text/html;charset=utf-8" %>
<html>
<head>
<title>发布商铺信息</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="..js/CollapsiblePanel.js"></script>
<script type="text/javascript" src="../js/Form.jquery.js"></script>
<script type="text/javascript" src="../js/Validate.cmxforms.js"></script>
<script type="text/javascript" src="../js/Validate.jquery.metadata.js"></script>
<script type="text/javascript" src="../js/Validate.jquery.validate.min.js"></script>
<script type="text/javascript" src="../js/SelectAll.js"></script>
<script type="text/javascript" src="../js/HistoryBack.js"></script>
<script type="text/javascript" src="../js/DisplayClear.js"></script>		
<script type="text/javascript" src="js/DisplayMessageShopType.js"></script>
<script type="text/javascript" src="js/AddRentInfo.js"></script>

<style>

body{
	font-size:12px;
	font-family:"����"��Arial, Helvetica, sans-serif;
	text-align:center;
	margin:0 auto;
	color:#666;
}

	input {
	padding: 1px 2px;
	border: 1px solid #CCCCCC;
}

.info_title{ background:url(../images/info_list.jpg) no-repeat; width:260px; height:31px; 
 line-height:26px; padding:0px 10px 0px 10px; color:white;
font-size:14px;
}

table{

border-bottom: 1px #f3f3f3 solid; 
border-right: 1px #f3f3f3 solid
}

.boxTop {

height:50px;

}

.label{
align:right;
color:red;

}


</style>


<script>
	function closeWin() {
		close() ;
	}
	var inputList=new Array(
		new Array("news_title","标题","Y","1","20","all"),
		new Array("content","内容","Y","1","256","all")
	);
	function add() {
		document.forms[0].action="addMessage_submit.jsp" ;
		document.forms[0].target="commfrm" ;
		document.forms[0].method="post" ;
		if ( autoValidateAll (inputList ) ) {
			document.forms[0].submit() ;
		}
	}
	
</script>


</head>
<body>
<form action="/Fang3FangWeb/Access" method="post" name="AddRentForm" id="AddRentForm">
<input name="referaction" type="hidden" id="referaction" value="AddRentInfo" />
<input name="useraction" type="hidden" id="useraction" value="Estates" />

<table align="center">
<tr>
		<td background="images/title.gif"  width="700px" class="info_title" >&nbsp;<b>发布信息</b></td>
		<td>&nbsp;</td>
	</tr>
</table>

<table width="100%" height="28" border="0" align="center" cellspacing="0" bordercolor="#ffffff" bordercolorlight="#c3c3c3" bgcolor="#FFFFFF">
	
	
	<tr height="32" class="boxTop">
		<td  width="50%" style="text-align:right"><span class="label">标题：</span></td>
		<td align="left" width="170"><input type="text" name="Title" id="Title" class="textfule"></td>
		
	</tr>
		<tr height="32" >
		<td style="text-align:right"><span class="label">旺铺类型：</span></td>
		<td align="left" width="170"><select id="StoreTypeID"><option>请选择</option></select></td>
	</tr>
	<tr height="32" >
		<td style="text-align:right"><span class="label">内容：</span></td>
		<td align="left" width="170"><textarea name="Content" id="Content" class="textfule"></textarea>
		<br/>
		[128个字以内]
		</td>
	</tr>
	<tr height="32" >
		<td  style="text-align:right"><span class="label">商圈：</span></td>
		<td align="left" width="170"><select id="TownID"><option>请选择</option></select></td>
   </tr>
	<tr height="32" >
		<td style="text-align:right"><span class="label">地址：</span></td>
		<td align="left" width="170"><input type="text" name="Address" id="Address" class="textfule"></td>
	</tr>
	
	<tr height="32" >
		<td  style="text-align:right"><span class="label">联系人：</span></td>
		<td align="left" width="170"><input type="text" name="ContactPerson" id="ContactPerson" class="textfule"></td>
	</tr>
	<tr height="32" >
		<td  style="text-align:right"><span class="label">联系电话：</span></td>
		<td align="left" width="170"><input type="text" name="Phone" id="Phone" class="textfule"></td>
	</tr>


	<tr style="border:0px">
		<td align="center" colspan="2">&nbsp;<input type="submit" name="Submit" id="Submit" value="确定"/>
	   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="reset" name="Reset" id="Reset" value="重置"/></td>
	</tr>


</table>
</form>


<iframe name="commfrm" width="200" height="0"></iframe>



</body>
</html>