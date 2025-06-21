<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Directives Tag</title></head>
<body>
	<p><%@ include file = "3-9header.jsp" %>
	<p>현재 시간 : <%= java.util.Calendar.getInstance().getTime() %>
</body>
</html>