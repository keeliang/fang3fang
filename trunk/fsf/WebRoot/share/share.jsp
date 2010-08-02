<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fsf" uri="/common.tld"%>
<%@ taglib prefix="aa" uri="http://ajaxanywhere.sourceforge.net/" %>

<%
String contextPath = request.getContextPath();
%>
<script type="text/javascript">
var contextPath = "<%=contextPath%>";
var confirmDelete='<s:text name="g_confirmDelete"/>';
var uploadSuccess = '<s:text name="g_uploadSuccess"/>';
var uploadFail = '<s:text name="g_uploadFail"/>';
var uploadNotExists = '<s:text name="g_uploadNotExists"/>';
</script>
<s:set name="contextPath" value="pageContext.request.contextPath"/>
<script type="text/javascript" src="<%=contextPath %>/share/share.js"></script>
<script type="text/javascript" src="<%=contextPath %>/share/datePicker/WdatePicker.js"></script>
<script type="text/javascript" src="<%=contextPath %>/share/aa.js"></script>