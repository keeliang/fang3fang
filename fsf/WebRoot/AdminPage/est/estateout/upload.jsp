<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<%@ include file="/share/share.jsp" %>
  	<title>My JSP 'upload.jsp' starting page</title>
  	<script type="text/javascript">
  		function f_upload(){
				var uploadCallback=function(){ 
					alert(123)
					var thisDocument=document.getElementById('uploadFrame').contentDocument||document.getElementById('uploadFrame').contentWindow.document; 
					var html=thisDocument.body.innerHTML;
					alert(html);
					if(html.indexOf("<pre>")>-1){
						html = html.substring(5,html.length-6);
					}
					alert(html)
					var a = eval(html);
					alert(a);
					alert(a.filename);
					document.getElementById("imgg").src = contextPath + a.filename;
				};
				document.getElementById('uploadFrame').onload = uploadCallback;
				document.getElementById('uploadForm').submit();
			}
  	</script>
  </head>
  <body>
  	<div style="width: 100%;text-align: center;">
   <s:form name="uploadForm" namespace="/memberCenter" enctype="multipart/form-data" method="post" action="uploadFile" 
		id="uploadForm" target="uploadFrame" theme="simple" >
		<s:file name="uploadFile" ></s:file>
		<input type="button" onclick="f_upload()" value="上传" />
		<iframe name="uploadFrame" style="display: none"  id="uploadFrame" ></iframe>
		</s:form>
		<img id="imgg">
		</div>
  </body>
</html>
