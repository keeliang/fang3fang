<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@include file="/share/share.jsp" %>
<link href="<%=contextPath %>/css/common.css" rel="stylesheet" type="text/css"/>
<title><s:text name="listPageTitle"/></title>
</head>
<body>
<s:form action="userList" namespace="/sysadmin/sys/user" name="formList" id="formList" theme="simple" method="post">
<s:hidden name="userParameter.currentPage" id="currentPage"  />
<s:hidden name="userParameter.maxResults" id="maxResults" />
<div id="errorMsg" class="errorMsg"><s:actionmessage /><s:actionerror/><s:fielderror/></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="filter_tbl" id="filter_tbl" >
	<tr>
		<td height="22" class="title" >
			<span class="title_font"><s:text name="filterTitle"/></span>
		</td>
	</tr>
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_userId" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_userId" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_userCode" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_userCode" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_password" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_password" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_userName" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_userName" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_status" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_status" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_userType" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_userType" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_provinceId" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_provinceId" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_ne_cityId" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_cityId" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_ne_regionId" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._ne_regionId" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_address" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_address" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_se_tel" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_tel" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_email" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_email" cssClass="input_text" />
					</td>
				</tr>
				<tr>
					<td width="15%" class="input_name">
						<s:text name="_de_createDate" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._de_createDate" cssClass="input_text" />
					</td>
					<td width="15%" class="input_name">
						<s:text name="_se_imagePath" />:
					</td>
					<td width="35%">
						<s:textfield name="userParameter._se_imagePath" cssClass="input_text" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td style="text-align: right;">
			<input type="button" onclick="g_list()" value="search" />
			<input type="button" onclick="g_reset()" value="reset" />
		</td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" >
	<tr>
		<td height="10" bgcolor="#f7fbfc">&nbsp;</td>
	</tr>
	<tr>
		<td height="11px;">
			<span class="title_hdr"><s:text name="listTitle"/></span>
		</td>
	</tr>
	<tr>
		<td height="16" valign="top"><br/>
			<input type="button" onclick="g_new('/sysadmin/sys/user/userNew.action')" value="new" />
			<input type="button" onclick="g_delete('/sysadmin/sys/user/userDelete.action')" value="Delete" />
		</td>
	</tr>
	<tr>
		<td height="5" valign="top"></td>
	</tr>
</table>
<table width="100%" cellspacing="0" cellpadding="0" >
	<tr>
		<td width="100%" height="19" class="pageNavigation" align="left" >
			<span><s:text name="g_excel"/></span>
		</td>
	</tr>
	<tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" >
				<thead>
					<tr bgcolor="#f2faff">
						<th width="4%" height="28" class="table_hdr">
							<input type="checkbox" onclick="g_select(this)" >
						</th>
							<th class="table_hdr"><s:text name="userId"/></th>
							<th class="table_hdr"><s:text name="userCode"/></th>
							<th class="table_hdr"><s:text name="password"/></th>
							<th class="table_hdr"><s:text name="userName"/></th>
							<th class="table_hdr"><s:text name="status"/></th>
							<th class="table_hdr"><s:text name="userType"/></th>
							<th class="table_hdr"><s:text name="provinceId"/></th>
							<th class="table_hdr"><s:text name="cityId"/></th>
							<th class="table_hdr"><s:text name="regionId"/></th>
							<th class="table_hdr"><s:text name="address"/></th>
							<th class="table_hdr"><s:text name="tel"/></th>
							<th class="table_hdr"><s:text name="email"/></th>
							<th class="table_hdr"><s:text name="createDate"/></th>
							<th class="table_hdr"><s:text name="imagePath"/></th>
					</tr>
				</thead>
				<tbody id="listBody">
					<s:iterator value="pageView.records" id="item">
						<s:url action="userEdit" namespace="/sys/user" id="url">
							<s:param name="userId" value="#item.userId"></s:param>
						</s:url>
						<tr>
							<td class="table_dtl">
								<input type="checkbox" name="selectedPK" value="<s:property value="#item.userId"/>">
							</td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="userId"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="userCode"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="password"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="userName"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="status"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="userType"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="provinceId"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="cityId"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="regionId"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="address"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="tel"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="email"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="createDate"/></a></td>
							<td class="table_dtl"><a href="javascript:g_edit('${url}')" ><s:property value="imagePath"/></a></td>
						</tr>
					</s:iterator>
				</tbody>			
			</table>		
		</td>
	</tr>
	<tr>
		<td width="100%" align="right" class="pageNavigation">
			<%@ include file="/share/pageNavigation.jsp" %>
		</td>
	</tr>
</table>
</s:form>
</body>
</html>