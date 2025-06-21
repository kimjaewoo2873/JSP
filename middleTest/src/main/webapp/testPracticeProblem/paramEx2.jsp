<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Action Tag2</title></head>
<body>
	<p>Today is : <%= request.getParameter("date") %>
	<p>아이디 : <%= request.getParameter("id") %>
	<% String name = request.getParameter("name"); %>
	<p>이 름 : <%= java.net.URLDecoder.decode(name) %>
	<% String word = request.getParameter("word"); %>
	<p><%= java.net.URLDecoder.decode(word) %>
	<p>Today is : <%= request.getParameter("date2") %>
</body>
</html>