<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Action Tag</title></head>
<body>
	<% 
		String title = request.getParameter("title");
		String date = request.getParameter("date");
	%>
	<h3><%= java.net.URLDecoder.decode(title) %></h3>
	Today is : <%= date %>
</body>
</html>