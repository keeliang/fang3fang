<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<script src="<%=contextPath %>/main/js/popup.js" type="text/javascript"></script>
<link rel="stylesheet" href="<%=contextPath %>/main/css/general.css" type="text/css" media="screen" />
<div id="popupContact">
	<a id="popupContactClose" href="#">x</a>
	<h1>上传</h1>
	<form name="uploadForm" enctype="multipart/form-data" method="post" action="" 
		id="uploadForm"  >
		<s:file name="uploadFile" ></s:file>
		<input type="button" onclick="f_upload()" value="上传" />
	</form>
</div>
<div id="backgroundPopup"></div>
