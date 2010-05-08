<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="/css/Common.css" />
<link type="text/css" rel="stylesheet" href="/css/AdminPage.css" />
<script type="text/javascript" src="/js/jquery.js"></script> 
</head>

<body>
<s:form action="userList" namespace="/sysadmin/sys/user" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="userParameter.currentPage" id="currentPage"  />
<s:hidden name="userParameter.maxResults" id="maxResults" />
<s:hidden name="cmd"/>
<table>
	<tr>
		<td align="left" width="722"><img src="/AdminPage/images/userinfo.jpg" /></td>
	</tr>
</table>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_ne_userId" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_userId"  />
					</td>
					<td width="15%" >
						<s:text name="_se_userCode" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_userCode"  />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_userName" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_userName"  />
					</td>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="userParameter._ne_status" 
						listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_userType" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$user_type')" name="userParameter._ne_userType" 
						listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown"/>
					</td>
					<td width="15%" >
						<s:text name="_ne_sex" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$sex')" name="userParameter._ne_sex" 
						listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#province')" name="userParameter._ne_provinceId" 
						onchange="f_changeProvince()" id="provinceId" listValue="itemName" listKey="itemKey" emptyOption="true" cssClass="dropdown" />
					</td>
					<td width="15%" >
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%" id="cityTd">
						
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_districtId" />:
					</td>
					<td width="35%" id="districtTd">
						
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_tel" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_tel"  />
					</td>
					<td width="15%" >
						<s:text name="_se_phone" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_phone"  />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_qq" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_qq"  />
					</td>
					<td width="15%" >
						<s:text name="_se_msn" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_msn"  />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_se_email" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_email"  />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createDate" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._dge_createDate"  />
					</td>
					<td width="15%" >
						<s:text name="_dle_createDate" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._dle_createDate"  />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	
	<s:if test="cmd!='select'">
		<input type="button" onclick="g_new('/sysadmin/sys/user/userNew.action')" value="<s:text name="g_new"/>"/>
		<input type="button" onclick="g_delete('/sysadmin/sys/user/userDelete.action');" value="<s:text name="g_delete"/>">
	</s:if>
	<s:if test="cmd=='select'">
		<input type="button" onclick="f_selectUser()" value="<s:text name="g_select"/>">
	</s:if>
	<input type="button" onclick="g_list()" value="<s:text name="g_search"/>">
	<input type="button" onclick="g_reset()" value="<s:text name="g_reset"/>">
</div>

<div class="Title">&nbsp;</div>
<div class="MainContent">

<table width="100%" border="0" class="AdminTableStyle TableContent" id="tblList">
<tr class="TH">
	<td width="4%" height="28" class="table_hdr">
		<input type="checkbox" onclick="g_select(this)" >
	</td>
	<td class="table_hdr"><s:text name="userCode"/></td>
	<td class="table_hdr"><s:text name="userName"/></td>
	<td class="table_hdr"><s:text name="sex"/></td>
	<td class="table_hdr"><s:text name="status"/></td>
	<td class="table_hdr"><s:text name="userType"/></td>
	<td class="table_hdr"><s:text name="provinceId"/></td>
	<td class="table_hdr"><s:text name="cityId"/></td>
	<td class="table_hdr"><s:text name="districtId"/></td>
	<td class="table_hdr"><s:text name="tel"/></td>
	<td class="table_hdr"><s:text name="phone"/></td>
	<td class="table_hdr"><s:text name="qq"/></td>
	<td class="table_hdr"><s:text name="email"/></td>
	<td class="table_hdr"><s:text name="createDate"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="userEdit" namespace="/sysadmin/sys/user" id="url">
		<s:param name="userId" value="#item.userId"></s:param>
	</s:url>
	<tr>
		<td class="table_dtl">
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.userId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="userCode"/></a></td>
		<td><s:property value="userName"/></td>
		<td><s:property value="sex"/></td>
		<td>
			<fsf:dictTranslate groupName="$status" value="status"/>
		</td>
		<td>
			<fsf:dictTranslate groupName="$user_type" value="userType"/>
		</td>
		<td>
			<fsf:dictTranslate groupName="#province" value="provinceId"/>
		</td>
		<td>
			<fsf:dictTranslate groupName="#city" value="cityId"/>
		</td>
		<td>
			<fsf:dictTranslate groupName="#district" value="districtId"/>
		</td>
		<td><s:property value="tel"/></td>
		<td><s:property value="phone"/></td>
		<td><s:property value="qq"/></td>
		<td><s:property value="email"/></td>
		<td>
			<s:date name="createDate" format="yyyy-MM-dd"/>
		</td>
	</tr>
</s:iterator>
</table>

<table width="100%" >
	<tr>
		<td width="100%" align="right" >
			<%@ include file="/share/pageNavigation.jsp" %>
		</td>
	</tr>
</table>
</s:form>
</body>
</html>
<script type="text/javascript">
$(function(){
	f_changeProvince(true);
})
function f_changeProvince(isIndex){
	if($("#provinceId").val()=="")
		return;
	$.post("getCityList.action",{provinceId:$("#provinceId").val()},function(json){
		var selectTag = new SelectTag("cityId","userParameter._ne_cityId",json.data,"itemKey","itemName","${userParameter._ne_cityId}","f_changeCity()");
		$("#cityTd").html(selectTag.toString()+"<font color='red'>*</font>");
		if(isIndex)
			f_changeCity();
	},"json");
}
function f_changeCity(){
	if($("#provinceId").val()=="")
		return;
	if($("#cityId").val()=="")
		return;
	$.post("getDistrictList.action",{provinceId:$("#provinceId").val(),cityId:$("#cityId").val()},function(json){
		var selectTag = new SelectTag("districtId","userParameter._ne_districtId",json.data,"itemKey","itemName","${userParameter._ne_districtId}");
		$("#districtTd").html(selectTag.toString()+"<font color='red'>*</font>");
	},"json");
}

function f_selectUser(){
	var bln = false;
	var id,code,phone ;
	var arySelectedPK = document.getElementsByName("selectedPK");
	for(var i=0;i<arySelectedPK.length;i++){
		if(arySelectedPK[i].checked ){
			if(bln){
				alert("只能选择一个用户");
			}else{
				id = arySelectedPK[i].value;
				code = $(arySelectedPK[i].parentNode.parentNode).find("td:eq(1)>a").text();
				strTel = $(arySelectedPK[i].parentNode.parentNode).find("td:eq(9)").text();
				strPhone = $(arySelectedPK[i].parentNode.parentNode).find("td:eq(10)").text();
				strQQ = $(arySelectedPK[i].parentNode.parentNode).find("td:eq(11)").text();
				bln = true;
			}
		}
	}
	if(bln){
		var obj =  {"userId":id,"userCode":code,"tel":strTel,"phone":strPhone,"QQ":strQQ};
		if(document.all){
			window.dialogArguments.f_finishSelectUser(obj);
		}else{
			window.parent.opener.f_finishSelectUser(obj);
		}
		window.parent.close();
	}else{
		alert("请选择一条用户");
	}
}
</script>