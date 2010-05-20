<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<s:if test="pageView.records.size()>0">
<a href="javascript:f_query('1')" >首页</a>
<s:bean name="org.apache.struts2.util.Counter" id="i" >
	<s:param name="first" value="pageView.pageIndex.startIndex-1"/>
	<s:param name="last" value="pageView.pageIndex.endIndex-1"/>
	<s:iterator>
		<s:if test="pageView.currentPage==current">
			<b><font color="#000000">第<s:property value="#i.current"/>页</font></b>
		</s:if>
		<s:else>
			<a href="javascript:f_query('<s:property value="#i.current"/>')" >第<s:property value="#i.current"/>页</a>
		</s:else>
	</s:iterator>
</s:bean>
<a href="javascript:f_query('${pageView.totalPage }')" >末页</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
共搜索到<font color="red" >${pageView.totalRecord }</font>房源
</s:if>
