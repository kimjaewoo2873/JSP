<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Implicit Object</title></head>
<body>
	<% response.setHeader("Refresh", "5"); %>
	<p>현재 시간은 <%= java.util.Calendar.getInstance().getTime() %>
	<p><a href="5-9_response_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>