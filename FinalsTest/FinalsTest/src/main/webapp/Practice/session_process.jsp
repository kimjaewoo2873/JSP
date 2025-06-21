<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head><title>Session</title></head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if(id.equals("admin") && pwd.equals("1234")){
			session.setAttribute("userID", id);
			response.sendRedirect("welcome.jsp");
		}
		else{
			out.println("아이디, 비밀번호가 틀립니다.");
		}
	%>
</body>
</html>