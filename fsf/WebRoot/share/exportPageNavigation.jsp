<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<s:if test="pageView.records.size()>0">
<s:if test="pageView.currentPage!=1">
<a href="javascript:f_goto('<%=contextPath %>/invitedexperts/index.action?newsParameter.currentPage=1')" >首页</a>
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
			<a href="javascript:f_goto('<%=contextPath %>/invitedexperts/index.action?userParameter.currentPage=<s:property value="#i.current"/>')" >第<s:property value="#i.current"/>页</a>
		</s:else>
	</s:iterator>
</s:bean>
<s:if test="pageView.currentPage!=pageView.totalPage">
<a href="javascript:f_goto('<%=contextPath %>/invitedexperts/index.action?userParameter.currentPage=${pageView.totalPage }')" >末页</a>
</s:if>
<s:else>
<b><font color="#000000">末页</font></b>
</s:else>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
共搜索到<font color="red" >${pageView.totalRecord }</font>专家
</s:if>
