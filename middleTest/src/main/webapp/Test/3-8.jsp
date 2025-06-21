<%@ page contentType="text/html; charset=utf-8" %>

<html>
<head><title>Directive Tag</title></head>
<body>
	<% 
		out.println("현재 날짜 : " + new java.util.Date() + "<br>");
		out.println("5의 제곱 : " + Math.pow(5, 2));
	%>
</body>
</html>