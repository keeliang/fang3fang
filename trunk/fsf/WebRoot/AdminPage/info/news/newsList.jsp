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
<s:form action="newsList" namespace="/sysadmin/info/news" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="newsParameter.currentPage" id="currentPage"  />
<s:hidden name="newsParameter.maxResults" id="maxResults" />
<s:hidden name="cmd" />
<div class="contentTitle"><s:text name="listTitle"/></div>
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="filter_tbl" >
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" >
						<s:text name="_slike_newsTitle" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._slike_newsTitle" />
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_ne_newsTypeId" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('#news_type','_ne_status:1')" name="newsParameter._ne_newsTypeId" cssClass="dropdown" 
						id="newsTypeId" listValue="itemName" listKey="itemKey" emptyOption="true" />
					</td>
					<td width="15%" >
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:select list="@fsf.web.common.SelectTagStaticUtil@getConfig('$status')" name="newsParameter._ne_status" cssClass="dropdown" 
						id="status" listValue="itemName" listKey="itemKey" emptyOption="true"/>
					</td>
				</tr>
				<tr>
					<td width="15%" >
						<s:text name="_dge_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._dge_createTime">
							<s:param name="value">
								<s:date name="newsParameter._dge_createTime" format="yyyy-MM-dd"/>
							</s:param>
						</s:textfield>
					</td>
					<td width="15%" >
						<s:text name="_dle_createTime" />:
					</td>
					<td width="35%">
						<s:textfield name="newsParameter._dle_createTime">
							<s:param name="value">
								<s:date name="newsParameter._dle_createTime" format="yyyy-MM-dd"/>
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
		<input type="button" onclick="g_new('/sysadmin/info/news/newsNew.action')" value="<s:text name="g_new"/>"/>
		<input type="button" onclick="g_delete('/sysadmin/info/news/newsDelete.action');" value="<s:text name="g_delete"/>">
	</s:if>
	<s:if test="cmd == 'select'">
		<input type="button" onclick="f_selectNews()" value="<s:text name="g_select"/>"/>
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
	<td><s:text name="newsTitle"/></td>
	<td><s:text name="newsTypeId"/></td>
	<td><s:text name="status"/></td>
	<td><s:text name="createTime"/></td>
</tr>

<s:iterator value="pageView.records" id="item">
	<s:url action="newsEdit" namespace="/sysadmin/info/news" id="url">
		<s:param name="newsId" value="#item.newsId"></s:param>
	</s:url>
	<tr>
		<td>
			<input type="checkbox" name="selectedPK" value="<s:property value="#item.newsId"/>">
		</td>
		<td><a href="javascript:g_edit('${url}')" ><s:property value="newsTitle"/></a></td>
		<td><fsf:dictTranslate value="newsTypeId" groupName="#news_type"/></td>
		<td><fsf:dictTranslate value="status" groupName="$status"/></td>
		<td><s:date name="createTime" format="yyyy-MM-dd" /></td>
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
function f_selectNews(){
	var bln = false;
	var id,title ;
	var arySelectedPK = document.getElementsByName("selectedPK");
	for(var i=0;i<arySelectedPK.length;i++){
		if(arySelectedPK[i].checked ){
			if(bln){
				alert("只能选择一条新闻");
			}else{
				id = arySelectedPK[i].value;
				//alert($(arySelectedPK[i].parentNode.parentNode).find("td:eq(1)>a").text());
				title = $(arySelectedPK[i].parentNode.parentNode).find("td:eq(1)>a").text();
				bln = true;			
			}
		}
	}
	if(bln){
		var obj =  {"newsId":id,"newsTitle":title};
		if(document.all){
			window.dialogArguments.f_finishSelectNews(obj);
		}else{
			window.parent.opener.f_finishSelectNews(obj);
		}
		window.parent.close();
	}else{
		alert("请选择一条新闻");
	}
}
</script>