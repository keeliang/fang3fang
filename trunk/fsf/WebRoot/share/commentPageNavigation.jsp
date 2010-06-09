<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<s:if test="commentPageView.records.size()>0">
<s:if test="commentPageView.currentPage!=1">
<a href="javascript:f_queryComment(1)" >首页</a>
</s:if>
<s:else>
<b><font color="#000000">首页</font></b>
</s:else>
<s:bean name="org.apache.struts2.util.Counter" id="i" >
	<s:param name="first" value="commentPageView.pageIndex.startIndex-1"/>
	<s:param name="last" value="commentPageView.pageIndex.endIndex-1"/>
	<s:iterator>
		<s:if test="commentPageView.currentPage==current">
			<b><font color="#000000">第<s:property value="#i.current"/>页</font></b>
		</s:if>
		<s:else>
			<a href="javascript:f_queryComment(<s:property value="#i.current"/>)" >第<s:property value="#i.current"/>页</a>
		</s:else>
	</s:iterator>
</s:bean>
<s:if test="commentPageView.currentPage!=commentPageView.totalPage">
<a href="javascript:f_queryComment(${commentPageView.totalPage })" >末页</a>
</s:if>
<s:else>
<b><font color="#000000">末页</font></b>
</s:else>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
共有<font color="red" >${commentPageView.totalRecord }</font>条留言
</s:if>