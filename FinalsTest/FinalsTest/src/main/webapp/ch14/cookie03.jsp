<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Cookies</title></head>
<body>
	<%
		Cookie[] cookies = request.getCookies();  // Get all cookies from the request
		for(int i = 0; i < cookies.length; i++){
			cookies[i].setMaxAge(0);             // Set each cookie to expire immediately
			response.addCookie(cookies[i]);      // Add the expired cookie back to the response
		}
		response.sendRedirect("cookie02.jsp");   // Redirect to another page
	%>
</body>
</html>
