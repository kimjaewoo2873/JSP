<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Directive Tag</title></head>
<body>
	<%@ include file="3-9header.jsp" %>
	<p>현재 시간 : <% out.println(java.util.Calendar.getInstance().getTime()); %>
</body>
</html>