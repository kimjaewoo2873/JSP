<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Implicit Object</title></head>
<body>
	<form action = "request_process.jsp" method="post">
		<p> 이 름 : <input type="text" name="name">
		<p> 비 번 : <input type="password" name="pwd"><br>
		<input type="submit" value="전송"> 
	</form>
	<%= request.getRemoteAddr() %>
</body>
</html>