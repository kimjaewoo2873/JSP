<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Cookie</title></head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if(id.equals("admin") && pwd.equals("admin1234")){
			Cookie cookie_id = new Cookie("userID", id);
			response.addCookie(cookie_id);
			response.sendRedirect("welcome1.jsp");
		}
		else{
			response.sendRedirect("cookie_out.jsp");
		}
	%>
</body>
</html>