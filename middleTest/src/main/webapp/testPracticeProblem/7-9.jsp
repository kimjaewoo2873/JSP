<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>File Upload</title></head>
<body>
	<form action="7-9_process.jsp" method="post" enctype="multipart/form-data" name="fileForm">
		<p>파 일 : <input type="file" name="fileName">
		<p><input type="submit" value="파일 올리기">
	</form>
</body>
</html>