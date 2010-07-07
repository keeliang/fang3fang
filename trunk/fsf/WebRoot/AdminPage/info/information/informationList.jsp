<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file="/share/share.jsp" %>
<title><s:text name="listPageTitle"/></title>
<%@include file="/share/validate.jsp" %>
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/Common.css" />
<link type="text/css" rel="stylesheet" href="<%=contextPath %>/css/AdminPage.css" />
<script type="text/javascript" src="<%=contextPath %>/js/jquery.js"></script> 
</head>

<body>
<s:form action="informationList" namespace="/sysadmin/info/information" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="informationParameter.currentPage" id="currentPage"  />
<s:hidden name="informationParameter.maxResults" id="maxResults" />
<s:hidden name="cmd" />
<div class="contentTitle"><s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_slike_informationTitle" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._slkie_informationTitle" />
					</td>
					<td width="15%" >
						<s:text name="_ne_informationType" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$information_type',null,0)" name="informationParameter._ne_informationType" cssClass="dropdown" 
						id="informationType" listValue="itemName" listKey="itemKey" emptyOption="true"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="informationParameter._ne_status" cssClass="dropdown" 
						id="status" listValue="itemName" listKey="itemKey" emptyOption="true"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._dge_createTime" onclick="WdatePicker()">
							<s:param name="value">
								<s:date name="informationParameter._dge_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
					<td width="15%" >
						<s:text name="_dle_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="informationParameter._dle_createTime" onclick="WdatePicker()">
							<s:param name="value">
								<s:date name="informationParameter._dle_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="text-align: right;">
	<s:if test="cmd != 'select'">
		<input type="button" onclick="g_new('/sysadmin/info/information/informationNew.action')" value="<s:text name="g_new"/>"/>
		<input type="button" onclick="g_delete('/sysadmin/info/information/informationDelete.action');" value="<s:text name="g_delete"/>">
	</s:if>
	<s:if test="cmd == 'select'">
		<input type="button" onclick="f_selectInfo()" value="<s:text name="g_select"/>"/>
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
	<td><s:text name="informationTitle"/></td>
	<td><s:text name="informationType"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="createTime"/></td>
	<td><s:text name="createUserId"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="informationEdit" namespace="/sysadmin/info/information" id="url">
		<s:param name="informationId" value="#item.informationId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.informationId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="informationTitle"/></a></td>
		<td><fsf:dictTranslate groupName="$information_type" value="informationType"/> </td>
		<td><fsf:dictTranslate groupName="$status" value="status" /></td>
		<td><s:date name="createTime" format="yyyy-MM-dd" /></td>
		<td><fsf:dictTranslate groupName="#sys_user" value="createUserId" /></td>
	</tr>
</s:iterator>
</table>
</s:form>
<table width="100%" >
	<tr>
		<td width="100%" align="right" >
			<%@ include file="/share/pageNavigation.jsp" %>
		</td>
	</tr>
</table>

</body>

</html>
<script type="text/javascript">
function f_selectInfo(){
	var bln = false;
	var id,title ;
	var arySelectedPK = document.getElementsByName("selectedPK");
	for(var i=0;i<arySelectedPK.length;i++){
		if(arySelectedPK[i].checked ){
			if(bln){
				alert("只能选择一条讯息");
				return;
			}else{
				id = arySelectedPK[i].value;
				title = $(arySelectedPK[i].parentNode.parentNode).find("td:eq(1)>a").text();
				bln = true;			
			}
		}
	}
	if(bln){
		var obj =  {"newsId":id,"newsTitle":title};
		if(document.all){
			window.dialogArguments.f_finishSelectInfo(obj)
		}else{
			window.parent.opener.f_finishSelectInfo(obj)
		}
		window.parent.close();
	}else{
		alert("请选择一条讯息");
	}
}
</script>