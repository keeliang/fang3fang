<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<s:if test="pageView!=null">
	<table align="right" class="pageNavigation" >
		<tr>
			<td class="page">共${pageView.totalRecord }条</td>
			<td class="page">
				<s:if test="pageView.currentPage > 1 && pageView.totalPage >1">
					<a href="javascript:g_gotoPage(1)" >首  页</a>
				</s:if>
				<s:else>
					首  页
				</s:else>
			</td>
			<td class="page">
				<s:if test="1< pageView.currentPage && pageView.currentPage <= pageView.totalPage">
					<a href="javascript:g_gotoPage(${pageView.currentPage}-1)" >上一页</a>
				</s:if>
				<s:else>
					上一页
				</s:else>
			</td>
			<td class="page"><s:if test="pageView.totalPage>0">${pageView.currentPage}/${pageView.totalPage }</s:if></td>
			<td class="page">
				<s:if test="pageView.currentPage < pageView.totalPage ">
					<a href="javascript:g_gotoPage(${pageView.currentPage}+1)" >下一页</a>
				</s:if>
				<s:else>
					下一页
				</s:else>
			</td>
			<td class="page">
				<s:if test="pageView.currentPage < pageView.totalPage && pageView.totalPage >1">
					<a href="javascript:g_gotoPage(${pageView.totalPage })" >末  页</a>
				</s:if>
				<s:else>
					末  页
				</s:else>
			</td>
			<td class="page">
				<input type="text" size="1" id="gotoPageInput" style="font-size: 12px;height: 20px;border:1px solid #c3d9eb;">
				<input type="button" onclick="g_gotoPage(document.getElementById('gotoPageInput').value,${pageView.totalPage })" value="GO" >
			</td>
			<td class="page">
				<s:select cssStyle="font-size:12px;" theme="simple" list="#{5:'5条',10:'10条',20:'20条',50:'50条' }" onchange="g_chageMaxResults(this.value)" value="baseParameter.maxResults" ></s:select>
			</td>
		</tr>
	</table>
</s:if>
