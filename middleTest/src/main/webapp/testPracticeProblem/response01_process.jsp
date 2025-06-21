<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Implicit Object</title></head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("pwd");
		if(userid.equals("김재우") && password.equals("1234")){
			response.sendRedirect("response01_success.jsp");
		}
		else {
			response.sendRedirect("response01_failed.jsp");
		}
	%>
</body>
</html>