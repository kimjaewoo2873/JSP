<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Implicit Object</title></head>
<body>
	<% 
		String query = request.getQueryString();
	%>
	전송된 요청 파라미터 <%= query%>
</body>
</html>