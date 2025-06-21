<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Session_process</title></head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.equals("admin") && pwd.equals("admin1234")){
			session.setAttribute("userID", id);
			response.sendRedirect("welcome.jsp");
		} else{
			response.sendRedirect("session.jsp");
		}
	%>
</body>
</html>