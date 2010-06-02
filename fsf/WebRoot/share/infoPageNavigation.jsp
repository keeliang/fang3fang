<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<s:if test="pageView.records.size()>0">
<s:if test="pageView.currentPage!=1">
<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=${informationParameter._ne_informationType}&informationParameter.currentPage=1&informationParameter.maxResults=30"  >首页</a>
</s:if>
<s:else>
<b><font color="#000000">首页</font></b>
</s:else>
<s:bean name="org.apache.struts2.util.Counter" id="i" >
	<s:param name="first" value="pageView.pageIndex.startIndex-1"/>
	<s:param name="last" value="pageView.pageIndex.endIndex-1"/>
	<s:iterator>
		<s:if test="pageView.currentPage==current">
			<b><font color="#000000">第<s:property value="#i.current"/>页</font></b>
		</s:if>
		<s:else>
			<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=${informationParameter._ne_informationType}&informationParameter.currentPage=<s:property value="#i.current"/>&informationParameter.maxResults=30" >第<s:property value="#i.current"/>页</a>
		</s:else>
	</s:iterator>
</s:bean>
<s:if test="pageView.currentPage!=pageView.totalPage">
<a href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=${informationParameter._ne_informationType}&informationParameter.currentPage=${pageView.totalPage }&informationParameter.maxResults=30"  >末页</a>
</s:if>
<s:else>
<b><font color="#000000">末页</font></b>
</s:else>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
共搜索到<font color="red" >${pageView.totalRecord }</font>信息
</s:if>
