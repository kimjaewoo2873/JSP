<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data"
		action="10.jsp">
		<p> 파일1 : <input type="file" name="file1">
		<p> 파일2 : <input type="file" name="file2">
		<p>	<input type="submit" value="파일 올리기">
		</p>
	</form>
</body>
</html>