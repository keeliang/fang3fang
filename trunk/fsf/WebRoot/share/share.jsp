<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String contextPath = request.getContextPath();
%>
<script type="text/javascript">
var contextPath = "<%=contextPath%>";
</script>
<s:set name="contextPath" value="pageContext.request.contextPath"/>
<script type="text/javascript" src="/share/share.js"></script>