<script type="text/javascript">
<!--
function f_redirect(obj){
	if(obj.parent)
		obj.parent.location.href="${pageContext.request.contextPath}/AdminPage/login.jsp";
	else
		obj.location.href="${pageContext.request.contextPath}/AdminPage/login.jsp";
}
if(window.opener){
	f_redirect(window.opener);
	window.close();
}else if(window.parent.opener){
	f_redirect(window.parent.opener);
	window.parent.close();
}else {
	f_redirect(window);
}
//-->
</script>
