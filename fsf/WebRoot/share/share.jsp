<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fsf" uri="/common.tld"%>
<%
String contextPath = request.getContextPath();
%>
<script type="text/javascript">
var contextPath = "<%=contextPath%>";
</script>
<s:set name="contextPath" value="pageContext.request.contextPath"/>
<script type="text/javascript" src="/share/share.js"></script>